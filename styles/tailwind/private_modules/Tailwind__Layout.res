open CssJs

// NOTE: Box Sizing - Utilities for controlling how the browser should calculate an element's total size.
let boxBorder = style(.[boxSizing(#borderBox)])
let boxContent = style(.[boxSizing(#contentBox)])

// NOTE: Display - Utilities for controlling the display box type of an element
// TODO: Test if unsafe utilities are working
let block = style(.[display(#block)])
let inlineBlock = style(.[display(#inlineBlock)])
let inline = style(.[display(#inline)])
let flex = style(.[display(#flex)])
let inlineFlex = style(.[display(#inlineFlex)])
let table = style(.[display(#table)])
let tableCaption = style(.[display(#tableCaption)])
let tableCell = style(.[display(#tableCell)])
let tableColumn = style(.[display(#tableColumn)])
let tableColumnGroup = style(.[display(#tableColumnGroup)])
let tableFooterGroup = style(.[display(#tableFooterGroup)])
let tableHeaderGroup = style(.[display(#tableHeaderGroup)])
let tableRowGroup = style(.[display(#tableRowGroup)])
let tableRow = style(.[display(#tableRow)])
let flowRoot = style(.[CssJs.unsafe("display", "flow-root")])
let grid = style(.[display(#grid)])
let inlineGrid = style(.[display(#inlineGrid)])
let contents = style(.[display(#contents)])
let hidden = style(.[display(#none)])

// NOTE: Floats - Utilities for controlling the wrapping of content around an element.
let floatRight = style(.[CssJs.float(#right)])
let floatLeft = style(.[CssJs.float(#left)])
let floatNone = style(.[CssJs.float(#none)])

// NOTE: Clear - Utilities for controlling the wrapping of content around an element.
let clearLeft = style(.[clear(#left)])
let clearRight = style(.[clear(#right)])
let clearBoth = style(.[clear(#both)])
let clearNone = style(.[clear(#none)])

// NOTE: Object Fit - Utilities for controlling how a replaced element's content should be resized.
let objectContain = style(.[objectFit(#contain)])
let objectCover = style(.[objectFit(#cover)])
let objectFill = style(.[objectFit(#fill)])
let objectNone = style(.[objectFit(#none)])
let objectScaleDown = style(.[objectFit(#scaleDown)])

// NOTE: Object Position - Utilities for controlling how a replaced element's content should be positioned within its container.
// TODO: Check if #hv values render correctly
let objectBottom = style(.[objectPosition(#bottom)])
let objectCenter = style(.[objectPosition(#center)])
let objectLeft = style(.[objectPosition(#left)])
let objectLeftBottom = style(.[objectPosition(#hv(#left, #bottom))])
let objectLeftTop = style(.[objectPosition(#hv(#left, #top))])
let objectRight = style(.[objectPosition(#right)])
let objectRightBottom = style(.[objectPosition(#hv(#right, #bottom))])
let objectRightTop = style(.[objectPosition(#hv(#right, #top))])
let objectTop = style(.[objectPosition(#top)])

// NOTE: Overflow - Utilities for controlling how an element handles content that is too large for the container.
let overflowAuto = style(.[overflow(#auto)])
let overflowHidden = style(.[overflow(#hidden)])
let overflowVisible = style(.[overflow(#visible)])
let overflowScroll = style(.[overflow(#scroll)])
let overflowXAuto = style(.[overflowX(#auto)])
let overflowYAuto = style(.[overflowY(#auto)])
let overflowXHidden = style(.[overflowX(#hidden)])
let overflowYHidden = style(.[overflowY(#hidden)])
let overflowXVisible = style(.[overflowX(#visible)])
let overflowYVisible = style(.[overflowY(#visible)])
let overflowXScroll = style(.[overflowX(#scroll)])
let overflowYScroll = style(.[overflowY(#scroll)])

// NOTE: Overscroll Behavior - Utilities for controlling how the browser behaves when reaching the boundary of a scrolling area.
// TODO: Test if unsafe utilities are working
let overscrollAuto = style(.[CssJs.unsafe("overscroll-behavior", "auto")])
let overscrollContain = style(.[CssJs.unsafe("overscroll-behavior", "contain")])
let overscrollNone = style(.[CssJs.unsafe("overscroll-behavior", "none")])
let overscrollYAuto = style(.[CssJs.unsafe("overscroll-behavior-y", "auto")])
let overscrollYContain = style(.[CssJs.unsafe("overscroll-behavior-y", "contain")])
let overscrollYNone = style(.[CssJs.unsafe("overscroll-behavior-y", "none")])
let overscrollXAuto = style(.[CssJs.unsafe("overscroll-behavior-x", "auto")])
let overscrollXContain = style(.[CssJs.unsafe("overscroll-behavior-x", "contain")])
let overscrollXNone = style(.[CssJs.unsafe("overscroll-behavior-x", "none")])

// NOTE: Position - Utilities for controlling how an element is positioned in the DOM.
let static = style(.[position(#static)])
let fixed = style(.[position(#fixed)])
let absolute = style(.[position(#absolute)])
let relative = style(.[position(#relative)])
let sticky = style(.[position(#sticky)])

// NOTE: Top / Right / Bottom / Left - Utilities for controlling the placement of positioned elements.
include Tailwind__Inset

// NOTE: Visibility - Utilities for controlling the visibility of an element.
let visible = style(.[visibility(#visible)])
let invisible = style(.[visibility(#hidden)])

// NOTE: Z-Index - Utilities for controlling the stack order of an element.
let z = (index: Theme.ZIndex.t) =>
  switch index {
  | #auto => style(.[CssJs.unsafe("z-index", "auto")])
  | #z0 => style(.[zIndex(Theme.ZIndex._0)])
  | #z10 => style(.[zIndex(Theme.ZIndex._10)])
  | #z20 => style(.[zIndex(Theme.ZIndex._20)])
  | #z30 => style(.[zIndex(Theme.ZIndex._30)])
  | #z40 => style(.[zIndex(Theme.ZIndex._40)])
  | #z50 => style(.[zIndex(Theme.ZIndex._50)])
  | #z60 => style(.[zIndex(Theme.ZIndex._60)])
  | #z70 => style(.[zIndex(Theme.ZIndex._70)])
  | #z80 => style(.[zIndex(Theme.ZIndex._80)])
  | #z90 => style(.[zIndex(Theme.ZIndex._90)])
  | #z100 => style(.[zIndex(Theme.ZIndex._100)])
  }
