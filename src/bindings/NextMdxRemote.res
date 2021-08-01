type remarkPlugin
type rehypePlugin
type frontmatter

type mdxOptions = {
  remarkPlugins: array<remarkPlugin>,
  rehypePlugins: array<rehypePlugin>,
  compilers: array<string>,
}

type serializeResult<'a> = {
  compiledSource: string,
  scope: 'a,
}
type config<'scope> = {
  scope: 'scope,
  mdxOptions: mdxOptions,
  target: array<string>,
}

@module("next-mdx-remote/serialize")
external serialize: (string, config<'scope>) => Js.Promise.t<serializeResult<'b>> = "serialize"

@module("remark-math") external remarkMath: remarkPlugin = "default"
@module("rehype-katex") external rehypeKatex: rehypePlugin = "default"

module MdxRemote = {
  @module("next-mdx-remote") @react.component
  external make: (
    ~components: MDXComponents.mdxComponents,
    ~\"lazy": bool,
    ~compiledSource: string,
    ~scope: 'a,
  ) => React.element = "MDXRemote"
}
