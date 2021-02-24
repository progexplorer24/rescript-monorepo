module Styles = {
  open Tailwind
  let elementStyles = twStyle([mb(#v6), text(#xl), fontWeight(#v700), tracking(#wide)])
}

@react.component
let make = (~children, ~className="") =>
  <h4 className={Tailwind.merge(.[Styles.elementStyles, className])}> children </h4>
