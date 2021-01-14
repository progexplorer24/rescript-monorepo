open CssJs

// NOTE: Flex Direction - Utilities for controlling the direction of flex items.
let flexRow = style(.[flexDirection(#row)])
let flexRowReverse = style(.[flexDirection(#rowReverse)])
let flexCol = style(.[flexDirection(#column)])
let flexColReverse = style(.[flexDirection(#columnReverse)])

// NOTE: Flex Wrap - Utilities for controlling how flex items wrap.
let flexWrap = style(.[CssJs.flexWrap(#wrap)])
let flexWrapReverse = style(.[CssJs.flexWrap(#wrapReverse)])
let flexNowrap = style(.[CssJs.flexWrap(#nowrap)])

// NOTE: Flex - Utilities for controlling how flex items both grow and shrink.
let flex1 = style(.[CssJs.flex3(~grow=1., ~shrink=1., ~basis=#percent(0.))])
let flexAuto = style(.[CssJs.flex3(~grow=1., ~shrink=1., ~basis=#auto)])
let flexInitial = style(.[CssJs.flex3(~grow=0., ~shrink=1., ~basis=#auto)])
let flexNone = style(.[CssJs.flex(#none)])

// NOTE: Flex Grow - Utilities for controlling how flex items grow.
let flexGrow0 = style(.[CssJs.flexGrow(1.)])
let flexGrow = style(.[CssJs.flexGrow(0.)])

// NOTE: Flex Shrink - Utilities for controlling how flex items shrink.
let flexShrink0 = style(.[CssJs.flexGrow(1.)])
let flexShrink = style(.[CssJs.flexGrow(0.)])

// NOTE: Order - Utilities for controlling the order of flex items.
let order = (orderNu: Theme.Order.t) =>
  switch orderNu {
  | #none => style(.[CssJs.order(Theme.Order.none)])
  | #first => style(.[CssJs.order(Theme.Order.first)])
  | #last => style(.[CssJs.order(Theme.Order.last)])
  | #order1 => style(.[CssJs.order(Theme.Order._1)])
  | #order2 => style(.[CssJs.order(Theme.Order._2)])
  | #order3 => style(.[CssJs.order(Theme.Order._3)])
  | #order4 => style(.[CssJs.order(Theme.Order._4)])
  | #order5 => style(.[CssJs.order(Theme.Order._5)])
  | #order6 => style(.[CssJs.order(Theme.Order._6)])
  | #order7 => style(.[CssJs.order(Theme.Order._7)])
  | #order8 => style(.[CssJs.order(Theme.Order._8)])
  | #order9 => style(.[CssJs.order(Theme.Order._9)])
  | #order10 => style(.[CssJs.order(Theme.Order._10)])
  | #order11 => style(.[CssJs.order(Theme.Order._11)])
  | #order12 => style(.[CssJs.order(Theme.Order._12)])
  }
