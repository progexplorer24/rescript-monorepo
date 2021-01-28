module Styles = {
  open Tailwind
  let elementStyles = twStyle([p(#v2)])
}

@react.component
let make = (~children, ~className="") =>
  <th className={Tailwind.merge(.[Styles.elementStyles, className])}> children </th>
