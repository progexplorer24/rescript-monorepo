module Styles = {
  open CssJs
}

@react.component
let make = (~children, ~className="") => <nav className> children </nav>
