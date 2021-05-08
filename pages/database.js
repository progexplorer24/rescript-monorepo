// pages/index.tsx
import prisma from '../src/utils/prisma'

export default function Index(props) {
  console.log(props)
  return <div>

    Prisma database
  </div>;
}

// index.tsx
export const getStaticProps = async () => {
  const feed = await prisma.post.findMany({
    where: { published: false },
    include: {
      author: {
        select: { name: true },
      },
    },
  })
  return { props: { feed } }
}