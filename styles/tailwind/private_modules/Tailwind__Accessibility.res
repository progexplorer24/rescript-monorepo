open CssJs

// NOTE: Screen Readers - Utilities for improving accessibility with screen readers.
let srOnly = style(.[
  position(#absolute),
  width(#px(1)),
  height(#px(1)),
  padding(#px(0)),
  margin(#px(-1)),
  overflow(#hidden),
  CssJs.unsafe("clip", "rect(0, 0, 0, 0)"),
  whiteSpace(#nowrap),
  borderWidth(#px(0)),
])

let noSrOnly = style(.[
  position(#static),
  width(#auto),
  height(#auto),
  padding(#px(0)),
  margin(#px(0)),
  overflow(#visible),
  CssJs.unsafe("clip", "auto"),
  whiteSpace(#normal),
])
