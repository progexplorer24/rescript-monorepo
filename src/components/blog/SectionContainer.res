module Styles = {
  open Tailwind
  let elementStyles = twStyle([
    maxW(#xl3),
    px(#4),
    mx(#auto),
    sm([px(#6)]),
    xl([maxW(#xl5), px(#0)]),
  ])
}

@react.component
let make = (~children, ~className="") =>
  <div className={Tailwind.merge(. [Styles.elementStyles, className])}> children </div>
