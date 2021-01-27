module Styles = {
  open Tailwind
  let elementStyles = twStyle([mb(#v6), text(#xl2), fontWeight(#v900)])
}

@react.component
let make = (~children, ~className="") =>
  <h3 className={Tailwind.merge(.[Styles.elementStyles, className])}> children </h3>
