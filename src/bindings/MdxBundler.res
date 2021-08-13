type remarkPlugin
type rehypePlugin

type globals<'any> = Js.Dict.t<'any>

type files = {files: Js.Dict.t<string>}

type serializeResult<'frontmatter> = {
  code: string,
  frontmatter: 'frontmatter,
}

type xdm = {
  remarkPlugins: array<remarkPlugin>,
  rehypePlugins: array<rehypePlugin>,
}

type xdmOptions = xdm => xdm

type esbuild = {loader: Js.Dict.t<string>}
type esbuildOptions = esbuild => esbuild

type bundleConfg<'files, 'globals, 'matter> = {
  files: 'files,
  xdmOptions: xdmOptions,
  esbuildOptions: esbuildOptions,
  globals: 'globals,
  cwd: string,
}

@module("mdx-bundler")
external bundleMDXSimple: string => Promise.t<serializeResult<'frontmatter>> = "bundleMDX"

@module("mdx-bundler")
external bundleMDXFiles: (string, files) => Promise.t<serializeResult<'frontmatter>> = "bundleMDX"

@module("mdx-bundler")
external bundleMDX: (
  string,
  bundleConfg<'files, 'globals, 'matter>,
) => Promise.t<serializeResult<'frontmatter>> = "bundleMDX"

@module("mdx-bundler/client")
external getMDXComponent: (string, globals<'any>) => React.component<Js.t<'a>> = "getMDXComponent"
