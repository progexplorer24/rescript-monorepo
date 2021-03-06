// type props = Static.props
type props = {
  path: array<string>,
  mdxSource: NextMdxRemote.serializeResult<Mdx__helpers.frontmatter>,
}
type previewData

let default = props => {
  let {mdxSource, path} = props
  let {compiledSource, scope} = mdxSource
  let {title, date, tags, lastmod, draft, summary, images} = scope
  let frontmatter: Mdx__helpers.frontmatterAndSlug = {
    title: title,
    date: date,
    tags: tags,
    lastmod: lastmod,
    draft: draft,
    summary: summary,
    images: images,
    slug: Js.Array2.joinWith(path, "/"),
  }
  <PostLayout frontmatter>
    <main>
      <NextMdxRemote.MdxRemote
        components=MDXComponents.components \"lazy"={false} compiledSource scope
      />
    </main>
  </PostLayout>
}

let getStaticPaths: Next.GetStaticPaths.t<Mdx__helpers.Params.t> = () => {
  open Next.GetStaticPaths

  let paths = Mdx__helpers.getFormattedFiles("blog")->Belt.Array.map(string => {
    params: {
      Mdx__helpers.Params.slug: Js.String2.split(string, "/"),
    },
  })
  let ret = {paths: paths, fallback: false}
  Js.Promise.resolve(ret)
}

// let getStaticProps: Next.GetStaticProps.t<props, Mdx__helpers.Params.t, 'a> = ({params}) => {
//   let {slug} = params
//   let postFilePath = Mdx__helpers.join([
//     Mdx__helpers.root,
//     "data",
//     "blog",
//     `${Js.Array2.joinWith(slug, "/")}.mdx`,
//   ])
//   let source = Mdx__helpers.readFileSync(postFilePath)
//   let {content, data} = GrayMatter.matter(source)

//   NextMdxRemote.serialize(
//     content,
//     {
//       scope: data,
//       mdxOptions: {
//         remarkPlugins: [NextMdxRemote.remarkMath],
//         rehypePlugins: [NextMdxRemote.rehypeKatex],
//         compilers: [],
//       },
//       target: ["esnext"],
//     },
//   )->Js.Promise.then_(value => {
//     let props = {
//       path: slug,
//       mdxSource: value,
//     }
//     let ret = {"props": props}
//     Js.Promise.resolve(ret)
//   }, _)
// }
