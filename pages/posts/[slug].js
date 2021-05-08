import fs from 'fs'
import matter from 'gray-matter'
import {serialize} from 'next-mdx-remote/serialize'
import { MDXRemote } from 'next-mdx-remote'
import Link from 'next/link'
import path from 'path'
import {make as Layout} from '../../src/layouts/TypographyLayout.bs'
import { postFilePaths, POSTS_PATH } from '../../src/utils/mdxUtils'
import {make as Test} from '../../src/components/Name.bs'

const components = { Test }

export default function Examples({source, frontMatter}) {
  return   <Layout>
    <header>
        <nav>
          <Link href="/">
            <a>👈 Go back home</a>
          </Link>
        </nav>
      </header>
      <div className="post-header">
        <h1>{frontMatter.title}</h1>
        {frontMatter.description && (
          <p className="description">{frontMatter.description}</p>
        )}
      </div>
      <main><MDXRemote {...source} components={components} /></main>  
</Layout>
}


export const getStaticProps = async ({ params }) => {
  const postFilePath = path.join(POSTS_PATH, `${params.slug}.mdx`)
  const source = fs.readFileSync(postFilePath)

  const { content, data } = matter(source)

  const mdxSource = await serialize(content, {
    scope: data
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