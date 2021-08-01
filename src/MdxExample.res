type props = {result: MdxBundler.serializeResult}

let default = props => <div />

let getStaticProps = _ctx => {
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

  let config: MdxBundler.files = {
    files: Js.Dict.fromArray([
      (
        "./demo.tsx",
        `
import * as React from 'react'

function Demo() {
  return <div>Neat demo!</div>
}

export default Demo
    `,
      ),
    ]),
  }

  // //  // https://github.com/kentcdodds/mdx-bundler#nextjs-esbuild-enoent
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

  MdxBundler.bundleMDXSimple(mdxSource)->Js.Promise.then_((result: MdxBundler.serializeResult) => {
    let props = {
      result: result,
    }

    Js.Promise.resolve({"props": props})
  }, _)
}
