module Styles = {
  open Tailwind
  let elementStyles = twStyle([])
}

@react.component
let make = (~children, ~className="") =>
  <nav className={Tailwind.merge(.[Styles.elementStyles, className])}> children </nav>
