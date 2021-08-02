type remarkPlugin
type rehypePlugin

type globals<'any> = Js.Dict.t<'any>

type frontmatter = {
  title: string,
  description: string,
  published: Js.Date.t,
}

type serializeResult = {
  code: string,
  frontmatter: frontmatter,
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

type files = {files: Js.Dict.t<string>}

//  = {
//   scope: GrayMatter.data,
//   mdxOptions: mdxOptions,
//   target: array<string>,
// }

@module("mdx-bundler")
external bundleMDXSimple: string => Promise.t<serializeResult> = "bundleMDX"

// @module("mdx-bundler")
// external bundleMDX: (string, config) => Promise.t<serializeResult> = "bundleMDX"
// @module("mdx-bundler")
// external bundleMDXFiles: (string, files) => Promise.t<serializeResult> = "bundleMDX"

@module("mdx-bundler/client")
external getMDXComponent: (string, globals<'any>) => React.element = "getMDXComponent"

@module("mdx-bundler/client")
external getMDXComponent2: (string, globals<'any>) => React.component<Js.Dict.t<'a>> =
  "getMDXComponent"
