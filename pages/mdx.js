import * as React from 'react'
import { default as MdxExamplePage } from "../src/MdxExample.mjs";

export {getStaticProps} from "../src/Static3.mjs"


export default function MdxExample(props) {

  return <MdxExamplePage code={props.code} frontmatter={props.frontmatter} />
  
}

