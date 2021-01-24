module Styles = {
  open Tailwind
  let elementStyles = twStyle([mb6, textLg, fontBlack, trackingWide])
}

@react.component
let make = (~children, ~className="") =>
  <h5 className={Tailwind.merge(.[Styles.elementStyles, className])}> children </h5>
