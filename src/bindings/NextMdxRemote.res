type remarkPlugin
type rehypePlugin

type mdxOptions = {
  remarkPlugins: array<remarkPlugin>,
  rehypePlugins: array<rehypePlugin>,
  compilers: array<string>,
}

type serializeResult = {
  compiledSource: string,
  scope: {.},
}
type config = {
  scope: GrayMatter.data,
  mdxOptions: mdxOptions,
  target: array<string>,
}

@module("next-mdx-remote/serialize")
external serialize: (string, config) => Js.Promise.t<serializeResult> = "serialize"

@module("remark-math") external remarkMath: remarkPlugin = "default"
@module("rehype-katex") external rehypeKatex: rehypePlugin = "default"

module MdxRemote = {
  @module("next-mdx-remote") @react.component
  external make: (
    ~components: MDXComponents.mdxComponents,
    ~\"lazy": bool,
    ~compiledSource: string,
    ~scope: {.},
  ) => React.element = "MDXRemote"
}
