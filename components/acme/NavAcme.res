module Styles = {
  let navStyles = %tw(
    "bg-gray-700 md:flex md:items-center md:justify-between text-white py-2 px-8 md:px-16  border-red-500 border-b-2"
  )
}

@react.component
let make = (~children, ~className="") =>
  <Nav className={CssJs.merge(.[Styles.navStyles, className])}> children </Nav>
