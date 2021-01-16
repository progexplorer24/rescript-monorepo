module Styles = {
  open Tailwind
  let elementStyles = CssJs.merge(.[mt6])
}

@react.component
let make = (~children, ~className="") =>
  <ol className={CssJs.merge(.[Styles.elementStyles, className])}> children </ol>
