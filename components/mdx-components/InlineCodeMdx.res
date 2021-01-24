module Styles = {
  open Tailwind
  let elementStyles = twStyle([rounded, p1, bgIndigo50(1.), textIndigo800(1.), fontMono, fontBold])
}

@react.component
let make = (~children, ~className="") =>
  <code className={Tailwind.merge(.[Styles.elementStyles, className])}> children </code>
