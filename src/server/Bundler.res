// TODO: Finish configuration of mdx
let getFileBySlugNew = (
  ~root=NodeJS.Process.cwd(),
  ~type_: Mdx__helpers.DataType.t=#blog,
  slug: string,
) => {
  let mdxPath = NodeJS.Path.join([
    root,
    "data",
    Mdx__helpers.DataType.toValue(type_),
    `${slug}.mdx`,
  ])
  let mdPath = NodeJS.Path.join([root, "data", Mdx__helpers.DataType.toValue(type_), `${slug}.md`])

  let source = NodeJS.Fs.existsSync(mdxPath)
    ? NodeJS.Fs.readFileSync(mdxPath)
    : NodeJS.Fs.readFileSync(mdPath)

  //  // https://github.com/kentcdodds/mdx-bundler#nextjs-esbuild-enoent
  let _setEnvPath = if NodeJS.Process.platform === "win32" {
    NodeJS.Process.setESBuildPath(
      NodeJS.Process.env,
      NodeJS.Path.join([NodeJS.Process.cwd(), "node_modules", "esbuild", "esbuild.exe"]),
    )
  } else {
    NodeJS.Process.setESBuildPath(
      NodeJS.Process.env,
      NodeJS.Path.join([NodeJS.Process.cwd(), "node_modules", "esbuild", "bin", "esbuild"]),
    )
  }

  let esbuildOptions: MdxBundler.esbuildOptions = options => {
    options
  }

  let xdmOptions: MdxBundler.xdmOptions = options => {
    // this is the recommended way to add custom remark/rehype plugins:
    // The syntax might look weird, but it protects you in case we add/remove
    // plugins in the future.
    //  require("remark-slug"),
    //   require("remark-autolink-headings"),
    //   require("remark-gfm"),
    //   codeTitles,
    //   [require("remark-footnotes"), {inlineNotes: true}],
    //   require("remark-math"),
    //   imgToJsx,

    // require("rehype-katex"),
    // [require("rehype-prism-plus"), {ignoreMissing: true}],
    // () => {
    //   tree => {
    //     visit(tree, "element", (node, index, parent) => {
    //       let [token, type_] = node.properties.className || []
    //       if token === "token" {
    //         node.properties.className = [tokenClassNames[type_]]
    //       }
    //     })
    //   }
    // },

    options
  }

  let files = Js.Dict.empty()
  let globals = Js.Dict.empty()

  let cwd = NodeJS.Path.join([root, "src", "components"])

  let bundleConfig: MdxBundler.bundleConfg<Js.Dict.t<'a>, Js.Dict.t<'b>, Js.Dict.t<'c>> = {
    cwd: cwd,
    files: files,
    globals: globals,
    esbuildOptions: esbuildOptions,
    xdmOptions: xdmOptions,
  }

  MdxBundler.bundleMDX(source, bundleConfig)->Promise.then((
    result: MdxBundler.serializeResult<Mdx__helpers.data>,
  ) => {
    let {code, frontmatter} = result

    let frontmatterFull = Mdx__helpers.FrontMatterFull.toValue(
      ~frontmatterRawData=frontmatter,
      ~type_,
      ~root,
      ~slug,
      (),
    )

    let props: Mdx__helpers.props = {
      code: code,
      frontmatter: frontmatterFull,
    }
    Promise.resolve(props)
  })
}
