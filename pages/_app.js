import React from 'react'
import ResApp from "src/App.mjs"
import {make as Wrapper} from "src/components/blog/LayoutWrapper.mjs"
import Head from 'next/head'
import { ThemeProvider } from 'next-themes'
import '../src/styles/fonts.css';
// NOTE: https://github.com/ryyppy/rescript-nextjs-template/pull/23
// INFO: Next js info on fast refresh:
// 1. Local state is not preserved for class components (only function components and Hooks preserve state).
// 2. The file you're editing might have other exports in addition to a React component.
// 3. Sometimes, a file would export the result of calling higher-order component like HOC(WrappedComponent). If the returned component is a class,  state will be reset.
// 4. Anonymous arrow functions like export default () => <div />; cause Fast Refresh to not preserve local component state. For large codebases you can use our name-default-component codemod.
// NOTE: source:https://nextjs.org/docs/basic-features/fast-refresh

// NOTE: We need to create this file to have upper-cased page component - Fast Refresh Requirement
function App(props) {
  return <ThemeProvider attribute="class">
     <Head>
        <meta content="width=device-width, initial-scale=1" name="viewport" />
      </Head>
      <Wrapper>

    <ResApp {...props} />
      </Wrapper>
  </ThemeProvider>
}

export default App