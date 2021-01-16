module Styles = {
  open Tailwind
  let elementStyles = CssJs.merge(.[mb6, fontBold, textLg])
}

@react.component
let make = (~children, ~className="") =>
  <h6 className={CssJs.merge(.[Styles.elementStyles, className])}> children </h6>
