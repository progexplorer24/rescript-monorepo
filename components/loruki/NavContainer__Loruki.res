module Styles = {
  open Tailwind

  let elementStyles = twStyle([maxW(#xl6), mx(#auto), mx(#auto), overflowAuto, bg(#blue900)])
}

@react.component
let make = (~children, ~className="") =>
  <div className={Tailwind.merge(.[Styles.elementStyles, className])}> children </div>
