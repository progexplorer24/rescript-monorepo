module Styles = {
  open Tailwind
  let elementStyles = twStyle([mb(#6), text(#lg), fontWeight(#900), tracking(#wide)])
}

@react.component
let make = (~children, ~className="") =>
  <h5 className={Tailwind.merge(. [Styles.elementStyles, className])}> children </h5>
