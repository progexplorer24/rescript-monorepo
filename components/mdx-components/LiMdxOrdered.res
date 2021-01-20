module Styles = {
  open Tailwind

  let orderedElementStyles = merge(.[mb4])

  let numerationStyles = merge(.[
    textIndigo800(1.),
    pr1_5,
    borderR,
    roundedRFull,
    borderIndigo800(1.),
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
