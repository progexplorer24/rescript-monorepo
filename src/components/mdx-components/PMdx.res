module Styles = {
  open Tailwind
  let elementStyles = CssJs.merge(. [style(. tw([mb(#6), leading(#loose)]))])
}

@react.component
let make = (~children, ~className="") =>
  <p className={CssJs.merge(. [Styles.elementStyles, className])}> children </p>
