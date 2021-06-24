module Styles = {
  open Tailwind
  let elementStyles = twStyle([mb(#4)])

  let bulletStyles = twStyle([
    w(#3),
    borderColor(#indigo800),
    borderL(#1),
    borderR(#1),
    rounded(#full),
    bg(#indigo50),
    itemsCenter,
    justifyCenter,
    h(#3),
    mr(#4),
    inlineFlex,
  ])
}

@react.component
let make = (~children, ~className="") =>
  <li className={Tailwind.merge(. [Styles.elementStyles, className])}>
    <span className=Styles.bulletStyles /> children
  </li>
