type data = {
  title: string,
  date: string,
  tags: array<string>,
  lastmod: Js.Nullable.t<string>,
  draft: Js.Nullable.t<bool>,
  summary: Js.Nullable.t<string>,
  images: Js.Nullable.t<array<string>>,
}

type returnObject = {
  data: data,
  content: string,
  excerpt: string,
  empty: string,
  isEmpty: bool,
}

@module("gray-matter") external matter: string => returnObject = "default"
