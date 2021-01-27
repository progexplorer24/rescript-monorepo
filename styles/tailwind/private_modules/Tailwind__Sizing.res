open CssJs
// NOTE: Width - Utilities for setting the width of an element

type spacing3 = Theme.Spacing.t
type proportions2 = Theme.Proportions.t
type spacingHeight = [spacing3 | proportions2 | #screen | #auto]
type spacingWidth = [spacingHeight | #minContent | #maxContent]

let w = (width: spacingWidth) =>
  switch width {
  | #minContent => [CssJs.unsafe("width", "min-content")]
  | #maxContent => [CssJs.unsafe("width", "max-content")]
  | #screen => [CssJs.width(#vw(100.))]
  | #auto => [CssJs.width(#auto)]
  | #...spacing3 as sp => [CssJs.width(Theme.Spacing.toValue(sp))]
  | #...proportions2 as prop => [CssJs.width(Theme.Proportions.toValue(prop))]
  }

// NOTE:  Min-Width - Utilities for setting the minimum width of an element
let minW0 = [minWidth(#px(0))]
let minWFull = [minWidth(#percent(100.))]
let minWMin = [CssJs.unsafe("min-width", "min-content")]
let minWMax = [CssJs.unsafe("min-width", "max-content")]

// NOTE: Max-Width - Utilities for setting the maximum width of an element
type widths = Theme.MaxWidth.t
type screens = Theme.Screens.t
type maxWidth = [widths | screens | #minContent | #maxContent]

let maxW = (max: maxWidth) =>
  switch max {
  | #minContent => [CssJs.unsafe("max-width", "min-content")]
  | #maxContent => [CssJs.unsafe("max-width", "max-content")]
  | #...widths as wd => [maxWidth(Theme.MaxWidth.toValue(wd))]
  | #...screens as sc => [maxWidth(Theme.Screens.toValue(sc))]
  }

// NOTE: Height - Utilities for setting the height of an element
let h = (height: spacingHeight) =>
  switch height {
  | #screen => [CssJs.height(#vw(100.))]
  | #auto => [CssJs.height(#auto)]
  | #...spacing3 as sp => [CssJs.height(Theme.Spacing.toValue(sp))]
  | #...proportions2 as prop => [CssJs.height(Theme.Proportions.toValue(prop))]
  }

// NOTE: Min-Height - Utilities for setting the minimum height of an element
let minH0 = [minHeight(#px(0))]
let minHFull = [minHeight(#percent(100.))]
let minHScreen = [minHeight(#vh(100.))]

// NOTE: Max-Height - Utilities for setting the maximum height of an element
let maxHScreen = [height(#vh(100.))]
let maxHPx = [height(Theme.Spacing.px)]
let maxHFull = [height(Theme.Spacing.full)]
let maxH0 = [height(Theme.Spacing._0)]
let maxH0_5 = [height(Theme.Spacing._0_5)]
let maxH1 = [height(Theme.Spacing._1)]
let maxH1_5 = [height(Theme.Spacing._1_5)]
let maxH2 = [height(Theme.Spacing._2)]
let maxH2_5 = [height(Theme.Spacing._2_5)]
let maxH3 = [height(Theme.Spacing._3)]
let maxH3_5 = [height(Theme.Spacing._3_5)]
let maxH4 = [height(Theme.Spacing._4)]
let maxH5 = [height(Theme.Spacing._5)]
let maxH6 = [height(Theme.Spacing._6)]
let maxH7 = [height(Theme.Spacing._7)]
let maxH8 = [height(Theme.Spacing._8)]
let maxH9 = [height(Theme.Spacing._9)]
let maxH10 = [height(Theme.Spacing._10)]
let maxH11 = [height(Theme.Spacing._11)]
let maxH12 = [height(Theme.Spacing._12)]
let maxH14 = [height(Theme.Spacing._14)]
let maxH16 = [height(Theme.Spacing._16)]
let maxH18 = [height(Theme.Spacing._18)]
let maxH20 = [height(Theme.Spacing._20)]
let maxH24 = [height(Theme.Spacing._24)]
let maxH28 = [height(Theme.Spacing._28)]
let maxH32 = [height(Theme.Spacing._32)]
let maxH36 = [height(Theme.Spacing._36)]
let maxH40 = [height(Theme.Spacing._40)]
let maxH44 = [height(Theme.Spacing._44)]
let maxH48 = [height(Theme.Spacing._48)]
let maxH52 = [height(Theme.Spacing._52)]
let maxH56 = [height(Theme.Spacing._56)]
let maxH60 = [height(Theme.Spacing._60)]
let maxH64 = [height(Theme.Spacing._64)]
let maxH68 = [height(Theme.Spacing._68)]
let maxH72 = [height(Theme.Spacing._72)]
let maxH76 = [height(Theme.Spacing._76)]
let maxH80 = [height(Theme.Spacing._80)]
let maxH84 = [height(Theme.Spacing._84)]
let maxH88 = [height(Theme.Spacing._88)]
let maxH92 = [height(Theme.Spacing._92)]
let maxH96 = [height(Theme.Spacing._96)]
let maxH100 = [height(Theme.Spacing._100)]
let maxH104 = [height(Theme.Spacing._104)]
let maxH108 = [height(Theme.Spacing._108)]
let maxH112 = [height(Theme.Spacing._112)]
let maxH116 = [height(Theme.Spacing._116)]
let maxH120 = [height(Theme.Spacing._120)]
let maxH124 = [height(Theme.Spacing._124)]
let maxH128 = [height(Theme.Spacing._128)]
let maxH132 = [height(Theme.Spacing._132)]
let maxH136 = [height(Theme.Spacing._136)]
let maxH140 = [height(Theme.Spacing._140)]
let maxH144 = [height(Theme.Spacing._144)]
let maxH148 = [height(Theme.Spacing._148)]
let maxH152 = [height(Theme.Spacing._152)]
let maxH156 = [height(Theme.Spacing._156)]
let maxH160 = [height(Theme.Spacing._160)]
let maxH164 = [height(Theme.Spacing._164)]
let maxH168 = [height(Theme.Spacing._168)]
let maxH172 = [height(Theme.Spacing._172)]
let maxH176 = [height(Theme.Spacing._176)]
let maxH180 = [height(Theme.Spacing._180)]
let maxH184 = [height(Theme.Spacing._184)]
let maxH188 = [height(Theme.Spacing._188)]
let maxH192 = [height(Theme.Spacing._192)]
let maxH196 = [height(Theme.Spacing._196)]
let maxH200 = [height(Theme.Spacing._200)]
