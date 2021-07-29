import Document, { Html, Head, Main, NextScript } from 'next/document'


// TODO: Finish meta tags
class MyDocument extends Document {
  render() {

    return (
      <Html lang="en">
        <Head>
        <link
            rel="preload"
            href="/fonts/InterVarSubset.woff2"
            as="font"
            type="font/woff2"
            crossOrigin="anonymous"
          />
        <link
            rel="preload"
            href="/fonts/katex-main.woff2"
            as="font"
            type="font/woff2"
            crossOrigin="anonymous"
          />
          <link
            rel="preload"
            href="/fonts/katex-italic.woff2"
            as="font"
            type="font/woff2"
            crossOrigin="anonymous"
          />
          <link
            rel="preload"
            href="/fonts/KaTeX_Size2-Regular.woff2"
            as="font"
            type="font/woff2"
            crossOrigin="anonymous"
          />
          <link
            rel="preload"
            href="/fonts/KaTeX_Size4-Regular.woff2"
            as="font"
            type="font/woff2"
            crossOrigin="anonymous"
          />
          <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/katex@0.13.11/dist/katex.min.css" integrity="sha384-Um5gpz1odJg5Z4HAmzPtgZKdTBHZdw8S29IecapCSB31ligYPhHQZMIlWLYQGVoc" crossOrigin="anonymous"></link>
        </Head>
        <body>
          <Main />
          <NextScript />
        </body>
      </Html>)
    }
  }
export default MyDocument