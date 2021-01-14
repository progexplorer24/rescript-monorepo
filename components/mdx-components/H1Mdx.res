module Styles = {
  open CssJs
  open Tailwind

  let defaultStyles = merge(.[%tw("mt-6 text-4xl font-light tracking-tight md:tracking-tighter")])

  let h1Styles = merge(.[defaultStyles, m4])
}

@react.component
let make = (~children, ~className="") => <>
  <h1 className={CssJs.merge(.[Styles.h1Styles, className])}> {children} </h1>
  <p className={CssJs.merge(.[Tailwind.m4, Tailwind.m3])}> {"Hello"->Utils.str} </p>
  <input
    type_="text"
    placeholder="example text"
    name=""
    id=""
    className={CssJs.merge(.[CssJs.style(.[])])}
  />
</>
