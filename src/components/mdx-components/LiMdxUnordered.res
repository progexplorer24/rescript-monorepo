module Styles = {
  open Tailwind
  let elementStyles = twStyle([mb(#v4)])

  let bulletStyles = twStyle([
    w(#v3),
    borderColor(#indigo800),
    borderL(#v1),
    borderR(#v1),
    rounded(#full),
    bg(#indigo50),
    itemsCenter,
    justifyCenter,
    h(#v3),
    mr(#v4),
    inlineFlex,
  ])
}

@react.component
let make = (~children, ~className="") =>
  <li className={Tailwind.merge(.[Styles.elementStyles, className])}>
    <span className=Styles.bulletStyles /> children
  </li>
