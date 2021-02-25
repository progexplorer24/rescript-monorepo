import React from 'react'
import ResApp from "src/App.bs.js"
// import {make as TypographyLayoutRes} from "src/layouts/TypographyLayout.bs.js"
import {
  p as P,
  h2 as H2,
  h3 as H3,
  h4 as H4,
  blockquote as Blockquote,
  ul as Ul,
  ol as Ol,
  li as Li,
  wrapper as Wrapper,
  pre as Pre,
  inlineCode as InlineCode,
  em as Em,
  strong as Strong,
  hr as Hr,
  a as A,
  img as Img,
  table as Table,
  thead as Thead,
  tbody as Tbody,
  tr as Tr,
  td as Td
} from "src/components/Mdx.bs.js"
import {MDXProvider} from '@mdx-js/react'
// TODO: Learn more about Fast Refresh
// TODO: Change project structure
// TODO: https://github.com/ryyppy/rescript-nextjs-template/pull/23
// INFO: Next js info on fast refresh:
// 1. Local state is not preserved for class components (only function components and Hooks preserve state).
// 2. The file you're editing might have other exports in addition to a React component.
// 3. Sometimes, a file would export the result of calling higher-order component like HOC(WrappedComponent). If the returned component is a class,  state will be reset.
// 4. Anonymous arrow functions like export default () => <div />; cause Fast Refresh to not preserve local component state. For large codebases you can use our name-default-component codemod.
// NOTE: source:https://nextjs.org/docs/basic-features/fast-refresh
// Just renaming $$default to ResApp alone
// doesn't help FastRefresh to detect the
// React component, since an alias isn't attached
// to the original React component function name.

// NOTE:
// We need to wrap the make call with
// a Fast-Refresh conform function name,
// (in this case, uppercased first letter)
// If you don't do this, your Fast-Refresh won't have a function name.

// NOTE:
// We need to wrap the make call with
// a Fast-Refresh conform function name,
// (in this case, uppercased first letter)
// If you don't do this, your Fast-Refresh will
// not work!


const components = {
  p: ({children}) => <P>{children}</P>,
  h2: ({children}) => <H2>{children}</H2>,
  h3: ({children}) => <H3>{children}</H3>,
  h4: ({children}) => <H4>{children}</H4>,
  blockquote: ({children}) => <Blockquote>{children}</Blockquote>,
  ol: ({children}) => <Ol>{children}</Ol>,
  ul: ({children}) => <Ul>{children}</Ul>,
  li: ({children}) => <Li>{children}</Li>,
  wrapper: ({children}) => <Wrapper>{children}</Wrapper>,
  pre: ({children}) => <Pre>{children}</Pre>,
  inlineCode: ({children}) => <InlineCode>{children}</InlineCode>,
  em: ({children}) => <Em>{children}</Em>,
  strong: ({children}) => <Strong>{children}</Strong>,
  hr: ({children}) => <Hr>{children}</Hr>,
  a: ({children}) => <A>{children}</A>,
  img: ({children, src}) => <Img src={src}>{children}</Img>,
  table: ({children}) => <Table>{children}</Table>,
  thead: ({children}) => <Thead>{children}</Thead>,
  tbody: ({children}) => <Tbody>{children}</Tbody>,
  tr: ({children}) => <Tr>{children}</Tr>,
  td: ({children}) => <Td>{children}</Td>,
}
function App(props) {
  return <MDXProvider components={components} >
  <ResApp {...props} />
</MDXProvider>
  
 
  
}

export default App