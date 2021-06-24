module Styles = {
  open Tailwind
  let elementStyles = twStyle([mb(#6), text(#xl2), fontWeight(#900)])
}

@react.component
let make = (~children, ~className="") =>
  <h3 className={Tailwind.merge(. [Styles.elementStyles, className])}> children </h3>
