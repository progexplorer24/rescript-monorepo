module Styles = {
  open Tailwind

  let orderedElementStyles = twStyle([mb4])

  let numerationStyles = twStyle([
    borderR,
    pr1_5,
    roundedRFull,
    borderIndigo800(1.),
    mr3,
    inlineFlex,
    textIndigo800(1.),
  ])
}

@react.component
let make = (~children, ~className="", ~order) => {
  <li className={Tailwind.merge(.[Styles.orderedElementStyles, className])}>
    <span className=Styles.numerationStyles> {React.string(Belt.Int.toString(order))} </span>
    children
  </li>
}
