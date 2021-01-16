module Styles = {
  open Tailwind
  let elementStyles = CssJs.merge(.[mt4, leadingLoose])
}

@react.component
let make = (~children, ~className="") =>
  <p className={CssJs.merge(.[Styles.elementStyles, className])}> children </p>
