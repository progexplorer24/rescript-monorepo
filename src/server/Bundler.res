@module("remark-slug") external remarkSlug: MdxBundler.remarkPlugin = "default"
@module("remark-gfm") external remarkGfm: MdxBundler.remarkPlugin = "default"
@module("remark-math") external remarkMath: MdxBundler.remarkPlugin = "default"
// @module("remark-footnotes") external remarkFootnotes: MdxBundler.remarkPlugin = "default"
@module("remark-autolink-headings")
external remarkAutoLinkHeadings: MdxBundler.remarkPlugin = "default"
@module("rehype-katex") external rehypeKatex: MdxBundler.rehypePlugin = "default"

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
    ? NodeJS.Fs.readFileSync(~encoding="utf8", mdxPath)
    : NodeJS.Fs.readFileSync(~encoding="utf8", mdPath)

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

  let esbuildOptions: MdxBundler.esbuildOptions<'a> = options => {
    // let newLoader = {
    //   ".mjs": "jsx",
    // }

    // options["loader"] = newLoader

    options
  }

  let toc = []

  let xdmOptions: MdxBundler.xdmOptions<'a> = options => {
    let initialRemarkArray = Js.Array2.isArray(options["remarkPlugins"])
      ? options["remarkPlugins"]
      : []

    let initialRehypeArray = Js.Array2.isArray(options["rehypePlugins"])
      ? options["rehypePlugins"]
      : []

    let remarkPlugins = Js.Array2.concat(
      initialRemarkArray,
      [
        remarkSlug,
        remarkAutoLinkHeadings,
        remarkGfm,
        remarkMath,
        // remarkFootnotes
      ],
    )

    let rehypePlugins = Js.Array2.concat(initialRehypeArray, [rehypeKatex])

    options["remarkPlugins"] = remarkPlugins
    options["rehypePlugins"] = rehypePlugins

    options
  }

  let pageTitle = NodeJS.Fs.readFileSync(
    NodeJS.Path.join([NodeJS.Process.cwd(), "src/components/blog/PageTitle.mjs"]),
  )

  let files = Js.Dict.fromArray([("../../src/components/blog/PageTitle.mjs", pageTitle)])
  // let files = Js.Dict.empty()
  let globals = Js.Dict.empty()

  let cwd = NodeJS.Path.join([root, "data", "blog"])
  // WARNING: File bundling does not work
  let bundleConfig: MdxBundler.bundleConfg<
    Js.Dict.t<string>,
    Js.Dict.t<'b>,
    Js.Dict.t<'c>,
    Js.t<'d>,
    Js.t<'e>,
  > = {
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
