// TODO: Solve problems with promises and make sure API is working as expected
let mdxSource = Js.String2.trim(`
---
title: Example Post
published: 2021-02-13
description: This is some description
---

# Wahoo

import Demo from './demo'

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

let result = MdxBundler.bundleMDXFiles(mdxSource, config)->Promise.thenResolve(res => {
  Js.log(res)

  res
})
