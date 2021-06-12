module Styles = {
  open Tailwind
  let elementStyles = twStyle([p(#v1), fontWeight(#v500), textColor(#gray900), sm([p(#v4)])])
}

@react.component
let make = (~children, ~className="", ~href) =>
  <Mdx.a href className={Tailwind.merge(. [Styles.elementStyles, className])}> children </Mdx.a>
