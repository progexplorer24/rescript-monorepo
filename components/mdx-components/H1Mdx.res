module Styles = {
  open Tailwind

  let h1Styles = CssJs.merge(.[mb6, text4Xl, fontBlack, trackingTight])
}

@react.component
let make = (~children, ~className="") => <>
  <h1 className={CssJs.merge(.[Styles.h1Styles, className])}> {children} </h1>
</>
