type props = Static.props
type previewData

module Styles = {
  open Tailwind
  let underConstruction = twStyle([mt(#24), textCenter])
}

let defaultLayout = "PostLayout"

let default = (props: props) => {
  let {post, prev, next, authorsArray, _} = props
  let {code, frontmatter} = post

  let layout = frontmatter.layout === "" ? defaultLayout : frontmatter.layout

  let renderPost =
    frontmatter.draft !== true
      ? <PostLayout frontmatter prev next authorsArray>
          <main>
            <MDXLayoutRenderer layout={layout} mdxSource={code} frontmatter={frontmatter} />
          </main>
        </PostLayout>
      : <main>
          <div className=Styles.underConstruction>
            <PageTitle>
              {"Under
            Construction"->Utils.str}
              <span role="img" ariaLabel="roadwork sign"> {` 🚧`->Utils.str} </span>
            </PageTitle>
          </div>
        </main>

  <> renderPost </>
}

let getStaticPaths: Next.GetStaticPaths.t<Mdx__helpers.Params.t> = () => {
  open Next.GetStaticPaths
  let nonEmpty = s => s !== ""

  let paths = Mdx__helpers.getFiles("blog")->Belt.Array.map(string => {
    params: {
      Mdx__helpers.Params.slug: Js.Array2.filter(Js.String2.split(string, "/"), nonEmpty),
    },
  })

  let ret = {paths: paths, fallback: false}
  Js.Promise.resolve(ret)
}
