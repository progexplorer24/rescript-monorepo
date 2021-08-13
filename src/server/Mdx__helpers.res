// DANGER: Remember to use all exported code on client side - because otherwise you will be calling server side on client side
type data = {
  title: string,
  date: string,
  tags: array<string>,
  lastmod: Js.Nullable.t<string>,
  draft: Js.Nullable.t<bool>,
  summary: Js.Nullable.t<string>,
  images: Js.Nullable.t<array<string>>,
  authors: Js.Nullable.t<array<string>>,
  layout: Js.Nullable.t<string>,
}

type frontmatterFull = {
  title: string,
  date: string,
  tags: array<string>,
  lastmod: string,
  draft: bool,
  summary: string,
  images: array<string>,
  authors: array<string>,
  layout: string,
  readingTime: string,
  slug: string,
  fileName: string,
}

type frontmatter = {
  title: string,
  date: string,
  tags: array<string>,
  lastmod: string,
  draft: bool,
  summary: string,
  images: array<string>,
}
type frontmatterAndSlug = {
  title: string,
  date: string,
  tags: array<string>,
  lastmod: string,
  draft: bool,
  summary: string,
  images: array<string>,
  slug: string,
}

type props = {
  code: string,
  frontmatter: frontmatterFull,
}

// NOTE: Process cwd is not a pure function
let root = NodeJS.Process.cwd()

let join = NodeJS.Path.join
let readFileSync = NodeJS.Fs.readFileSync

// TODO: Document this functions and describe better what they do
let postFilePaths = location =>
  NodeJS.Fs.readdirSync(NodeJS.Path.join([root, "data", location]))->Belt.Array.keep(path =>
    Js.Re.test_(%re("/\.mdx?$/"), path)
  )

let prependPathSegment = (location, pathSegment) => NodeJS.Path.join([location, pathSegment])

let readdirPreserveRelativePath = location =>
  NodeJS.Fs.readdirSync(location)->Belt.Array.map(pathSegment =>
    prependPathSegment(location, pathSegment)
  )

let rec readdirRecursive = location =>
  readdirPreserveRelativePath(location)->Belt.Array.reduce([], (result, currentValue) =>
    NodeJS.Fs.statSync(currentValue)->NodeJS.Fs.isDirectory()
      ? Belt.Array.concat(result, readdirRecursive(currentValue))
      : Belt.Array.concat([currentValue], result)
  )

let removeMdxExtension = slug => Js.String2.replaceByRe(slug, %re("/\.(mdx|md)?$/"), "")

type fileType = [#md | #mdx]

let toFileTypeValue = extension =>
  switch extension {
  | #md => "md"
  | #mdx => "mdx"
  }

// TODO: Improvements
let getFileBySlug = (~root=root, slug) => {
  let mdxPath = join([root, "data", `${Js.Array2.joinWith(slug, "/")}.mdx`])
  let mdPath = join([root, "data", `${Js.Array2.joinWith(slug, "/")}.md`])

  let source = NodeJS.Fs.existsSync(mdxPath)
    ? NodeJS.Fs.readFileSync(mdxPath)
    : NodeJS.Fs.readFileSync(mdPath)

  source
}

let removeRoot = (~root=root, string) =>
  Js.String2.replace(string, NodeJS.Path.join([root, "/data", "blog"]), "")

let getFiles = (~root=root, location) => {
  let prefixPaths = join([root, "data", location])
  let files = readdirRecursive(prefixPaths)
  Js.Array2.map(files, file => removeMdxExtension(removeRoot(file)))
}

let sortDesc = (a, b) => {
  let resultA = Js.String2.split(a, "-")
  let resultB = Js.String2.split(b, "-")

  let yearA = int_of_string(resultA[0])
  let monthA = int_of_string(resultA[1])
  let dayA = int_of_string(resultA[2])

  let yearB = int_of_string(resultB[0])
  let monthB = int_of_string(resultB[1])
  let dayB = int_of_string(resultB[2])

  if yearA > yearB {
    -1
  } else if yearA == yearB {
    if monthA > monthB {
      -1
    } else if monthA == monthB {
      if dayA > dayB {
        -1
      } else if dayA == dayB {
        0
      } else {
        1
      }
    } else {
      1
    }
  } else {
    1
  }
}

module DataType = {
  type t = [#authors | #blog]
  let toValue = val =>
    switch val {
    | #authors => "authors"
    | #blog => "blog"
    }
}

module FrontMatterFull = {
  type t = data

  let toValue = (
    ~frontmatterRawData: data,
    ~slug: string,
    ~type_: DataType.t,
    ~root: string,
    (),
  ) => {
    let mdxPath = NodeJS.Path.join([root, "data", DataType.toValue(type_), `${slug}.mdx`])
    let mdPath = NodeJS.Path.join([root, "data", DataType.toValue(type_), `${slug}.md`])

    let source = NodeJS.Fs.existsSync(mdxPath)
      ? NodeJS.Fs.readFileSync(mdxPath)
      : NodeJS.Fs.readFileSync(mdPath)

    let fileName = NodeJS.Fs.existsSync(mdxPath) ? `${slug}.mdx` : `${slug}.md`

    let lastmod = switch Js.toOption(frontmatterRawData.lastmod) {
    | None => ""
    | Some(string) => string
    }
    let isDraft = switch Js.toOption(frontmatterRawData.draft) {
    | None => true
    | Some(bool) => bool
    }

    let summary = switch Js.toOption(frontmatterRawData.summary) {
    | None => ""
    | Some(string) => string
    }

    let images = switch Js.toOption(frontmatterRawData.images) {
    | None => []
    | Some(array) => array
    }

    let authors = switch Js.toOption(frontmatterRawData.authors) {
    | None => []
    | Some(array) => array
    }

    let layout = switch Js.toOption(frontmatterRawData.layout) {
    | None => ""
    | Some(str) => str
    }

    let frontmatterFull: frontmatterFull = {
      title: frontmatterRawData.title,
      date: frontmatterRawData.date,
      tags: frontmatterRawData.tags,
      lastmod: lastmod,
      draft: isDraft,
      summary: summary,
      images: images,
      authors: authors,
      layout: layout,
      fileName: fileName,
      readingTime: "5m",
      slug: `${DataType.toValue(type_)}${slug}`,
    }

    frontmatterFull
  }
}

let getAllFrontMatter = (blogPath: string) => {
  let files = readdirRecursive(blogPath)
  let allFrontmatter = Js.Array2.reduce(
    files,
    (acc, file) => {
      // NOTE: Replace for Windows paths
      let fileName = Js.String2.replaceByRe(file, %re("/\\\\/g"), "/")
      let source = readFileSync(fileName)
      let slug = removeMdxExtension(removeRoot(fileName))
      let {data, _}: GrayMatter.returnObject<data> = GrayMatter.matter(source)

      // This is probably the problem
      let frontmatterFull = FrontMatterFull.toValue(
        ~frontmatterRawData=data,
        ~slug,
        ~root=NodeJS.Process.cwd(),
        ~type_=#blog,
        (),
      )

      Js.Array2.concat(acc, [frontmatterFull])
    },
    [],
  )

  Js.Array2.sortInPlaceWith(allFrontmatter, (frontmatter1, frontmatter2) =>
    sortDesc(frontmatter1.date, frontmatter2.date)
  )
}

let getBlogPostsFromLatest = (~cwd=root, ~path=["data", "blog"], ()) => {
  let buildPath = join(Js.Array2.concat([cwd], path))
  let frontmatterArray = getAllFrontMatter(buildPath)
  Js.Array2.sortInPlaceWith(frontmatterArray, (a, b) => sortDesc(a.date, b.date))
}

module Params = {
  type t = {slug: array<string>}
}

// type params = {slug: string}

type paramsRecord = {params: Params.t}

type slugRecord = {paths: paramsRecord}

// NOTE: Utils functions for blog

let returnSiteMetadata = (~path=["data", "siteMetadata.json"], ()) => {
  let metadataPath = join(Js.Array2.concat([root], path))
  let jsonFile = NodeJS.Fs.readFileSync(metadataPath)
  JSON.parseMetadata(jsonFile)
}

let kebabCase = str => {
  let matches = Js.String2.match_(
    str,
    %re("/[A-Z]{2,}(?=[A-Z][a-z]+[0-9]*|\b)|[A-Z]?[a-z]+[0-9]*|[A-Z]|[0-9]+/g"),
  )

  switch matches {
  | None => ""
  | Some(array) =>
    Js.Array2.map(array, x => Js.String2.toLocaleLowerCase(x))->Js.Array2.joinWith("-")
  }
}

type dateTemplate = {
  year: string,
  month: string,
  day: string,
}

let formatDateString = (date: string) => {
  let dateTemplate = {
    year: "numeric",
    month: "long",
    day: "numeric",
  }

  Global.toLocaleDateStringWithOptions(
    Js.Date.fromString(date),
    SiteMetadata.metadata.locale,
    dateTemplate,
  )
}

let createTagsDictionary = (~root=root, ~type_=#blog, folder) => {
  let paths = getFiles(folder)

  let postFilePaths = Js.Array2.map(paths, path => {
    let mdxPath = NodeJS.Path.join([root, "data", DataType.toValue(type_), `${path}.mdx`])

    let fileName = NodeJS.Fs.existsSync(mdxPath) ? `${path}.mdx` : `${path}.md`
    join([root, "data", folder, fileName])
  })
  let tagsMatrix = Js.Array2.map(postFilePaths, postFilePath => {
    let source = readFileSync(postFilePath)
    let {data, _} = GrayMatter.matter(source)
    data
  })

  let buildDict = (dictAcc, data: data) => {
    let isDraft = switch Js.toOption(data.draft) {
    | None => true
    | Some(bool) => bool
    }

    Js.Array2.length(data.tags) > 0 && isDraft !== true
      ? Js.Array2.forEach(data.tags, tag => {
          let formattedTag = kebabCase(tag)
          switch Js.Dict.get(dictAcc, formattedTag) {
          | Some(value) => Js.Dict.set(dictAcc, formattedTag, value + 1)
          | None => Js.Dict.set(dictAcc, formattedTag, 1)
          }
        })
      : ()
    dictAcc
  }
  Js.Array2.reduce(tagsMatrix, buildDict, Js.Dict.empty())
}
