type mdxProps = {children: React.element}

type imgProps = {src: string}

type mdxComponents = {
  p: mdxProps => React.element,
  h1: mdxProps => React.element,
  h2: mdxProps => React.element,
  h3: mdxProps => React.element,
  h4: mdxProps => React.element,
  blockquote: mdxProps => React.element,
  ol: mdxProps => React.element,
  ul: mdxProps => React.element,
  li: mdxProps => React.element,
  wrapper: mdxProps => React.element,
  pre: mdxProps => React.element,
  inlineCode: mdxProps => React.element,
  em: mdxProps => React.element,
  strong: mdxProps => React.element,
  hr: unit => React.element,
  a: mdxProps => React.element,
  img: imgProps => React.element,
  table: mdxProps => React.element,
  thead: mdxProps => React.element,
  tbody: mdxProps => React.element,
  tr: mdxProps => React.element,
  td: mdxProps => React.element,
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

type props = {
  layout: string,
  components: mdxComponents,
}

@react.component
let make = (~mdxSource: string, ~layout: string, ~frontmatter: Mdx__helpers.frontmatterFull) => {
  let mdxComponent = React.useMemo1(
    () => MdxBundler.getMDXComponent(mdxSource, Js.Dict.empty()),
    [mdxSource],
  )

  let props = {
    "layout": layout,
    "components": components,
    "frontmatter": frontmatter,
  }

  React.createElement(mdxComponent, props)
}
