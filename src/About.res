let default = () => <div />

// TODO: Convert to rescript
// import { MDXLayoutRenderer } from '@/components/MDXComponents'
// import { getFileBySlug } from '@/lib/mdx'

// const DEFAULT_LAYOUT = 'AuthorLayout'

// export default function About({ authorDetails }) {
//   const { mdxSource, frontMatter } = authorDetails

//   return (
//     <MDXLayoutRenderer
//       layout={frontMatter.layout || DEFAULT_LAYOUT}
//       mdxSource={mdxSource}
//       frontMatter={frontMatter}
//     />
//   )
// }

type props = {frontmatter: Static.authorFrontmatter, content: string}

let default = ({frontmatter, content}) => {
  <AuthorLayout frontmatter> {""->Utils.str} </AuthorLayout>
}

let getStaticProps = _ctx => {
  let authorDetails = Mdx__helpers.getFileBySlug(["authors", "sensei"])

  let {content, data, _}: GrayMatter.returnObject<Static.authorFrontmatter> = GrayMatter.matter(
    authorDetails,
  )

  let props = {
    frontmatter: data,
    content: content,
  }

  Js.Promise.resolve({"props": props})
}
