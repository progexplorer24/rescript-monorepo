module Styles = {
  open Tailwind
  let elementStyles = CssJs.merge(.[mb6, textXl, fontBold, trackingWide])
}

@react.component
let make = (~children, ~className="") =>
  <h4 className={CssJs.merge(.[Styles.elementStyles, className])}> children </h4>
