// type remarkPlugin
// type rehypePlugin

type globals<'any> = Js.Dict.t<'any>

// type files<'a> = {files: Js.t<'a>}

type serializeResult<'frontmatter> = {
  code: string,
  frontmatter: 'frontmatter,
}

type xdm<'a> = Js.t<'a>

type xdmOptions<'a> = xdm<'a> => xdm<'a>

type esbuild<'a> = Js.t<'a>
type esbuildOptions<'a> = esbuild<'a> => esbuild<'a>

type bundleConfg<'files, 'globals, 'matter, 'esbuild, 'xdm> = {
  files: 'files,
  xdmOptions: xdmOptions<'xdm>,
  esbuildOptions: esbuildOptions<'esbuild>,
  globals: 'globals,
  cwd: string,
}

@module("mdx-bundler")
external bundleMDXSimple: string => Promise.t<serializeResult<'frontmatter>> = "bundleMDX"

@module("mdx-bundler")
external bundleMDXFiles: (string, 'files) => Promise.t<serializeResult<'frontmatter>> = "bundleMDX"

@module("mdx-bundler")
external bundleMDX: (
  string,
  bundleConfg<'files, 'globals, 'matter, 'esbuild, 'xdm>,
) => Promise.t<serializeResult<'frontmatter>> = "bundleMDX"

@module("mdx-bundler/client")
external getMDXComponent: (string, globals<'any>) => React.component<Js.t<'a>> = "getMDXComponent"
