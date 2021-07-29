type props = {
  initialDisplayPosts: array<Mdx__helpers.frontmatterAndSlug>,
  posts: array<Mdx__helpers.frontmatterAndSlug>,
  pagination: ListLayout.pagination,
}

let postsPerPage = 5

let default = props => {
  let {posts, initialDisplayPosts, pagination} = props
  <>
    <SEO.PageSEO
      title={`Blog - ${SiteMetadata.metadata.author}`}
      description={SiteMetadata.metadata.description}
    />
    <ListLayout
      posts={posts}
      initialDisplayPosts={initialDisplayPosts}
      pagination={pagination}
      title="All Posts"
    />
  </>
}

let getStaticProps = _ctx => {
  let posts = Mdx__helpers.getBlogPostsFromLatest()
  let initialDisplayPosts = Js.Array2.slice(posts, ~start=0, ~end_=postsPerPage)
  let pagination: ListLayout.pagination = {
    currentPage: 1,
    totalPages: Js.Math.ceil(
      Js.Int.toFloat(Js.Array2.length(posts)) /. Js.Int.toFloat(postsPerPage),
    ),
  }

  let props = {
    initialDisplayPosts: initialDisplayPosts,
    posts: posts,
    pagination: pagination,
  }

  Js.Promise.resolve({"props": props})
}
