module Styles = {
  open Tailwind
  let elementStyles = twStyle([mb(#6), text(#lg), fontWeight(#700)])
}

@react.component
let make = (~children, ~className="") =>
  <h6 className={Tailwind.merge(. [Styles.elementStyles, className])}> children </h6>
