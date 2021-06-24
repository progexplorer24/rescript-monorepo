module Styles = {
  open Tailwind

  let wrapperXl = twStyle([xl([maxW(#xl6)])])
  let wrapperBase = twStyle([
    px(#4),
    py(#10),
    mx(#auto),
    maxW(#xl3),
    [
      CssJs.fontFamilies([
        #custom("Inter"),
        #custom("Apple Color Emoji"),
        #custom("Segoe UI Emoji"),
        #custom("Segoe UI Symbol"),
        #custom("Noto Color Emoji"),

        // ui-sans-serif,system-ui,-apple-system,BlinkMacSystemFont,Segoe UI,Roboto,Helvetica Neue,Arial,Noto Sans,sans-serif,Apple Color Emoji,Segoe UI Emoji,Segoe UI Symbol,Noto Color Emoji
      ]),
    ],
  ])
  let wrapperSm = twStyle([sm([py(#12), px(#6)])])
  let wrapperLg = twStyle([lg([px(#8), py(#16), maxW(#xl4)])])
  let wrapper = merge(. [wrapperBase, wrapperSm, wrapperLg, wrapperXl])
}

@react.component
let make = (~children) => {
  <div className={Tailwind.merge(. [Styles.wrapper])}> children </div>
}
