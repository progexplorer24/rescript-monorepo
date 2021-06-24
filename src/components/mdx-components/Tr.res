module Styles = {
  open Tailwind
  // border-t border-b border-gray-400
  let elementStyles = twStyle([borderT(#1), borderB(#1), borderColor(#gray400)])
}

@react.component
let make = (~children, ~className="") =>
  <tr className={Tailwind.merge(. [Styles.elementStyles, className])}> children </tr>
