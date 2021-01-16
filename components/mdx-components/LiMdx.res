module Styles = {
  open Tailwind
  // mt-2 text-lg font-thin text-gray-700
  let elementStyles = CssJs.merge(.[mt2])
}

@react.component
let make = (~children, ~className="") =>
  <li className={CssJs.merge(.[Styles.elementStyles, className])}> children </li>
