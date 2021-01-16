module Styles = {
  open Tailwind
  let elementStyles = CssJs.merge(.[mb6, fontBlack, textLg, trackingWide])
}

@react.component
let make = (~children, ~className="") =>
  <h5 className={CssJs.merge(.[Styles.elementStyles, className])}> children </h5>
