// TODO: Figure out why you can't put this function in Blog__Slug.res file
// Error - error - ./node_modules/esbuild/lib/main.js:1524:0
// Module not found: Can't resolve 'child_process'
// null

type params = {slug: array<string>}
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
  post: RescriptMonorepo.Mdx__helpers.props,
  prev: Js.Null.t<Mdx__helpers.frontmatterFull>,
  next: Js.Null.t<Mdx__helpers.frontmatterFull>,
  authorsArray: array<authorFrontmatter>,
}

let getStaticProps: Next.GetStaticProps.t<props, params, _> = ({params, _}) => {
  let {slug} = params
  let slugWithBlog = Js.Array2.concat(["/blog"], slug)
  let slugString = Js.Array2.joinWith(slug, "/")
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

  // TODO: This is the part where you need to start fixing things
  Bundler.getFileBySlugNew(slugString)->Promise.then(file => {
    let {frontmatter, _} = file
    let authorList = Js.Array2.length(frontmatter.authors) === 0 ? ["sensei"] : frontmatter.authors

    let authorData: array<authorFrontmatter> = Js.Array2.map(authorList, val => {
      let authorResults = Mdx__helpers.getFileBySlug(["authors", val])
      let {data, _}: GrayMatter.returnObject<authorFrontmatter> = GrayMatter.matter(authorResults)
      data
    })

    Js.log(authorData)
    let props: props = {
      path: slug,
      prev: prev,
      next: next,
      post: file,
      authorsArray: authorData,
    }
    Promise.resolve({"props": props})
  })
}
