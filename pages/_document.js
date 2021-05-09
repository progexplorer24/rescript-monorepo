import Document, { Html, Head, Main, NextScript } from 'next/document'


/*
  Inter - 400/700/800 ?
  / dark background #111827 font - gray100
*/

class MyDocument extends Document {
  render() {
    return (
      <Html lang="en">
        <Head>
        <link rel="preconnect" href="https://fonts.gstatic.com" crossOrigin="anonymous" />
        <link
            rel="preload"
            href="https://cdn.jsdelivr.net/npm/katex@0.13.0/dist/fonts/KaTeX_Main-Regular.woff2"
            as="font"
            type="font/woff2"
            crossOrigin="anonymous"
          />
          <link
            rel="preload"
            href="https://cdn.jsdelivr.net/npm/katex@0.13.0/dist/fonts/KaTeX_Math-Italic.woff2"
            as="font"
            type="font/woff2"
            crossOrigin="anonymous"
          />
          <link
            rel="preload"
            href="https://cdn.jsdelivr.net/npm/katex@0.13.0/dist/fonts/KaTeX_Size2-Regular.woff2"
            as="font"
            type="font/woff2"
            crossOrigin="anonymous"
          />
          <link
            rel="preload"
            href="https://cdn.jsdelivr.net/npm/katex@0.13.0/dist/fonts/KaTeX_Size4-Regular.woff2"
            as="font"
            type="font/woff2"
            crossOrigin="anonymous"
          />
          <link
            rel="stylesheet"
            href="https://cdn.jsdelivr.net/npm/katex@0.13.0/dist/katex.min.css"
            integrity="sha384-t5CR+zwDAROtph0PXGte6ia8heboACF9R5l/DiY+WZ3P2lxNgvJkQk5n7GPvLMYw"
            crossOrigin="anonymous"
          />
        </Head>
        <body>
          <Main />
          <NextScript />
        </body>
      </Html>)
    }
  }
export default MyDocument