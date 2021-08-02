// type remarkPlugin
// type rehypePlugin

type globals<'any> = Js.Dict.t<'any>

type files = {files: Js.Dict.t<string>}

type frontmatter = {
  title: string,
  description: string,
  published: Js.Date.t,
}

type serializeResult = {
  code: string,
  frontmatter: frontmatter,
}

// type xdmOptions = {
//   remarkPlugins: array<remarkPlugin>,
//   rehypePlugins: array<rehypePlugin>,
// }

// type esbuildOptions = {loader: Js.Dict.t<string>}

// type config = {
//   cwd: string,
//   xdmOptions: xdmOptions => xdmOptions,
//   esbuildOptions: esbuildOptions => esbuildOptions,
// }

// type files = {files: Js.Dict.t<string>}

type bundleConfg<'files, 'xdm, 'esbuildOptions, 'globals, 'matter> = {
  files: 'files,
  xdmOptions: 'xdm => 'xdm,
  esbuildOptions: 'esbuildOptions => 'esbuildOptions,
  globals: 'globals,
  cwd: string,
  grayMatterOptions: 'matter => 'matter,
}

@module("mdx-bundler")
external bundleMDXSimple: string => Js.Promise.t<serializeResult> = "bundleMDX"

@module("mdx-bundler")
external bundleMDXFiles: (string, files) => Js.Promise.t<serializeResult> = "bundleMDX"

@module("mdx-bundler/client")
external getMDXComponent: (string, globals<'any>) => React.component<Js.Dict.t<'a>> =
  "getMDXComponent"
