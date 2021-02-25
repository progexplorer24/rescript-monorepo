module Styles = {
  open Tailwind

  /* REGION: xl #region 

   xl: {
    css: [
      {
        fontSize: rem(20),
        lineHeight: round(36 / 20),
        p: {
          marginTop: em(24, 20),
          marginBottom: em(24, 20),
        },
        '[class~="lead"]': {
          fontSize: em(24, 20),
          lineHeight: round(36 / 24),
          marginTop: em(24, 24),
          marginBottom: em(24, 24),
        },
        blockquote: {
          marginTop: em(48, 30),
          marginBottom: em(48, 30),
          paddingLeft: em(32, 30),
        },
        h1: {
          fontSize: em(56, 20),
          marginTop: '0',
          marginBottom: em(48, 56),
          lineHeight: round(56 / 56),
        },
        h2: {
          fontSize: em(36, 20),
          marginTop: em(56, 36),
          marginBottom: em(32, 36),
          lineHeight: round(40 / 36),
        },
        h3: {
          fontSize: em(30, 20),
          marginTop: em(48, 30),
          marginBottom: em(20, 30),
          lineHeight: round(40 / 30),
        },
        h4: {
          marginTop: em(36, 20),
          marginBottom: em(12, 20),
          lineHeight: round(32 / 20),
        },
        img: {
          marginTop: em(40, 20),
          marginBottom: em(40, 20),
        },
        video: {
          marginTop: em(40, 20),
          marginBottom: em(40, 20),
        },
        figure: {
          marginTop: em(40, 20),
          marginBottom: em(40, 20),
        },
        'figure > *': {
          marginTop: '0',
          marginBottom: '0',
        },
        'figure figcaption': {
          fontSize: em(18, 20),
          lineHeight: round(28 / 18),
          marginTop: em(18, 18),
        },
        code: {
          fontSize: em(18, 20),
        },
        'h2 code': {
          fontSize: em(31, 36),
        },
        'h3 code': {
          fontSize: em(27, 30),
        },
        pre: {
          fontSize: em(18, 20),
          lineHeight: round(32 / 18),
          marginTop: em(36, 18),
          marginBottom: em(36, 18),
          borderRadius: rem(8),
          paddingTop: em(20, 18),
          paddingRight: em(24, 18),
          paddingBottom: em(20, 18),
          paddingLeft: em(24, 18),
        },
        ol: {
          marginTop: em(24, 20),
          marginBottom: em(24, 20),
        },
        ul: {
          marginTop: em(24, 20),
          marginBottom: em(24, 20),
        },
        li: {
          marginTop: em(12, 20),
          marginBottom: em(12, 20),
        },
        'ol > li': {
          paddingLeft: em(36, 20),
        },
        'ol > li::before': {
          left: '0',
        },
        'ul > li': {
          paddingLeft: em(36, 20),
        },
        'ul > li::before': {
          width: em(7, 20),
          height: em(7, 20),
          top: `calc(${em(36 / 2, 20)} - ${em(3.5, 20)})`,
          left: em(5, 20),
        },
        '> ul > li p': {
          marginTop: em(16, 20),
          marginBottom: em(16, 20),
        },
        '> ul > li > *:first-child': {
          marginTop: em(24, 20),
        },
        '> ul > li > *:last-child': {
          marginBottom: em(24, 20),
        },
        '> ol > li > *:first-child': {
          marginTop: em(24, 20),
        },
        '> ol > li > *:last-child': {
          marginBottom: em(24, 20),
        },
        'ul ul, ul ol, ol ul, ol ol': {
          marginTop: em(16, 20),
          marginBottom: em(16, 20),
        },
        hr: {
          marginTop: em(56, 20),
          marginBottom: em(56, 20),
        },
        'hr + *': {
          marginTop: '0',
        },
        'h2 + *': {
          marginTop: '0',
        },
        'h3 + *': {
          marginTop: '0',
        },
        'h4 + *': {
          marginTop: '0',
        },
        table: {
          fontSize: em(18, 20),
          lineHeight: round(28 / 18),
        },
        'thead th': {
          paddingRight: em(12, 18),
          paddingBottom: em(16, 18),
          paddingLeft: em(12, 18),
        },
        'thead th:first-child': {
          paddingLeft: '0',
        },
        'thead th:last-child': {
          paddingRight: '0',
        },
        'tbody td': {
          paddingTop: em(16, 18),
          paddingRight: em(12, 18),
          paddingBottom: em(16, 18),
          paddingLeft: em(12, 18),
        },
        'tbody td:first-child': {
          paddingLeft: '0',
        },
        'tbody td:last-child': {
          paddingRight: '0',
        },
      },
      {
        '> :first-child': {
          marginTop: '0',
        },
        '> :last-child': {
          marginBottom: '0',
        },
      },
    ],
  },
  
   ENDREGION: xl #endregion */

  let wrapperXl = twStyle([xl([maxW(#xl6)])])
  let wrapperBase = twStyle([
    px(#v4),
    py(#v10),
    mx(#auto),
    maxW(#xl3),
    [
      CssJs.fontFamilies([
        #custom("ui-sans-serif"),
        #systemUi,
        #custom("-apple-system"),
        #custom("BlinkMacSystemFont"),
        #custom("Segoe UI"),
        #custom("Roboto"),
        #custom("Helvetica Neue"),
        #custom("Arial"),
        #custom("Noto Sans"),
        #sansSerif,
        #custom("Apple Color Emoji"),
        #custom("Segoe UI Emoji"),
        #custom("Segoe UI Symbol"),
        #custom("Noto Color Emoji"),

        // ui-sans-serif,system-ui,-apple-system,BlinkMacSystemFont,Segoe UI,Roboto,Helvetica Neue,Arial,Noto Sans,sans-serif,Apple Color Emoji,Segoe UI Emoji,Segoe UI Symbol,Noto Color Emoji
      ]),
    ],
  ])
  let wrapperSm = twStyle([sm([py(#v12), px(#v6)])])
  let wrapperLg = twStyle([lg([px(#v8), py(#v16), maxW(#xl4)])])
  let wrapper = merge(.[wrapperBase, wrapperSm, wrapperLg, wrapperXl])
}

@react.component
let make = (~children) => {
  <HeadConfiguration title="Typography Example">
    <main> <div className={Tailwind.merge(.[Styles.wrapper])}> children </div> </main>
  </HeadConfiguration>
}
