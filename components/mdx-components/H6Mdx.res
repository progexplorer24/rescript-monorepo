module Styles = {
  open Tailwind
  let elementStyles = twStyle([mb6, textLg, fontBold])
}

@react.component
let make = (~children, ~className="") =>
  <h6 className={Tailwind.merge(.[Styles.elementStyles, className])}> children </h6>
