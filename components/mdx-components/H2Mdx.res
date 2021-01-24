module Styles = {
  open Tailwind
  let elementStyles = twStyle([mb6, text3Xl, fontBold, trackingTight])
}

@react.component
let make = (~children, ~className="") =>
  <h2 className={Tailwind.merge(.[Styles.elementStyles, className])}> children </h2>
