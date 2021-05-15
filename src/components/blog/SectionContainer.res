module Styles = {
  open Tailwind
  let elementStyles = twStyle([
    maxW(#xl3),
    px(#v4),
    mx(#auto),
    sm([px(#v6)]),
    xl([maxW(#xl5), px(#v0)]),
  ])
}

@react.component
let make = (~children, ~className="") =>
  <div className={Tailwind.merge(. [Styles.elementStyles, className])}> children </div>
