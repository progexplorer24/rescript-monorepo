type returnObject<'frontmatter> = {
  data: 'frontmatter,
  content: string,
  excerpt: string,
  empty: string,
  isEmpty: bool,
}

@module("gray-matter") external matter: string => returnObject<'a> = "default"
