import * as React from 'react'
import { default as MdxExamplePage } from "../src/MdxExample.mjs";
import {bundleMDX} from 'mdx-bundler'

// export {getStaticProps} from "../src/Static2.mjs"

export async function getStaticProps() {
  const mdxSource = `
---
title: Example Post
description: This is some description
---

# Wahoo

import Demo from './demo'

Here's a **neat** demo:

<Demo />
`.trim()


const result = await bundleMDX(mdxSource, {
  files: {
    './demo.tsx': `
import * as React from 'react'

function Demo() {
  return <div>Neat demo!</div>
}

export default Demo
    `,
  },
})

const {code, frontmatter} = result


  return { props: { code, frontmatter } }
}


export default function MdxExample(props) {

  return <MdxExamplePage code={props.code} frontmatter={props.frontmatter} />
  
}

