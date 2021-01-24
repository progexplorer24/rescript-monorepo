module Styles = {
  open Tailwind
  let elementStyles = twStyle([mb6, text2Xl, fontBlack])
}

@react.component
let make = (~children, ~className="") =>
  <h3 className={Tailwind.merge(.[Styles.elementStyles, className])}> children </h3>
