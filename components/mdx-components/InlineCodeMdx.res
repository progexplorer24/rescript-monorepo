module Styles = {
  open Tailwind
  let elementStyles = CssJs.merge(.[
    fontMono,
    p1,
    textIndigo800(1.),
    bgIndigo50(1.),
    rounded,
    fontBold,
  ])
}

@react.component
let make = (~children, ~className="") =>
  <code className={CssJs.merge(.[Styles.elementStyles, className])}> children </code>
