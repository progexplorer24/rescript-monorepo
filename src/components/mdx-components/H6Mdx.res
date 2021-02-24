module Styles = {
  open Tailwind
  let elementStyles = twStyle([mb(#v6), text(#lg), fontWeight(#v700)])
}

@react.component
let make = (~children, ~className="") =>
  <h6 className={Tailwind.merge(.[Styles.elementStyles, className])}> children </h6>
