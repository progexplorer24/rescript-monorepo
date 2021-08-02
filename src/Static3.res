let getStaticProps: Next.GetStaticProps.t<Static2.props, {.}, _> = _ctx => {
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

  MdxBundler.bundleMDXFiles(mdxSource, config)->Promise.then(result => {
    let {code, frontmatter} = result

    let frontmatterNew: Static2.frontmatter = {
      title: frontmatter.title,
      description: frontmatter.description,
      published: Js.Date.toDateString(frontmatter.published),
    }

    let props: Static2.props = {
      code: code,
      frontmatter: frontmatterNew,
    }
    Promise.resolve({"props": props})
  })
}
