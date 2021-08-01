// TODO: Figure out why you can't put this function in Blog__Slug.res file
// Error - error - ./node_modules/esbuild/lib/main.js:1524:0
// Module not found: Can't resolve 'child_process'
// null

type authorFrontmatter = {
  name: string,
  avatar: string,
  occupation: string,
  company: string,
  email: string,
  twitter: string,
  linkedin: string,
  github: string,
}

type props = {
  path: array<string>,
  post: NextMdxRemote.serializeResult<Mdx__helpers.frontmatter>,
  prev: Js.Null.t<Mdx__helpers.frontmatterAndSlug>,
  next: Js.Null.t<Mdx__helpers.frontmatterAndSlug>,
  authorsArray: array<authorFrontmatter>,
}

let getStaticProps: Next.GetStaticProps.t<props, Mdx__helpers.Params.t, _> = ({params, _}) => {
  let {slug} = params
  let slugWithBlog = Js.Array2.concat(["/blog"], slug)
  let path = Mdx__helpers.join([Mdx__helpers.root, "data", "blog"])
  let allPosts = Mdx__helpers.getAllFrontMatter(path)
  let postIndex =
    allPosts->Js.Array2.findIndex(post => post.slug === Js.Array2.joinWith(slugWithBlog, "/"))
  let prev = switch Belt.Array.get(allPosts, postIndex + 1) {
  | Some(value) => Js.Null.return(value)
  | None => Js.Null.empty
  }
  let next = switch Belt.Array.get(allPosts, postIndex - 1) {
  | Some(value) => Js.Null.return(value)
  | None => Js.Null.empty
  }

  let post = Mdx__helpers.getFileBySlug(slugWithBlog)

  let {content, data, _}: GrayMatter.returnObject<Mdx__helpers.data> = GrayMatter.matter(post)

  let authorList = switch Js.Nullable.toOption(data.authors) {
  | Some(value) => value
  | None => ["sensei"]
  }

  let authorData: array<authorFrontmatter> = Js.Array2.map(authorList, val => {
    let authorResults = Mdx__helpers.getFileBySlug(["authors", val])
    let {data, _}: GrayMatter.returnObject<authorFrontmatter> = GrayMatter.matter(authorResults)
    data
  })

  NextMdxRemote.serialize(
    content,
    {
      scope: data,
      mdxOptions: {
        remarkPlugins: [NextMdxRemote.remarkMath],
        rehypePlugins: [NextMdxRemote.rehypeKatex],
        compilers: [],
      },
      target: ["esnext"],
    },
  )->Js.Promise.then_(value => {
    let props = {
      path: slug,
      post: value,
      prev: prev,
      next: next,
      authorsArray: authorData,
    }
    let ret = {"props": props}
    Js.Promise.resolve(ret)
  }, _)
}
