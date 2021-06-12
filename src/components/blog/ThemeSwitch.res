module Styles = {
  open Tailwind
  let elementStyles = twStyle([])
}

@react.component
let make = (~children, ~className="") =>
  <button className={Tailwind.merge(. [Styles.elementStyles, className])}> children </button>
