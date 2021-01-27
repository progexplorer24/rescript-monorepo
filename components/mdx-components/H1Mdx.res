module Styles = {
  open Tailwind

  let h1Styles = twStyle([mb(#v6), text(#xl4), fontWeight(#v900), tracking(#tight)])
}

@react.component
let make = (~children, ~className="") => <>
  <h1 className={Tailwind.merge(.[Styles.h1Styles, className])}> {children} </h1>
</>
