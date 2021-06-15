// import fs from 'fs'
// import matter from 'gray-matter'
// import {serialize} from 'next-mdx-remote/serialize'
// import { MDXRemote } from 'next-mdx-remote'
// import path from 'path'
// import remarkMath from 'remark-math'
// import rehypeKatex from 'rehype-katex'
// import {make as Layout} from '../../src/layouts/PostLayout.mjs'
import {  getFormattedFiles } from '../../src/server/Mdx__helpers.mjs'
// import {components} from "../../src/components/blog/MDXComponents.mjs"

const data = {
  name: "Sarah"
}

// export default function PostTemplate({source, frontMatter}) {
//   return   <Layout>
//       <main><MDXRemote {...source} components={components} scope={data} /></main>  
// </Layout>
// }
export default function PostTemplate() {
  return   <main>Hello  world</main>  

}


export const getStaticProps = async ({ params }) => {
    console.log(params)
  // const joinSlug = params.slug.join("/")
  // const postFilePath = path.join(process.cwd(), "data", "blog", `${joinSlug}.mdx`)
  // console.log(postFilePath)
  // const source = fs.readFileSync(postFilePath)

  //   const allPosts = await getBlogPostsFromLatest()
  //   const selectedPost = allPosts.findIndex((post) => formatSlug(post.slug) === params.slug.join('/'))
  //   const prev = allPosts[postIndex + 1] || null
  //   const next = allPosts[postIndex - 1] || null
  //   const post = await getFileBySlug('blog', params.slug)

  // const { content, data } = matter(source)

    // const mdxSource = await renderToString(content, {
  //   components: MDXComponents,
  //   mdxOptions: {
  //     remarkPlugins: [
  //       require('remark-slug'),
  //       require('remark-autolink-headings'),
  //       require('remark-code-titles'),
  //       require('remark-math'),
  //       imgToJsx,
  //     ],
  //     inlineNotes: true,
  //     rehypePlugins: [
  //       require('rehype-katex'),
  //       require('@mapbox/rehype-prism'),
  //       () => {
  //         return (tree) => {
  //           visit(tree, 'element', (node, index, parent) => {
  //             let [token, type] = node.properties.className || []
  //             if (token === 'token') {
  //               node.properties.className = [tokenClassNames[type]]
  //             }
  //           })
  //         }
  //       },
  //     ],
  //   },
  // })

  // const mdxSource = await serialize(content, {
  //   components,
  //   scope: data,
  //   mdxOptions: {
  //     remarkPlugins: [remarkMath],
  //     rehypePlugins: [rehypeKatex],
  //   }
  // })

  return {
    props: {
    },
  }
}



export async function getStaticPaths() {
  
  const posts = getFormattedFiles("blog")
  console.log(posts)


  return {
    paths: posts,
    fallback: false,
  }
}

// export const getStaticPaths = async () => {

//   const paths2 = getFiles("blog")
  
//   console.log(paths2)

//   const paths = getFormattedFiles("blog")

//   paths.map(path => console.log(path.slug))

//   // const paths = postFilePaths
//   //   // Remove file extensions for page paths
//   //   .map((path) => path.replace(/\.mdx?$/, ''))
//   //   // Map the path into the static paths object required by Next.js
//   //   .map((slug) => ({ params: { slug } }))

//   return {
//     paths: paths,
//     fallback: false,
//   }
// }