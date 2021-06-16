import { MDXRemote } from 'next-mdx-remote'
import {serialize} from 'next-mdx-remote/serialize'
import remarkMath from 'remark-math'
import rehypeKatex from 'rehype-katex'
import prisma from '../../src/utils/prisma'
import {make as Layout} from "../../src/layouts/TypographyLayout"

export const getServerSideProps = async ({ params }) => {
  const post = await prisma.post.findUnique({
    where: {
      id: Number(params.id) || -1
    }
  })

  const mdxSource = await serialize(post.content, {
    mdxOptions: {
      remarkPlugins: [remarkMath],
      rehypePlugins: [rehypeKatex],
    }
  })


  return {
    props: {
      source: mdxSource
    }
  }
}



const Post = ({source}) => {
 
  // if (!post.published) {
  //   title = `${title} (Draft)`
  // }

  console.log(source)

  return (
    <Layout>
      <div>
        {/* <h2>{post.title}</h2>
        <p>By name {post.author?.name || "Unknown Author"}</p> */}
        <MDXRemote {...source} />
      </div>
    
    </Layout>
  )
}




export default Post