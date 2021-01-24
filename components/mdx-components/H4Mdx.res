module Styles = {
  open Tailwind
  let elementStyles = twStyle([mb6, textXl, fontBold, trackingWide])
}

@react.component
let make = (~children, ~className="") =>
  <h4 className={Tailwind.merge(.[Styles.elementStyles, className])}> children </h4>
