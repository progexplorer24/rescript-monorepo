module Styles = {
  open Tailwind
  let elementStyles = CssJs.merge(.[mb6, leadingLoose])
}

@react.component
let make = (~children, ~className="") =>
  <p className={CssJs.merge(.[Styles.elementStyles, className])}> children </p>
