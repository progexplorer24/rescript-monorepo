module Styles = {
  open Tailwind
  let elementStyles = twStyle([mb4])

  let bulletStyles = twStyle([
    w3,
    borderIndigo800(1.),
    borderL,
    borderR,
    roundedFull,
    bgIndigo50(1.),
    itemsCenter,
    justifyCenter,
    h3,
    mr4,
    inlineFlex,
  ])
}

@react.component
let make = (~children, ~className="") =>
  <li className={Tailwind.merge(.[Styles.elementStyles, className])}>
    <span className=Styles.bulletStyles /> children
  </li>
