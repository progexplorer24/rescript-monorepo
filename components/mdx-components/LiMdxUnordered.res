module Styles = {
  open Tailwind
  let elementStyles = CssJs.merge(.[mb4])

  let bulletStyles = merge(.[
    w3,
    h3,
    inlineFlex,
    itemsCenter,
    justifyCenter,
    borderL,
    borderR,
    borderIndigo800,
    roundedFull,
    bgIndigo50,
    mr4,
  ])
}

@react.component
let make = (~children, ~className="") =>
  <li className={CssJs.merge(.[Styles.elementStyles, className])}>
    <span className=Styles.bulletStyles /> children
  </li>
