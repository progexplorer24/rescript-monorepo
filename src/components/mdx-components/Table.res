module Styles = {
  open Tailwind
  // w-full mt-6 text-left border-collapse
  let elementStyles = twStyle([w(#full), mt(#6), textLeft, borderCollapse])
}

@react.component
let make = (~children, ~className="") =>
  <table className={Tailwind.merge(. [Styles.elementStyles, className])}> children </table>
