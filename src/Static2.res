type frontmatter = {
  title: string,
  description: string,
  published: string,
}
type props = {code: string, frontmatter: frontmatter}

let getStaticProps: Next.GetStaticProps.t<props, {.}, _> = _ctx => {
  let mdxSource = Js.String2.trim(`
---
title: Example Post
published: 2021-02-13
description: This is some description
---

# Wahoo

Here's a **neat** demo:

<Demo />
`)

  // let config: MdxBundler.files = {
  //   files: Js.Dict.fromArray([
  //     (
  //       "./demo.tsx",
  //       `
  // import * as React from 'react'

  // function Demo() {
  //   return <div>Neat demo!</div>
  // }

  // export default Demo
  //     `,
  //     ),
  //   ]),
  // }

  // //  // https://github.com/kentcdodds/mdx-bundler#nextjs-esbuild-enoent
  // let _setEnvPath = if NodeJS.Process.platform === "win32" {
  //   NodeJS.Process.setESBuildPath(
  //     NodeJS.Process.env,
  //     NodeJS.Path.join([NodeJS.Process.cwd(), "node_modules", "esbuild", "esbuild.exe"]),
  //   )
  // } else {
  //   NodeJS.Process.setESBuildPath(
  //     NodeJS.Process.env,
  //     NodeJS.Path.join([NodeJS.Process.cwd(), "node_modules", "esbuild", "bin", "esbuild"]),
  //   )
  // }

  MdxBundler.bundleMDXSimple(mdxSource)->Js.Promise.then_((result: MdxBundler.serializeResult) => {
    let {code, frontmatter} = result

    let frontmatterNew: frontmatter = {
      title: frontmatter.title,
      description: frontmatter.description,
      published: Js.Date.toDateString(frontmatter.published),
    }

    let props = {
      code: code,
      frontmatter: frontmatterNew,
    }

    Js.Promise.resolve({
      "props": props,
    })
  }, _)
}
