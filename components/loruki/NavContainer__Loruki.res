module Styles = {
  open Tailwind

  let elementStyles = twStyle([bg(#blue900)])
}

@react.component
let make = (~children, ~className="") =>
  <div className={Tailwind.merge(.[Styles.elementStyles, className])}> children </div>
