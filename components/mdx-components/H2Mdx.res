module Styles = {
  open Tailwind
  //  tw`mt-6 text-3xl font-light tracking-tight md:text-4xl`,
  let elementStyles = CssJs.merge(.[mb6, text3Xl, fontBold, trackingTight])
}

@react.component
let make = (~children, ~className="") =>
  <h2 className={CssJs.merge(.[Styles.elementStyles, className])}> children </h2>
