module Styles = {
  open Tailwind
  let elementStyles = twStyle([
    rounded(#default),
    p(#1),
    bg(#indigo50),
    textColor(#indigo800),
    fontMono,
    fontWeight(#700),
  ])
}

@react.component
let make = (~children, ~className="") =>
  <code className={Tailwind.merge(. [Styles.elementStyles, className])}> children </code>
