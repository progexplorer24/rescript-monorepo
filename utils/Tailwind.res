open CssJs

// NOTE: Box Sizing Utilities
let boxBorder = style(.[boxSizing(#borderBox)])
let boxContent = style(.[boxSizing(#contentBox)])

// NOTE: Utilities for controlling the display box type of an element
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
// let flowRoot = style(.[display(#flowRoot)])   INFO: No flow-root property in bs-css
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
let objectBottom = style(.[objectPosition(#bottom)])
let objectCenter = style(.[objectPosition(#center)])
let objectLeft = style(.[objectPosition(#left)])
// let objectLeftBottom = style(.[])  INFO: Not available in bs-css
// let objectLeftTop = style(.[]) INFO: Not available in bs-css
let objectRight = style(.[objectPosition(#right)])
// let objectRightBottom = style(.[])  INFO: Not available in bs-css
// let objectRightTop = style(.[])  INFO: Not available in bs-css
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

// INFO: Couldn't find overscroll-behavior utilities

// NOTE: Position - Utilities for controlling how an element is positioned in the DOM.
let static = style(.[position(#static)])
let fixed = style(.[position(#fixed)])
let absolute = style(.[position(#absolute)])
let relative = style(.[position(#relative)])
let sticky = style(.[position(#sticky)])

// NOTE: Top / Right / Bottom / Left - Utilities for controlling the placement of positioned elements.

// INFO: There's plenty of utilites here - save it for later

// NOTE: Visibility - Utilities for controlling the visibility of an element.
let visible = style(.[visibility(#visible)])
let invisible = style(.[visibility(#hidden)])

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
let order1 = style(.[order(1)])
let order2 = style(.[order(2)])
let order3 = style(.[order(3)])
let order4 = style(.[order(4)])
let order5 = style(.[order(5)])
let order6 = style(.[order(6)])
let order7 = style(.[order(7)])
let order8 = style(.[order(8)])
let order9 = style(.[order(9)])
let order10 = style(.[order(10)])
let order11 = style(.[order(11)])
let order12 = style(.[order(12)])
let orderFirst = style(.[order(-9999)])
let orderLast = style(.[order(9999)])
let orderNone = style(.[order(0)])

let p0 = style(.[padding(#px(0))])
let p0_5 = style(.[padding(#px(0))])

let text5xl = style(.[fontSize(#rem(3.))])
let text6xl = style(.[fontSize(#rem(3.75))])
