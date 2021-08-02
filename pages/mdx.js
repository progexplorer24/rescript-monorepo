import * as React from 'react'
// import { default as MdxExamplePage } from "../src/MdxExample.mjs";
import * as Client from "mdx-bundler/client";
import {bundleMDX} from 'mdx-bundler'
import {str} from "../src/utils/Utils.mjs"

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


export default function MdxExample(param) {
  var frontmatter = param.frontmatter;
  var code = param.code;
  var make = Client.getMDXComponent(code, {});


  return React.createElement(React.Fragment, undefined, React.createElement("header", undefined, React.createElement("h1", undefined, str(frontmatter.title)), React.createElement("p", undefined, str(frontmatter.description))), React.createElement("main", undefined, React.createElement(make, {})));
  
}




