// TODO: Figure out why you can't put this function in Blog__Slug.res file
// Error - error - ./node_modules/esbuild/lib/main.js:1524:0
// Module not found: Can't resolve 'child_process'
// null
type props = {
  path: array<string>,
  mdxSource: NextMdxRemote.serializeResult<Mdx__helpers.frontmatter>,
}

let getStaticProps: Next.GetStaticProps.t<props, Mdx__helpers.Params.t, _> = ({params, _}) => {
  let {slug} = params
  let slugWithBlog = Js.Array2.concat(["/blog"], slug)
  let path = Mdx__helpers.join([Mdx__helpers.root, "data", "blog"])
  let allPosts = Mdx__helpers.getAllFrontMatter(path)
  let _postIndex =
    allPosts->Js.Array2.findIndex(post => post.slug === Js.Array2.joinWith(slugWithBlog, "/"))
  // let prev = Belt.Array.get(allPosts, postIndex + 1)
  // let next = Belt.Array.get(allPosts, postIndex - 1)
  let _post = Mdx__helpers.getFileBySlug(slugWithBlog)

  let postFilePath = Mdx__helpers.join([
    Mdx__helpers.root,
    "data",
    "blog",
    `${Js.Array2.joinWith(slug, "/")}.mdx`,
  ])
  let source = Mdx__helpers.readFileSync(postFilePath)
  let {content, data, _} = GrayMatter.matter(source)

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
      mdxSource: value,
    }
    let ret = {"props": props}
    Js.Promise.resolve(ret)
  }, _)
}
