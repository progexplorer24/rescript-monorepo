type props = {children: React.element}

type imgProps = {src: string}

type mdxComponents = {
  p: props => React.element,
  h1: props => React.element,
  h2: props => React.element,
  h3: props => React.element,
  h4: props => React.element,
  blockquote: props => React.element,
  ol: props => React.element,
  ul: props => React.element,
  li: props => React.element,
  wrapper: props => React.element,
  pre: props => React.element,
  inlineCode: props => React.element,
  em: props => React.element,
  strong: props => React.element,
  hr: unit => React.element,
  a: props => React.element,
  img: imgProps => React.element,
  table: props => React.element,
  thead: props => React.element,
  tbody: props => React.element,
  tr: props => React.element,
  td: props => React.element,
}

let components = {
  p: ({children}) => <Mdx.p> {children} </Mdx.p>,
  h1: ({children}) => <Mdx.h1> {children} </Mdx.h1>,
  h2: ({children}) => <Mdx.h2> {children} </Mdx.h2>,
  h3: ({children}) => <Mdx.h3> {children} </Mdx.h3>,
  h4: ({children}) => <Mdx.h4> {children} </Mdx.h4>,
  blockquote: ({children}) => <Mdx.blockquote> {children} </Mdx.blockquote>,
  ol: ({children}) => <Mdx.ol> {children} </Mdx.ol>,
  ul: ({children}) => <Mdx.ul> {children} </Mdx.ul>,
  li: ({children}) => <Mdx.li> {children} </Mdx.li>,
  wrapper: ({children}) => <Mdx.wrapper> {children} </Mdx.wrapper>,
  pre: ({children}) => <Mdx.pre> {children} </Mdx.pre>,
  inlineCode: ({children}) => <Mdx.inlineCode> {children} </Mdx.inlineCode>,
  em: ({children}) => <Mdx.em> {children} </Mdx.em>,
  strong: ({children}) => <Mdx.strong> {children} </Mdx.strong>,
  hr: () => <Mdx.hr />,
  a: ({children}) => <Mdx.a> {children} </Mdx.a>,
  img: ({src}) => <Mdx.img src={src} />,
  table: ({children}) => <Mdx.table> {children} </Mdx.table>,
  thead: ({children}) => <Mdx.thead> {children} </Mdx.thead>,
  tbody: ({children}) => <Mdx.tbody> {children} </Mdx.tbody>,
  tr: ({children}) => <Mdx.tr> {children} </Mdx.tr>,
  td: ({children}) => <Mdx.td> {children} </Mdx.td>,
}

@react.component
let make = (~mdxSource: string, ~layout: string) => {
  // module MDXLayout = {
  //   @react.component
  //   let make = (~mdxSource: string, ~layout: string, ~components: mdxComponents) =>
  //     React.useMemo0(() => MdxBundler.getMDXComponent(mdxSource, [mdxSource]))
  // }
  // <MDXLayout mdxSource layout={layout} components />
  <> </>
}
