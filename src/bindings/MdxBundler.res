type remarkPlugin
type rehypePlugin

type serializeResult = {
  code: string,
  frontmatter: string,
}

type xdmOptions = {
  remarkPlugins: array<remarkPlugin>,
  rehypePlugins: array<rehypePlugin>,
}

type esbuildOptions = {loader: Js.Dict.t<string>}

type config = {
  cwd: string,
  xdmOptions: xdmOptions => xdmOptions,
  esbuildOptions: esbuildOptions => esbuildOptions,
}

//  = {
//   scope: GrayMatter.data,
//   mdxOptions: mdxOptions,
//   target: array<string>,
// }

@module("mdx-bundler")
external bundleMDX: (string, config) => Js.Promise.t<serializeResult> = "bundleMDX"

@module("mdx-bundler/client")
external getMDXComponent: (string, array<string>) => React.element = "getMDXComponent"
