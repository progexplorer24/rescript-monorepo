module Styles = {
  open Tailwind
  // my-10 border-t border-gray-300
  let elementStyles = twStyle([my(#v10), borderT(#1), borderColor(#gray300)])
}

@react.component
let make = (~children, ~className="") =>
  <hr className={Tailwind.merge(. [Styles.elementStyles, className])}> children </hr>
