module Styles = {
  open CssJs

  let defaultStyles = merge(.[%tw("mt-6 text-4xl font-light tracking-tight md:tracking-tighter")])
}

@react.component
let make = (~children, ~className="") =>
  <h1 className={CssJs.merge(.[Styles.defaultStyles, Tailwind.text5xl, className])}>
    {children}
  </h1>
