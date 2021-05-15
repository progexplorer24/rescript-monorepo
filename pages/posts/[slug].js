import fs from 'fs'
import matter from 'gray-matter'
import {serialize} from 'next-mdx-remote/serialize'
import { MDXRemote } from 'next-mdx-remote'
import path from 'path'
import remarkMath from 'remark-math'
import rehypeKatex from 'rehype-katex'
import {make as Layout} from '../../src/layouts/PostLayout.mjs'
import {mdxContentLocation, postFilePaths, readdirRecursive} from '../../src/lib/Mdx__helpers.mjs'
import {components} from "../../src/components/blog/MDXComponents.mjs"

const data = {
  name: "Sarah"
}

export default function PostTemplate({source, frontMatter}) {
  return   <Layout>
      <main><MDXRemote {...source} components={components} scope={data} /></main>  
</Layout>
}


export const getStaticProps = async ({ params }) => {
  console.log(readdirRecursive(mdxContentLocation))
  const postFilePath = path.join(mdxContentLocation, `${params.slug}.mdx`)
  const source = fs.readFileSync(postFilePath)

  const { content, data } = matter(source)

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

  const mdxSource = await serialize(content, {
    components,
    scope: data,
    mdxOptions: {
      remarkPlugins: [remarkMath],
      rehypePlugins: [rehypeKatex],
    }
  })

  return {
    props: {
      source: mdxSource,
      frontMatter: data,
    },
  }
}

export const getStaticPaths = async () => {
  const paths = postFilePaths
    // Remove file extensions for page paths
    .map((path) => path.replace(/\.mdx?$/, ''))
    // Map the path into the static paths object required by Next.js
    .map((slug) => ({ params: { slug } }))

  return {
    paths,
    fallback: false,
  }
}