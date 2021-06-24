// DANGER: Remember to use all exported code on client side - because otherwise you will be calling server side on client side
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

let getFileBySlug = (~root=root, slug) => {
  let mdxPath = NodeJS.Path.join([root, "data", `${Js.Array2.joinWith(slug, "/")}.mdx`])
  let mdPath = NodeJS.Path.join([root, "data", `${Js.Array2.joinWith(slug, "/")}.mdx`])

  NodeJS.Fs.existsSync(mdxPath) ? NodeJS.Fs.readFileSync(mdxPath) : NodeJS.Fs.readFileSync(mdPath)
}

// export async function getAllFilesFrontMatter(folder) {
//   const prefixPaths = path.join(root, 'data', folder)

//   const files = getAllFilesRecursively(prefixPaths)

//   const allFrontMatter = []

//   files.forEach((file) => {
//     // Replace is needed to work on Windows
//     const fileName = file.slice(prefixPaths.length + 1).replace(/\\/g, '/')
//     const source = fs.readFileSync(file, 'utf8')
//     const { data } = matter(source)
//     if (data.draft !== true) {
//       allFrontMatter.push({ ...data, slug: formatSlug(fileName) })
//     }
//   })

//   return allFrontMatter.sort((a, b) => dateSortDesc(a.date, b.date))
// }

let removeRoot = (~root=root, string) =>
  Js.String2.replace(string, NodeJS.Path.join([root, "/data"]), "")

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

// let blogPath = join([root, "data", "blog"])

let getAllFrontMatter = blogPath => {
  let files = readdirRecursive(blogPath)
  Js.Array2.reduce(
    files,
    (acc, file) => {
      // NOTE: Replace for Windows paths
      let fileName = Js.String2.replaceByRe(file, %re("/\\\\/g"), "/")
      let source = readFileSync(fileName)
      let slug = removeMdxExtension(removeRoot(fileName))
      let {data} = GrayMatter.matter(source)

      // Utils.clog(slug)

      let lastmod = switch Js.toOption(data.lastmod) {
      | None => ""
      | Some(string) => string
      }
      let isDraft = switch Js.toOption(data.draft) {
      | None => true
      | Some(bool) => bool
      }

      let summary = switch Js.toOption(data.summary) {
      | None => ""
      | Some(string) => string
      }

      let images = switch Js.toOption(data.images) {
      | None => []
      | Some(array) => array
      }

      let withSlug = {
        title: data.title,
        date: data.date,
        tags: data.tags,
        lastmod: lastmod,
        draft: isDraft,
        summary: summary,
        images: images,
        slug: slug,
      }

      switch Js.Nullable.toOption(data.draft) {
      | None => acc
      | Some(bool) => bool ? acc : Js.Array2.concat(acc, [{...withSlug, draft: bool}])
      }
    },
    [],
  )
}

let getBlogPostsFromLatest = (~cwd=root, ~path=["data", "blog"], ()) => {
  let buildPath = join(Js.Array2.concat([cwd], path))
  let frontmatterArray = getAllFrontMatter(buildPath)
  Js.Array2.sortInPlaceWith(frontmatterArray, (a, b) => sortDesc(a.date, b.date))
}

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

module Params = {
  type t = {slug: array<string>}
}

// type params = {slug: string}

type paramsRecord = {params: Params.t}

type slugRecord = {paths: paramsRecord}

let getFormattedFiles = location =>
  getFiles(location)->Belt.Array.map(slug => Js.String2.replaceByRe(slug, %re("/^\/blog\//"), ""))
