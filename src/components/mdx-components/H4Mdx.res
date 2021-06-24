module Styles = {
  open Tailwind
  let elementStyles = twStyle([mb(#6), text(#xl), fontWeight(#700), tracking(#wide)])
}

@react.component
let make = (~children, ~className="") =>
  <h4 className={Tailwind.merge(. [Styles.elementStyles, className])}> children </h4>
