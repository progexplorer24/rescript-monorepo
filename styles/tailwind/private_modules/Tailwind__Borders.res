// INFO: Not completed
open CssJs

// NOTE: Border Radius - Utilities for controlling the border radius of an element.
let roundedNone = style(.[borderRadius(Theme.BorderRadius.none)])
let roundedSm = style(.[borderRadius(Theme.BorderRadius.sm)])
let rounded = style(.[borderRadius(Theme.BorderRadius.default)])
let roundedMd = style(.[borderRadius(Theme.BorderRadius.md)])
let roundedLg = style(.[borderRadius(Theme.BorderRadius.lg)])
let roundedXl = style(.[borderRadius(Theme.BorderRadius.xl)])
let rounded2Xl = style(.[borderRadius(Theme.BorderRadius._2xl)])
let rounded3Xl = style(.[borderRadius(Theme.BorderRadius._3xl)])
let roundedFull = style(.[borderRadius(Theme.BorderRadius.full)])

let roundedTNone = style(.[
  borderTopLeftRadius(Theme.BorderRadius.none),
  borderTopRightRadius(Theme.BorderRadius.none),
])
let roundedRNone = style(.[
  borderTopRightRadius(Theme.BorderRadius.none),
  borderBottomRightRadius(Theme.BorderRadius.none),
])
let roundedBNone = style(.[
  borderBottomRightRadius(Theme.BorderRadius.none),
  borderBottomLeftRadius(Theme.BorderRadius.none),
])
let roundedLNone = style(.[
  borderTopLeftRadius(Theme.BorderRadius.none),
  borderBottomLeftRadius(Theme.BorderRadius.none),
])

let roundedTSm = style(.[
  borderTopLeftRadius(Theme.BorderRadius.sm),
  borderTopRightRadius(Theme.BorderRadius.sm),
])
let roundedRSm = style(.[
  borderBottomRightRadius(Theme.BorderRadius.sm),
  borderTopRightRadius(Theme.BorderRadius.sm),
])
let roundedBSm = style(.[
  borderBottomRightRadius(Theme.BorderRadius.sm),
  borderBottomLeftRadius(Theme.BorderRadius.sm),
])
let roundedLSm = style(.[
  borderTopLeftRadius(Theme.BorderRadius.sm),
  borderBottomLeftRadius(Theme.BorderRadius.sm),
])

let roundedT = style(.[
  borderTopLeftRadius(Theme.BorderRadius.default),
  borderTopRightRadius(Theme.BorderRadius.default),
])
let roundedR = style(.[
  borderBottomRightRadius(Theme.BorderRadius.default),
  borderTopRightRadius(Theme.BorderRadius.default),
])
let roundedB = style(.[
  borderBottomRightRadius(Theme.BorderRadius.default),
  borderBottomLeftRadius(Theme.BorderRadius.default),
])
let roundedL = style(.[
  borderTopLeftRadius(Theme.BorderRadius.default),
  borderBottomLeftRadius(Theme.BorderRadius.default),
])

let roundedTMd = style(.[
  borderTopLeftRadius(Theme.BorderRadius.md),
  borderTopRightRadius(Theme.BorderRadius.md),
])
let roundedRMd = style(.[
  borderBottomRightRadius(Theme.BorderRadius.md),
  borderTopRightRadius(Theme.BorderRadius.md),
])
let roundedBMd = style(.[
  borderBottomRightRadius(Theme.BorderRadius.md),
  borderBottomLeftRadius(Theme.BorderRadius.md),
])
let roundedLMd = style(.[
  borderTopLeftRadius(Theme.BorderRadius.md),
  borderBottomLeftRadius(Theme.BorderRadius.md),
])

let roundedTLg = style(.[
  borderTopLeftRadius(Theme.BorderRadius.lg),
  borderTopRightRadius(Theme.BorderRadius.lg),
])
let roundedRLg = style(.[
  borderBottomRightRadius(Theme.BorderRadius.lg),
  borderTopRightRadius(Theme.BorderRadius.lg),
])
let roundedBLg = style(.[
  borderBottomRightRadius(Theme.BorderRadius.lg),
  borderBottomLeftRadius(Theme.BorderRadius.lg),
])
let roundedLLg = style(.[
  borderTopLeftRadius(Theme.BorderRadius.lg),
  borderBottomLeftRadius(Theme.BorderRadius.lg),
])

let roundedTXl = style(.[
  borderTopLeftRadius(Theme.BorderRadius.xl),
  borderTopRightRadius(Theme.BorderRadius.xl),
])
let roundedRXl = style(.[
  borderBottomRightRadius(Theme.BorderRadius.xl),
  borderTopRightRadius(Theme.BorderRadius.xl),
])
let roundedBXl = style(.[
  borderBottomRightRadius(Theme.BorderRadius.xl),
  borderBottomLeftRadius(Theme.BorderRadius.xl),
])
let roundedLXl = style(.[
  borderTopLeftRadius(Theme.BorderRadius.xl),
  borderBottomLeftRadius(Theme.BorderRadius.xl),
])

let roundedT2Xl = style(.[
  borderTopLeftRadius(Theme.BorderRadius._2xl),
  borderTopRightRadius(Theme.BorderRadius._2xl),
])
let roundedR2Xl = style(.[
  borderBottomRightRadius(Theme.BorderRadius._2xl),
  borderTopRightRadius(Theme.BorderRadius._2xl),
])
let roundedB2Xl = style(.[
  borderBottomRightRadius(Theme.BorderRadius._2xl),
  borderBottomLeftRadius(Theme.BorderRadius._2xl),
])
let roundedL2Xl = style(.[
  borderTopLeftRadius(Theme.BorderRadius._2xl),
  borderBottomLeftRadius(Theme.BorderRadius._2xl),
])

let roundedT3Xl = style(.[
  borderTopLeftRadius(Theme.BorderRadius._3xl),
  borderTopRightRadius(Theme.BorderRadius._3xl),
])
let roundedR3Xl = style(.[
  borderBottomRightRadius(Theme.BorderRadius._3xl),
  borderTopRightRadius(Theme.BorderRadius._3xl),
])
let roundedB3Xl = style(.[
  borderBottomRightRadius(Theme.BorderRadius._3xl),
  borderBottomLeftRadius(Theme.BorderRadius._3xl),
])
let roundedL3Xl = style(.[
  borderTopLeftRadius(Theme.BorderRadius._3xl),
  borderBottomLeftRadius(Theme.BorderRadius._3xl),
])

let roundedTFull = style(.[
  borderTopLeftRadius(Theme.BorderRadius.full),
  borderTopRightRadius(Theme.BorderRadius.full),
])
let roundedRFull = style(.[
  borderBottomRightRadius(Theme.BorderRadius.full),
  borderTopRightRadius(Theme.BorderRadius.full),
])
let roundedBFull = style(.[
  borderBottomRightRadius(Theme.BorderRadius.full),
  borderBottomLeftRadius(Theme.BorderRadius.full),
])
let roundedLFull = style(.[
  borderTopLeftRadius(Theme.BorderRadius.full),
  borderBottomLeftRadius(Theme.BorderRadius.full),
])

let roundedTlNone = style(.[borderTopLeftRadius(Theme.BorderRadius.none)])
let roundedTrNone = style(.[borderTopRightRadius(Theme.BorderRadius.none)])
let roundedBrNone = style(.[borderBottomRightRadius(Theme.BorderRadius.none)])
let roundedBlNone = style(.[borderBottomLeftRadius(Theme.BorderRadius.none)])

let roundedTlSm = style(.[borderTopLeftRadius(Theme.BorderRadius.sm)])
let roundedTrSm = style(.[borderTopRightRadius(Theme.BorderRadius.sm)])
let roundedBrSm = style(.[borderBottomRightRadius(Theme.BorderRadius.sm)])
let roundedBlSm = style(.[borderBottomLeftRadius(Theme.BorderRadius.sm)])

let roundedTl = style(.[borderTopLeftRadius(Theme.BorderRadius.default)])
let roundedTr = style(.[borderTopRightRadius(Theme.BorderRadius.default)])
let roundedBr = style(.[borderBottomRightRadius(Theme.BorderRadius.default)])
let roundedBl = style(.[borderBottomLeftRadius(Theme.BorderRadius.default)])

let roundedTlMd = style(.[borderTopLeftRadius(Theme.BorderRadius.md)])
let roundedTrMd = style(.[borderTopRightRadius(Theme.BorderRadius.md)])
let roundedBrMd = style(.[borderBottomRightRadius(Theme.BorderRadius.md)])
let roundedBlMd = style(.[borderBottomLeftRadius(Theme.BorderRadius.md)])

let roundedTlLg = style(.[borderTopLeftRadius(Theme.BorderRadius.lg)])
let roundedTrLg = style(.[borderTopRightRadius(Theme.BorderRadius.lg)])
let roundedBrLg = style(.[borderBottomRightRadius(Theme.BorderRadius.lg)])
let roundedBlLg = style(.[borderBottomLeftRadius(Theme.BorderRadius.lg)])

let roundedTlXl = style(.[borderTopLeftRadius(Theme.BorderRadius.xl)])
let roundedTrXl = style(.[borderTopRightRadius(Theme.BorderRadius.xl)])
let roundedBrXl = style(.[borderBottomRightRadius(Theme.BorderRadius.xl)])
let roundedBlXl = style(.[borderBottomLeftRadius(Theme.BorderRadius.xl)])

let roundedTl2Xl = style(.[borderTopLeftRadius(Theme.BorderRadius._2xl)])
let roundedTr2Xl = style(.[borderTopRightRadius(Theme.BorderRadius._2xl)])
let roundedBr2Xl = style(.[borderBottomRightRadius(Theme.BorderRadius._2xl)])
let roundedBl2Xl = style(.[borderBottomLeftRadius(Theme.BorderRadius._2xl)])

let roundedTl3Xl = style(.[borderTopLeftRadius(Theme.BorderRadius._3xl)])
let roundedTr3Xl = style(.[borderTopRightRadius(Theme.BorderRadius._3xl)])
let roundedBr3Xl = style(.[borderBottomRightRadius(Theme.BorderRadius._3xl)])
let roundedBl3Xl = style(.[borderBottomLeftRadius(Theme.BorderRadius._3xl)])

let roundedTlFull = style(.[borderTopLeftRadius(Theme.BorderRadius.full)])
let roundedTrFull = style(.[borderTopRightRadius(Theme.BorderRadius.full)])
let roundedBrFull = style(.[borderBottomRightRadius(Theme.BorderRadius.full)])
let roundedBlFull = style(.[borderBottomLeftRadius(Theme.BorderRadius.full)])

// NOTE: Border Width - Utilities for controlling the width of an element's fborders
let border = style(.[borderWidth(Theme.BorderWidth.default)])
let border0 = style(.[borderWidth(Theme.BorderWidth._0)])
let border2 = style(.[borderWidth(Theme.BorderWidth._2)])
let border4 = style(.[borderWidth(Theme.BorderWidth._4)])
let border8 = style(.[borderWidth(Theme.BorderWidth._8)])

let borderT0 = style(.[borderTopWidth(Theme.BorderWidth._0)])
let borderR0 = style(.[borderRightWidth(Theme.BorderWidth._0)])
let borderB0 = style(.[borderBottomWidth(Theme.BorderWidth._0)])
let borderL0 = style(.[borderLeftWidth(Theme.BorderWidth._0)])

let borderT2 = style(.[borderTopWidth(Theme.BorderWidth._2)])
let borderR2 = style(.[borderRightWidth(Theme.BorderWidth._2)])
let borderB2 = style(.[borderBottomWidth(Theme.BorderWidth._2)])
let borderL2 = style(.[borderLeftWidth(Theme.BorderWidth._2)])

let borderT4 = style(.[borderTopWidth(Theme.BorderWidth._4)])
let borderR4 = style(.[borderRightWidth(Theme.BorderWidth._4)])
let borderB4 = style(.[borderBottomWidth(Theme.BorderWidth._4)])
let borderL4 = style(.[borderLeftWidth(Theme.BorderWidth._4)])

let borderT8 = style(.[borderTopWidth(Theme.BorderWidth._8)])
let borderR8 = style(.[borderRightWidth(Theme.BorderWidth._8)])
let borderB8 = style(.[borderBottomWidth(Theme.BorderWidth._8)])
let borderL8 = style(.[borderLeftWidth(Theme.BorderWidth._8)])

let borderT = style(.[borderTopWidth(Theme.BorderWidth.default)])
let borderR = style(.[borderRightWidth(Theme.BorderWidth.default)])
let borderB = style(.[borderBottomWidth(Theme.BorderWidth.default)])
let borderL = style(.[borderLeftWidth(Theme.BorderWidth.default)])

// NOTE: Border Style - Utilities for controlling the style of an element's borders.
let borderSolid = style(.[borderStyle(#solid)])
let borderDashed = style(.[borderStyle(#dashed)])
let borderDotted = style(.[borderStyle(#dotted)])
let borderDouble = style(.[borderStyle(#double)])
let borderNone = style(.[borderStyle(#none)])

// NOTE: Divide Width - Utilities for controlling the border width between elements.
// TODO: Figure out optimal way to deal width css variables

// NOTE: Divide Color - Utilities for controlling the border color between elements.
// TODO: Figure out optimal way to deal width css variables

// NOTE: Divide Opacity - Utilities for controlling the opacity borders between elements.

// NOTE: Divide Style - Utilities for controlling the border style between elements.
let divideSolid = style(.[borderStyle(#solid)])
let divideDashed = style(.[borderStyle(#dashed)])
let divideDotted = style(.[borderStyle(#dotted)])
let divideDouble = style(.[borderStyle(#double)])
let divideNone = style(.[borderStyle(#none)])

// NOTE: Ring Width - Utilities for creating outline rings with box-shadows.
// TODO: Figure out optimal way to deal width css variables

// NOTE: Ring Color - Utilities for setting the color of outline rings.
// TODO: Figure out optimal way to deal width css variables

// NOTE: Ring Opacity - Utilities for setting the opacity of outline rings.
// TODO: Figure out optimal way to deal width css variables

// NOTE: Ring Offset Width - Utilities for simulating an offset when adding outline rings.
// TODO: Figure out optimal way to deal width css variables

// NOTE: Ring Offset Color - Utilities for setting the color of outline ring offsets.
// TODO: Figure out optimal way to deal width css variables
