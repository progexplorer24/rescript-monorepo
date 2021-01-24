open CssJs

// NOTE: Flex Direction - Utilities for controlling the direction of flex items.
let flexRow = [flexDirection(#row)]
let flexRowReverse = [flexDirection(#rowReverse)]
let flexCol = [flexDirection(#column)]
let flexColReverse = [flexDirection(#columnReverse)]

// NOTE: Flex Wrap - Utilities for controlling how flex items wrap.
let flexWrap = [CssJs.flexWrap(#wrap)]
let flexWrapReverse = [CssJs.flexWrap(#wrapReverse)]
let flexNowrap = [CssJs.flexWrap(#nowrap)]

// NOTE: Flex - Utilities for controlling how flex items both grow and shrink.
let flex1 = [CssJs.flex3(~grow=1., ~shrink=1., ~basis=#percent(0.))]
let flexAuto = [CssJs.flex3(~grow=1., ~shrink=1., ~basis=#auto)]
let flexInitial = [CssJs.flex3(~grow=0., ~shrink=1., ~basis=#auto)]
let flexNone = [CssJs.flex(#none)]

// NOTE: Flex Grow - Utilities for controlling how flex items grow.
let flexGrow0 = [CssJs.flexGrow(1.)]
let flexGrow = [CssJs.flexGrow(0.)]

// NOTE: Flex Shrink - Utilities for controlling how flex items shrink.
let flexShrink0 = [CssJs.flexGrow(1.)]
let flexShrink = [CssJs.flexGrow(0.)]

// NOTE: Order - Utilities for controlling the order of flex items.
let order = (orderNu: Theme.Order.t) =>
  switch orderNu {
  | #none => [CssJs.order(Theme.Order.none)]
  | #first => [CssJs.order(Theme.Order.first)]
  | #last => [CssJs.order(Theme.Order.last)]
  | #v1 => [CssJs.order(Theme.Order._1)]
  | #v2 => [CssJs.order(Theme.Order._2)]
  | #v3 => [CssJs.order(Theme.Order._3)]
  | #v4 => [CssJs.order(Theme.Order._4)]
  | #v5 => [CssJs.order(Theme.Order._5)]
  | #v6 => [CssJs.order(Theme.Order._6)]
  | #v7 => [CssJs.order(Theme.Order._7)]
  | #v8 => [CssJs.order(Theme.Order._8)]
  | #v9 => [CssJs.order(Theme.Order._9)]
  | #v10 => [CssJs.order(Theme.Order._10)]
  | #v11 => [CssJs.order(Theme.Order._11)]
  | #v12 => [CssJs.order(Theme.Order._12)]
  }
