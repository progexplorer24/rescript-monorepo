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

// NOTE: Border Color - Utilities for controlling the color of an element's borders.
include Tailwind__BorderColor

// NOTE: Border Style - Utilities for controlling the style of an element's borders.
let borderSolid = style(.[borderStyle(#solid)])
let borderDashed = style(.[borderStyle(#dashed)])
let borderDotted = style(.[borderStyle(#dotted)])
let borderDouble = style(.[borderStyle(#double)])
let borderNone = style(.[borderStyle(#none)])

// NOTE: Divide Width - Utilities for controlling the border width between elements.
let divideY0 = style(.[
  selector(
    Selectors.ignoreFirstChild,
    [borderTopWidth(Theme.BorderWidth._0), borderBottomWidth(Theme.BorderWidth._0)],
  ),
])

let divideY = style(.[
  selector(
    Selectors.ignoreFirstChild,
    [borderTopWidth(Theme.BorderWidth.default), borderBottomWidth(Theme.BorderWidth._0)],
  ),
])
let divideY2 = style(.[
  selector(
    Selectors.ignoreFirstChild,
    [borderTopWidth(Theme.BorderWidth._2), borderBottomWidth(Theme.BorderWidth._0)],
  ),
])
let divideY4 = style(.[
  selector(
    Selectors.ignoreFirstChild,
    [borderTopWidth(Theme.BorderWidth._4), borderBottomWidth(Theme.BorderWidth._0)],
  ),
])
let divideY8 = style(.[
  selector(
    Selectors.ignoreFirstChild,
    [borderTopWidth(Theme.BorderWidth._8), borderBottomWidth(Theme.BorderWidth._0)],
  ),
])

let divideYReverse = style(.[
  selector(
    Selectors.ignoreFirstChild,
    [borderTopWidth(Theme.BorderWidth._0), borderBottomWidth(Theme.BorderWidth.default)],
  ),
])
let divideY2Reverse = style(.[
  selector(
    Selectors.ignoreFirstChild,
    [borderTopWidth(Theme.BorderWidth._0), borderBottomWidth(Theme.BorderWidth._2)],
  ),
])
let divideY4Reverse = style(.[
  selector(
    Selectors.ignoreFirstChild,
    [borderTopWidth(Theme.BorderWidth._0), borderBottomWidth(Theme.BorderWidth._4)],
  ),
])
let divideY8Reverse = style(.[
  selector(
    Selectors.ignoreFirstChild,
    [borderTopWidth(Theme.BorderWidth._0), borderBottomWidth(Theme.BorderWidth._8)],
  ),
])

let divideX0 = style(.[
  selector(
    Selectors.ignoreFirstChild,
    [borderLeftWidth(Theme.BorderWidth._0), borderRightWidth(Theme.BorderWidth._0)],
  ),
])

let divideX = style(.[
  selector(
    Selectors.ignoreFirstChild,
    [borderLeftWidth(Theme.BorderWidth.default), borderRightWidth(Theme.BorderWidth._0)],
  ),
])
let divideX2 = style(.[
  selector(
    Selectors.ignoreFirstChild,
    [borderLeftWidth(Theme.BorderWidth._2), borderRightWidth(Theme.BorderWidth._0)],
  ),
])
let divideX4 = style(.[
  selector(
    Selectors.ignoreFirstChild,
    [borderLeftWidth(Theme.BorderWidth._4), borderRightWidth(Theme.BorderWidth._0)],
  ),
])
let divideX8 = style(.[
  selector(
    Selectors.ignoreFirstChild,
    [borderLeftWidth(Theme.BorderWidth._8), borderRightWidth(Theme.BorderWidth._0)],
  ),
])

let divideXReverse = style(.[
  selector(
    Selectors.ignoreFirstChild,
    [borderLeftWidth(Theme.BorderWidth._0), borderRightWidth(Theme.BorderWidth.default)],
  ),
])
let divideX2Reverse = style(.[
  selector(
    Selectors.ignoreFirstChild,
    [borderLeftWidth(Theme.BorderWidth._0), borderRightWidth(Theme.BorderWidth._2)],
  ),
])
let divideX4Reverse = style(.[
  selector(
    Selectors.ignoreFirstChild,
    [borderLeftWidth(Theme.BorderWidth._0), borderRightWidth(Theme.BorderWidth._4)],
  ),
])
let divideX8Reverse = style(.[
  selector(
    Selectors.ignoreFirstChild,
    [borderLeftWidth(Theme.BorderWidth._0), borderRightWidth(Theme.BorderWidth._8)],
  ),
])

// NOTE: Divide Style - Utilities for controlling the border style between elements.
let divideSolid = style(.[borderStyle(#solid)])
let divideDashed = style(.[borderStyle(#dashed)])
let divideDotted = style(.[borderStyle(#dotted)])
let divideDouble = style(.[borderStyle(#double)])
let divideNone = style(.[borderStyle(#none)])

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

let ring0 = (
  ~inset=false,
  ~offsetWidth=0,
  ~offsetColor=Theme.Colors.white(1.),
  color: CssJs.Types.Color.t,
) => {
  style(.[
    boxShadows([
      ringOffsetShadow(~inset, ~offsetWidth, offsetColor),
      ringShadow(~inset, ~spread=0 + offsetWidth, color),
      whiteShadow,
    ]),
  ])
}

let ring = (
  ~inset=false,
  ~offsetWidth=0,
  ~offsetColor=Theme.Colors.white(1.),
  color: CssJs.Types.Color.t,
) => {
  style(.[
    boxShadows([
      ringOffsetShadow(~inset, ~offsetWidth, offsetColor),
      ringShadow(~inset, ~spread=3 + offsetWidth, color),
      whiteShadow,
    ]),
  ])
}

let ring1 = (
  ~inset=false,
  ~offsetWidth=0,
  ~offsetColor=Theme.Colors.white(1.),
  color: CssJs.Types.Color.t,
) => {
  style(.[
    boxShadows([
      ringOffsetShadow(~inset, ~offsetWidth, offsetColor),
      ringShadow(~inset, ~spread=1 + offsetWidth, color),
      whiteShadow,
    ]),
  ])
}

let ring2 = (
  ~inset=false,
  ~offsetWidth=0,
  ~offsetColor=Theme.Colors.white(1.),
  color: CssJs.Types.Color.t,
) => {
  style(.[
    boxShadows([
      ringOffsetShadow(~inset, ~offsetWidth, offsetColor),
      ringShadow(~inset, ~spread=2 + offsetWidth, color),
      whiteShadow,
    ]),
  ])
}

let ring4 = (
  ~inset=false,
  ~offsetWidth=0,
  ~offsetColor=Theme.Colors.white(1.),
  color: CssJs.Types.Color.t,
) => {
  style(.[
    boxShadows([
      ringOffsetShadow(~inset, ~offsetWidth, offsetColor),
      ringShadow(~inset, ~spread=4 + offsetWidth, color),
      whiteShadow,
    ]),
  ])
}

let ring8 = (
  ~inset=false,
  ~offsetWidth=0,
  ~offsetColor=Theme.Colors.white(1.),
  color: CssJs.Types.Color.t,
) => {
  style(.[
    boxShadows([
      ringOffsetShadow(~inset, ~offsetWidth, offsetColor),
      ringShadow(~inset, ~spread=8 + offsetWidth, color),
      whiteShadow,
    ]),
  ])
}
