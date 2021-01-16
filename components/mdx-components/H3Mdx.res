module Styles = {
  open Tailwind
  let elementStyles = CssJs.merge(.[mb6, text2Xl, fontBlack])
}

@react.component
let make = (~children, ~className="") =>
  <h3 className={CssJs.merge(.[Styles.elementStyles, className])}> children </h3>
