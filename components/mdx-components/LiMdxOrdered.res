module Styles = {
  open Tailwind

  let orderedElementStyles = merge(.[mb4])

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
    // nmb0_5,
  ])

  let numerationStyles = merge(.[
    textIndigo800,
    pr1_5,
    borderR,
    roundedRFull,
    borderIndigo800,
    // textWhite,
    mr3,
    inlineFlex,
  ])
}

@react.component
let make = (~children, ~className="", ~order) => {
  <li className={CssJs.merge(.[Styles.orderedElementStyles, className])}>
    <span className=Styles.numerationStyles> {React.string(Belt.Int.toString(order))} </span>
    children
  </li>
}
