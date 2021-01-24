open CssJs

// NOTE: Box Sizing - Utilities for controlling how the browser should calculate an element's total size.
let boxBorder = [boxSizing(#borderBox)]
let boxContent = [boxSizing(#contentBox)]

// NOTE: Display - Utilities for controlling the display box type of an element
// TODO: Test if unsafe utilities are working
let block = [display(#block)]
let inlineBlock = [display(#inlineBlock)]
let inline = [display(#inline)]
let flex = [display(#flex)]
let inlineFlex = [display(#inlineFlex)]
let table = [display(#table)]
let tableCaption = [display(#tableCaption)]
let tableCell = [display(#tableCell)]
let tableColumn = [display(#tableColumn)]
let tableColumnGroup = [display(#tableColumnGroup)]
let tableFooterGroup = [display(#tableFooterGroup)]
let tableHeaderGroup = [display(#tableHeaderGroup)]
let tableRowGroup = [display(#tableRowGroup)]
let tableRow = [display(#tableRow)]
let flowRoot = [CssJs.unsafe("display", "flow-root")]
let grid = [display(#grid)]
let inlineGrid = [display(#inlineGrid)]
let contents = [display(#contents)]
let hidden = [display(#none)]

// NOTE: Floats - Utilities for controlling the wrapping of content around an element.
let floatRight = [CssJs.float(#right)]
let floatLeft = [CssJs.float(#left)]
let floatNone = [CssJs.float(#none)]

// NOTE: Clear - Utilities for controlling the wrapping of content around an element.
let clearLeft = [clear(#left)]
let clearRight = [clear(#right)]
let clearBoth = [clear(#both)]
let clearNone = [clear(#none)]

// NOTE: Object Fit - Utilities for controlling how a replaced element's content should be resized.
let objectContain = [objectFit(#contain)]
let objectCover = [objectFit(#cover)]
let objectFill = [objectFit(#fill)]
let objectNone = [objectFit(#none)]
let objectScaleDown = [objectFit(#scaleDown)]

// NOTE: Object Position - Utilities for controlling how a replaced element's content should be positioned within its container.
// TODO: Check if #hv values render correctly
let objectBottom = [objectPosition(#bottom)]
let objectCenter = [objectPosition(#center)]
let objectLeft = [objectPosition(#left)]
let objectLeftBottom = [objectPosition(#hv(#left, #bottom))]
let objectLeftTop = [objectPosition(#hv(#left, #top))]
let objectRight = [objectPosition(#right)]
let objectRightBottom = [objectPosition(#hv(#right, #bottom))]
let objectRightTop = [objectPosition(#hv(#right, #top))]
let objectTop = [objectPosition(#top)]

// NOTE: Overflow - Utilities for controlling how an element handles content that is too large for the container.
let overflowAuto = [overflow(#auto)]
let overflowHidden = [overflow(#hidden)]
let overflowVisible = [overflow(#visible)]
let overflowScroll = [overflow(#scroll)]
let overflowXAuto = [overflowX(#auto)]
let overflowYAuto = [overflowY(#auto)]
let overflowXHidden = [overflowX(#hidden)]
let overflowYHidden = [overflowY(#hidden)]
let overflowXVisible = [overflowX(#visible)]
let overflowYVisible = [overflowY(#visible)]
let overflowXScroll = [overflowX(#scroll)]
let overflowYScroll = [overflowY(#scroll)]

// NOTE: Overscroll Behavior - Utilities for controlling how the browser behaves when reaching the boundary of a scrolling area.
// TODO: Test if unsafe utilities are working
let overscrollAuto = [CssJs.unsafe("overscroll-behavior", "auto")]
let overscrollContain = [CssJs.unsafe("overscroll-behavior", "contain")]
let overscrollNone = [CssJs.unsafe("overscroll-behavior", "none")]
let overscrollYAuto = [CssJs.unsafe("overscroll-behavior-y", "auto")]
let overscrollYContain = [CssJs.unsafe("overscroll-behavior-y", "contain")]
let overscrollYNone = [CssJs.unsafe("overscroll-behavior-y", "none")]
let overscrollXAuto = [CssJs.unsafe("overscroll-behavior-x", "auto")]
let overscrollXContain = [CssJs.unsafe("overscroll-behavior-x", "contain")]
let overscrollXNone = [CssJs.unsafe("overscroll-behavior-x", "none")]

// NOTE: Position - Utilities for controlling how an element is positioned in the DOM.
let static = [position(#static)]
let fixed = [position(#fixed)]
let absolute = [position(#absolute)]
let relative = [position(#relative)]
let sticky = [position(#sticky)]

// NOTE: Top / Right / Bottom / Left - Utilities for controlling the placement of positioned elements.
include Tailwind__Inset
include Tailwind__InsetNegative

// NOTE: Visibility - Utilities for controlling the visibility of an element.
let visible = [visibility(#visible)]
let invisible = [visibility(#hidden)]

// NOTE: Z-Index - Utilities for controlling the stack order of an element.
let z = (index: Theme.ZIndex.t) =>
  switch index {
  | #auto => [CssJs.unsafe("z-index", "auto")]
  | #z0 => [zIndex(Theme.ZIndex._0)]
  | #z10 => [zIndex(Theme.ZIndex._10)]
  | #z20 => [zIndex(Theme.ZIndex._20)]
  | #z30 => [zIndex(Theme.ZIndex._30)]
  | #z40 => [zIndex(Theme.ZIndex._40)]
  | #z50 => [zIndex(Theme.ZIndex._50)]
  | #z60 => [zIndex(Theme.ZIndex._60)]
  | #z70 => [zIndex(Theme.ZIndex._70)]
  | #z80 => [zIndex(Theme.ZIndex._80)]
  | #z90 => [zIndex(Theme.ZIndex._90)]
  | #z100 => [zIndex(Theme.ZIndex._100)]
  }
