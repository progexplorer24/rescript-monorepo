module Styles = {
  open Tailwind
  let elementStyles = CssJs.merge(.[fontMono, p1, textIndigo800, bgIndigo50, rounded, fontBold])
}

@react.component
let make = (~children, ~className="") =>
  <code className={CssJs.merge(.[Styles.elementStyles, className])}> children </code>
