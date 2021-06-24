module Styles = {
  open Tailwind
  let elementStyles = twStyle([mb(#6), text(#xl3), fontWeight(#700), tracking(#tight)])
}

@react.component
let make = (~children, ~className="") =>
  <h2 className={Tailwind.merge(. [Styles.elementStyles, className])}> children </h2>
