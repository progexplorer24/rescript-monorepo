module Styles = {
  open Tailwind
  let elementStyles = twStyle([
    rounded(#default),
    p(#v1),
    bg(#indigo50),
    textColor(#indigo800),
    fontMono,
    fontWeight(#v700),
  ])
}

@react.component
let make = (~children, ~className="") =>
  <code className={Tailwind.merge(.[Styles.elementStyles, className])}> children </code>
