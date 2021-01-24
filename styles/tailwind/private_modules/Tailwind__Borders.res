open CssJs

// NOTE: Border Radius - Utilities for controlling the border radius of an element.
let roundedNone = [borderRadius(Theme.BorderRadius.none)]
let roundedSm = [borderRadius(Theme.BorderRadius.sm)]
let rounded = [borderRadius(Theme.BorderRadius.default)]
let roundedMd = [borderRadius(Theme.BorderRadius.md)]
let roundedLg = [borderRadius(Theme.BorderRadius.lg)]
let roundedXl = [borderRadius(Theme.BorderRadius.xl)]
let rounded2Xl = [borderRadius(Theme.BorderRadius._2xl)]
let rounded3Xl = [borderRadius(Theme.BorderRadius._3xl)]
let roundedFull = [borderRadius(Theme.BorderRadius.full)]

let roundedTNone = [
  borderTopLeftRadius(Theme.BorderRadius.none),
  borderTopRightRadius(Theme.BorderRadius.none),
]
let roundedRNone = [
  borderTopRightRadius(Theme.BorderRadius.none),
  borderBottomRightRadius(Theme.BorderRadius.none),
]
let roundedBNone = [
  borderBottomRightRadius(Theme.BorderRadius.none),
  borderBottomLeftRadius(Theme.BorderRadius.none),
]
let roundedLNone = [
  borderTopLeftRadius(Theme.BorderRadius.none),
  borderBottomLeftRadius(Theme.BorderRadius.none),
]

let roundedTSm = [
  borderTopLeftRadius(Theme.BorderRadius.sm),
  borderTopRightRadius(Theme.BorderRadius.sm),
]
let roundedRSm = [
  borderBottomRightRadius(Theme.BorderRadius.sm),
  borderTopRightRadius(Theme.BorderRadius.sm),
]
let roundedBSm = [
  borderBottomRightRadius(Theme.BorderRadius.sm),
  borderBottomLeftRadius(Theme.BorderRadius.sm),
]
let roundedLSm = [
  borderTopLeftRadius(Theme.BorderRadius.sm),
  borderBottomLeftRadius(Theme.BorderRadius.sm),
]

let roundedT = [
  borderTopLeftRadius(Theme.BorderRadius.default),
  borderTopRightRadius(Theme.BorderRadius.default),
]
let roundedR = [
  borderBottomRightRadius(Theme.BorderRadius.default),
  borderTopRightRadius(Theme.BorderRadius.default),
]
let roundedB = [
  borderBottomRightRadius(Theme.BorderRadius.default),
  borderBottomLeftRadius(Theme.BorderRadius.default),
]
let roundedL = [
  borderTopLeftRadius(Theme.BorderRadius.default),
  borderBottomLeftRadius(Theme.BorderRadius.default),
]

let roundedTMd = [
  borderTopLeftRadius(Theme.BorderRadius.md),
  borderTopRightRadius(Theme.BorderRadius.md),
]
let roundedRMd = [
  borderBottomRightRadius(Theme.BorderRadius.md),
  borderTopRightRadius(Theme.BorderRadius.md),
]
let roundedBMd = [
  borderBottomRightRadius(Theme.BorderRadius.md),
  borderBottomLeftRadius(Theme.BorderRadius.md),
]
let roundedLMd = [
  borderTopLeftRadius(Theme.BorderRadius.md),
  borderBottomLeftRadius(Theme.BorderRadius.md),
]

let roundedTLg = [
  borderTopLeftRadius(Theme.BorderRadius.lg),
  borderTopRightRadius(Theme.BorderRadius.lg),
]
let roundedRLg = [
  borderBottomRightRadius(Theme.BorderRadius.lg),
  borderTopRightRadius(Theme.BorderRadius.lg),
]
let roundedBLg = [
  borderBottomRightRadius(Theme.BorderRadius.lg),
  borderBottomLeftRadius(Theme.BorderRadius.lg),
]
let roundedLLg = [
  borderTopLeftRadius(Theme.BorderRadius.lg),
  borderBottomLeftRadius(Theme.BorderRadius.lg),
]

let roundedTXl = [
  borderTopLeftRadius(Theme.BorderRadius.xl),
  borderTopRightRadius(Theme.BorderRadius.xl),
]
let roundedRXl = [
  borderBottomRightRadius(Theme.BorderRadius.xl),
  borderTopRightRadius(Theme.BorderRadius.xl),
]
let roundedBXl = [
  borderBottomRightRadius(Theme.BorderRadius.xl),
  borderBottomLeftRadius(Theme.BorderRadius.xl),
]
let roundedLXl = [
  borderTopLeftRadius(Theme.BorderRadius.xl),
  borderBottomLeftRadius(Theme.BorderRadius.xl),
]

let roundedT2Xl = [
  borderTopLeftRadius(Theme.BorderRadius._2xl),
  borderTopRightRadius(Theme.BorderRadius._2xl),
]
let roundedR2Xl = [
  borderBottomRightRadius(Theme.BorderRadius._2xl),
  borderTopRightRadius(Theme.BorderRadius._2xl),
]
let roundedB2Xl = [
  borderBottomRightRadius(Theme.BorderRadius._2xl),
  borderBottomLeftRadius(Theme.BorderRadius._2xl),
]
let roundedL2Xl = [
  borderTopLeftRadius(Theme.BorderRadius._2xl),
  borderBottomLeftRadius(Theme.BorderRadius._2xl),
]

let roundedT3Xl = [
  borderTopLeftRadius(Theme.BorderRadius._3xl),
  borderTopRightRadius(Theme.BorderRadius._3xl),
]
let roundedR3Xl = [
  borderBottomRightRadius(Theme.BorderRadius._3xl),
  borderTopRightRadius(Theme.BorderRadius._3xl),
]
let roundedB3Xl = [
  borderBottomRightRadius(Theme.BorderRadius._3xl),
  borderBottomLeftRadius(Theme.BorderRadius._3xl),
]
let roundedL3Xl = [
  borderTopLeftRadius(Theme.BorderRadius._3xl),
  borderBottomLeftRadius(Theme.BorderRadius._3xl),
]

let roundedTFull = [
  borderTopLeftRadius(Theme.BorderRadius.full),
  borderTopRightRadius(Theme.BorderRadius.full),
]
let roundedRFull = [
  borderBottomRightRadius(Theme.BorderRadius.full),
  borderTopRightRadius(Theme.BorderRadius.full),
]
let roundedBFull = [
  borderBottomRightRadius(Theme.BorderRadius.full),
  borderBottomLeftRadius(Theme.BorderRadius.full),
]
let roundedLFull = [
  borderTopLeftRadius(Theme.BorderRadius.full),
  borderBottomLeftRadius(Theme.BorderRadius.full),
]

let roundedTlNone = [borderTopLeftRadius(Theme.BorderRadius.none)]
let roundedTrNone = [borderTopRightRadius(Theme.BorderRadius.none)]
let roundedBrNone = [borderBottomRightRadius(Theme.BorderRadius.none)]
let roundedBlNone = [borderBottomLeftRadius(Theme.BorderRadius.none)]

let roundedTlSm = [borderTopLeftRadius(Theme.BorderRadius.sm)]
let roundedTrSm = [borderTopRightRadius(Theme.BorderRadius.sm)]
let roundedBrSm = [borderBottomRightRadius(Theme.BorderRadius.sm)]
let roundedBlSm = [borderBottomLeftRadius(Theme.BorderRadius.sm)]

let roundedTl = [borderTopLeftRadius(Theme.BorderRadius.default)]
let roundedTr = [borderTopRightRadius(Theme.BorderRadius.default)]
let roundedBr = [borderBottomRightRadius(Theme.BorderRadius.default)]
let roundedBl = [borderBottomLeftRadius(Theme.BorderRadius.default)]

let roundedTlMd = [borderTopLeftRadius(Theme.BorderRadius.md)]
let roundedTrMd = [borderTopRightRadius(Theme.BorderRadius.md)]
let roundedBrMd = [borderBottomRightRadius(Theme.BorderRadius.md)]
let roundedBlMd = [borderBottomLeftRadius(Theme.BorderRadius.md)]

let roundedTlLg = [borderTopLeftRadius(Theme.BorderRadius.lg)]
let roundedTrLg = [borderTopRightRadius(Theme.BorderRadius.lg)]
let roundedBrLg = [borderBottomRightRadius(Theme.BorderRadius.lg)]
let roundedBlLg = [borderBottomLeftRadius(Theme.BorderRadius.lg)]

let roundedTlXl = [borderTopLeftRadius(Theme.BorderRadius.xl)]
let roundedTrXl = [borderTopRightRadius(Theme.BorderRadius.xl)]
let roundedBrXl = [borderBottomRightRadius(Theme.BorderRadius.xl)]
let roundedBlXl = [borderBottomLeftRadius(Theme.BorderRadius.xl)]

let roundedTl2Xl = [borderTopLeftRadius(Theme.BorderRadius._2xl)]
let roundedTr2Xl = [borderTopRightRadius(Theme.BorderRadius._2xl)]
let roundedBr2Xl = [borderBottomRightRadius(Theme.BorderRadius._2xl)]
let roundedBl2Xl = [borderBottomLeftRadius(Theme.BorderRadius._2xl)]

let roundedTl3Xl = [borderTopLeftRadius(Theme.BorderRadius._3xl)]
let roundedTr3Xl = [borderTopRightRadius(Theme.BorderRadius._3xl)]
let roundedBr3Xl = [borderBottomRightRadius(Theme.BorderRadius._3xl)]
let roundedBl3Xl = [borderBottomLeftRadius(Theme.BorderRadius._3xl)]

let roundedTlFull = [borderTopLeftRadius(Theme.BorderRadius.full)]
let roundedTrFull = [borderTopRightRadius(Theme.BorderRadius.full)]
let roundedBrFull = [borderBottomRightRadius(Theme.BorderRadius.full)]
let roundedBlFull = [borderBottomLeftRadius(Theme.BorderRadius.full)]

// NOTE: Border Width - Utilities for controlling the width of an element's fborders
let border = [borderWidth(Theme.BorderWidth.default)]
let border0 = [borderWidth(Theme.BorderWidth._0)]
let border2 = [borderWidth(Theme.BorderWidth._2)]
let border4 = [borderWidth(Theme.BorderWidth._4)]
let border8 = [borderWidth(Theme.BorderWidth._8)]

let borderT0 = [borderTopWidth(Theme.BorderWidth._0)]
let borderR0 = [borderRightWidth(Theme.BorderWidth._0)]
let borderB0 = [borderBottomWidth(Theme.BorderWidth._0)]
let borderL0 = [borderLeftWidth(Theme.BorderWidth._0)]

let borderT2 = [borderTopWidth(Theme.BorderWidth._2)]
let borderR2 = [borderRightWidth(Theme.BorderWidth._2)]
let borderB2 = [borderBottomWidth(Theme.BorderWidth._2)]
let borderL2 = [borderLeftWidth(Theme.BorderWidth._2)]

let borderT4 = [borderTopWidth(Theme.BorderWidth._4)]
let borderR4 = [borderRightWidth(Theme.BorderWidth._4)]
let borderB4 = [borderBottomWidth(Theme.BorderWidth._4)]
let borderL4 = [borderLeftWidth(Theme.BorderWidth._4)]

let borderT8 = [borderTopWidth(Theme.BorderWidth._8)]
let borderR8 = [borderRightWidth(Theme.BorderWidth._8)]
let borderB8 = [borderBottomWidth(Theme.BorderWidth._8)]
let borderL8 = [borderLeftWidth(Theme.BorderWidth._8)]

let borderT = [borderTopWidth(Theme.BorderWidth.default)]
let borderR = [borderRightWidth(Theme.BorderWidth.default)]
let borderB = [borderBottomWidth(Theme.BorderWidth.default)]
let borderL = [borderLeftWidth(Theme.BorderWidth.default)]

// NOTE: Border Color - Utilities for controlling the color of an element's borders.
include Tailwind__BorderColor

// NOTE: Border Style - Utilities for controlling the style of an element's borders.
let borderSolid = [borderStyle(#solid)]
let borderDashed = [borderStyle(#dashed)]
let borderDotted = [borderStyle(#dotted)]
let borderDouble = [borderStyle(#double)]
let borderNone = [borderStyle(#none)]

// NOTE: Divide Width - Utilities for controlling the border width between elements.
let divideY0 = [
  selector(
    Selectors.ignoreFirstChild,
    [borderTopWidth(Theme.BorderWidth._0), borderBottomWidth(Theme.BorderWidth._0)],
  ),
]

let divideY = [
  selector(
    Selectors.ignoreFirstChild,
    [borderTopWidth(Theme.BorderWidth.default), borderBottomWidth(Theme.BorderWidth._0)],
  ),
]
let divideY2 = [
  selector(
    Selectors.ignoreFirstChild,
    [borderTopWidth(Theme.BorderWidth._2), borderBottomWidth(Theme.BorderWidth._0)],
  ),
]
let divideY4 = [
  selector(
    Selectors.ignoreFirstChild,
    [borderTopWidth(Theme.BorderWidth._4), borderBottomWidth(Theme.BorderWidth._0)],
  ),
]
let divideY8 = [
  selector(
    Selectors.ignoreFirstChild,
    [borderTopWidth(Theme.BorderWidth._8), borderBottomWidth(Theme.BorderWidth._0)],
  ),
]

let divideYReverse = [
  selector(
    Selectors.ignoreFirstChild,
    [borderTopWidth(Theme.BorderWidth._0), borderBottomWidth(Theme.BorderWidth.default)],
  ),
]
let divideY2Reverse = [
  selector(
    Selectors.ignoreFirstChild,
    [borderTopWidth(Theme.BorderWidth._0), borderBottomWidth(Theme.BorderWidth._2)],
  ),
]
let divideY4Reverse = [
  selector(
    Selectors.ignoreFirstChild,
    [borderTopWidth(Theme.BorderWidth._0), borderBottomWidth(Theme.BorderWidth._4)],
  ),
]
let divideY8Reverse = [
  selector(
    Selectors.ignoreFirstChild,
    [borderTopWidth(Theme.BorderWidth._0), borderBottomWidth(Theme.BorderWidth._8)],
  ),
]

let divideX0 = [
  selector(
    Selectors.ignoreFirstChild,
    [borderLeftWidth(Theme.BorderWidth._0), borderRightWidth(Theme.BorderWidth._0)],
  ),
]

let divideX = [
  selector(
    Selectors.ignoreFirstChild,
    [borderLeftWidth(Theme.BorderWidth.default), borderRightWidth(Theme.BorderWidth._0)],
  ),
]
let divideX2 = [
  selector(
    Selectors.ignoreFirstChild,
    [borderLeftWidth(Theme.BorderWidth._2), borderRightWidth(Theme.BorderWidth._0)],
  ),
]
let divideX4 = [
  selector(
    Selectors.ignoreFirstChild,
    [borderLeftWidth(Theme.BorderWidth._4), borderRightWidth(Theme.BorderWidth._0)],
  ),
]
let divideX8 = [
  selector(
    Selectors.ignoreFirstChild,
    [borderLeftWidth(Theme.BorderWidth._8), borderRightWidth(Theme.BorderWidth._0)],
  ),
]

let divideXReverse = [
  selector(
    Selectors.ignoreFirstChild,
    [borderLeftWidth(Theme.BorderWidth._0), borderRightWidth(Theme.BorderWidth.default)],
  ),
]
let divideX2Reverse = [
  selector(
    Selectors.ignoreFirstChild,
    [borderLeftWidth(Theme.BorderWidth._0), borderRightWidth(Theme.BorderWidth._2)],
  ),
]
let divideX4Reverse = [
  selector(
    Selectors.ignoreFirstChild,
    [borderLeftWidth(Theme.BorderWidth._0), borderRightWidth(Theme.BorderWidth._4)],
  ),
]
let divideX8Reverse = [
  selector(
    Selectors.ignoreFirstChild,
    [borderLeftWidth(Theme.BorderWidth._0), borderRightWidth(Theme.BorderWidth._8)],
  ),
]

// NOTE: Divide Style - Utilities for controlling the border style between elements.
let divideSolid = [borderStyle(#solid)]
let divideDashed = [borderStyle(#dashed)]
let divideDotted = [borderStyle(#dotted)]
let divideDouble = [borderStyle(#double)]
let divideNone = [borderStyle(#none)]

// NOTE: Ring Width - Utilities for creating outline rings with box-shadows.
// x y blur spread inset

let ringOffsetShadow = (~inset, ~offsetWidth, offsetColor) =>
  CssJs.Shadow.box(
    ~inset,
    ~x=#px(0),
    ~y=#px(0),
    ~blur=#px(0),
    ~spread=#px(offsetWidth),
    offsetColor,
  )

let ringShadow = (~inset, ~spread, color) =>
  CssJs.Shadow.box(~inset, ~x=#px(0), ~y=#px(0), ~blur=#px(0), ~spread=#px(spread), color)

let whiteShadow = CssJs.Shadow.box(~x=#px(0), ~y=#px(0), Theme.Colors.white(1.))

let ring = (
  ~inset=false,
  ~offsetWidth=0,
  ~offsetColor=Theme.Colors.white(1.),
  ~width=3,
  color: CssJs.Types.Color.t,
) => {
  [
    boxShadows([
      ringOffsetShadow(~inset, ~offsetWidth, offsetColor),
      ringShadow(~inset, ~spread=width + offsetWidth, color),
      whiteShadow,
    ]),
  ]
}
