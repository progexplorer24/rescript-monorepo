open CssJs

// INFO: TRANSITIONS AND ANIMATIONS
// NOTE: Transition Property - Utilities for controlling which CSS properties transition.

let transitionNone = [transitionProperty("none")]
let transitionAll = [
  transition(
    "all",
    ~duration=Theme.Duration.toValue(#v150),
    ~timingFunction=Theme.TimingFunction.toValue(#easeInOut),
  ),
]
let transition = [
  transition(
    "background-color, border-color, color, fill, stroke, opacity, box-shadow, transform",
    ~duration=Theme.Duration.toValue(#v150),
    ~timingFunction=Theme.TimingFunction.toValue(#easeInOut),
  ),
]
let transitionColors = [
  CssJs.transition(
    "background-color, border-color, color, fill, stroke, opacity, box-shadow, transform",
    ~duration=Theme.Duration.toValue(#v150),
    ~timingFunction=Theme.TimingFunction.toValue(#easeInOut),
  ),
]
let transitionOpacity = [
  CssJs.transition(
    "opacity",
    ~duration=Theme.Duration.toValue(#v150),
    ~timingFunction=Theme.TimingFunction.toValue(#easeInOut),
  ),
]
let transitionShadow = [
  CssJs.transition(
    "box-shadow",
    ~duration=Theme.Duration.toValue(#v150),
    ~timingFunction=Theme.TimingFunction.toValue(#easeInOut),
  ),
]

let transitionTransform = [
  CssJs.transition(
    "transform",
    ~duration=Theme.Duration.toValue(#v150),
    ~timingFunction=Theme.TimingFunction.toValue(#easeInOut),
  ),
]

// NOTE: Transition Duration - Utilities for controlling the duration of CSS transitions.
let duration = miliseconds => [transitionDuration(Theme.Duration.toValue(miliseconds))]

// NOTE: Transition Timing Function - Utilities for controlling the easing of CSS transitions.
let easeLinear = [transitionTimingFunction(Theme.TimingFunction.toValue(#linear))]
let easeIn = [transitionTimingFunction(Theme.TimingFunction.toValue(#easeIn))]
let easeOut = [transitionTimingFunction(Theme.TimingFunction.toValue(#easeOut))]
let easeInOut = [transitionTimingFunction(Theme.TimingFunction.toValue(#easeInOut))]

// NOTE: Transition Delay - Utilities for controlling the delay of CSS transitions.
let delay = miliseconds => [transitionDelay(Theme.Duration.toValue(miliseconds))]

// NOTE: Animation - Utilities for animating elements with CSS animations.
let animateNone = [animationValue(#value("none"))]
let animateSpin = [
  animation(
    Theme.KeyFrames.spin,
    ~duration=1000,
    ~delay=0,
    ~timingFunction=#linear,
    ~iterationCount=#infinite,
  ),
]

let animatePing = [
  animation(
    Theme.KeyFrames.ping,
    ~duration=1000,
    ~timingFunction=#cubicBezier(0., 0., 0.2, 1.),
    ~delay=0,
    ~iterationCount=#infinite,
  ),
]

let animatePulse = [
  animation(
    Theme.KeyFrames.pulse,
    ~duration=2000,
    ~timingFunction=#cubicBezier(0.4, 0., 0.6, 1.),
    ~delay=0,
    ~iterationCount=#infinite,
  ),
]

let animateBounce = [
  animation(Theme.KeyFrames.bounce, ~duration=1000, ~delay=0, ~iterationCount=#infinite),
]

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
let overscrollAuto = [CssJs.unsafe("overscrollBehavior", "auto")]
let overscrollContain = [CssJs.unsafe("overscrollBehavior", "contain")]
let overscrollNone = [CssJs.unsafe("overscrollBehavior", "none")]
let overscrollYAuto = [CssJs.unsafe("overscrollBehaviorY", "auto")]
let overscrollYContain = [CssJs.unsafe("overscrollBehaviorY", "contain")]
let overscrollYNone = [CssJs.unsafe("overscrollBehaviorY", "none")]
let overscrollXAuto = [CssJs.unsafe("overscrollBehaviorX", "auto")]
let overscrollXContain = [CssJs.unsafe("overscrollBehaviorX", "contain")]
let overscrollXNone = [CssJs.unsafe("overscrollBehaviorX", "none")]

// NOTE: Position - Utilities for controlling how an element is positioned in the DOM.
let static = [position(#static)]
let fixed = [position(#fixed)]
let absolute = [position(#absolute)]
let relative = [position(#relative)]
let sticky = [position(#sticky)]

// INFO: LAYOUT
// NOTE: Top / Right / Bottom / Left - Utilities for controlling the placement of positioned elements.
type spacing = Theme.Spacing.t
type proportions = Theme.Proportions.t
type inset = [spacing | proportions | #auto]

let inset = value =>
  switch value {
  | #auto => [top(#auto), right(#auto), bottom(#auto), left(#auto)]
  | #...spacing as v => [
      top(Theme.Spacing.toValue(v)),
      right(Theme.Spacing.toValue(v)),
      bottom(Theme.Spacing.toValue(v)),
      left(Theme.Spacing.toValue(v)),
    ]
  | #...proportions as prop => [
      top(Theme.Proportions.toValue(prop)),
      right(Theme.Proportions.toValue(prop)),
      bottom(Theme.Proportions.toValue(prop)),
      left(Theme.Proportions.toValue(prop)),
    ]
  }

let insetX = value =>
  switch value {
  | #auto => [right(#auto), left(#auto)]
  | #...spacing as v => [right(Theme.Spacing.toValue(v)), left(Theme.Spacing.toValue(v))]
  | #...proportions as prop => [
      right(Theme.Proportions.toValue(prop)),
      left(Theme.Proportions.toValue(prop)),
    ]
  }

let insetY = value =>
  switch value {
  | #auto => [top(#auto), bottom(#auto)]
  | #...spacing as v => [top(Theme.Spacing.toValue(v)), bottom(Theme.Spacing.toValue(v))]
  | #...proportions as prop => [
      top(Theme.Proportions.toValue(prop)),
      bottom(Theme.Proportions.toValue(prop)),
    ]
  }

let top = value =>
  switch value {
  | #auto => [top(#auto)]
  | #...spacing as v => [top(Theme.Spacing.toValue(v))]
  | #...proportions as prop => [top(Theme.Proportions.toValue(prop))]
  }

let bottom = value =>
  switch value {
  | #auto => [bottom(#auto)]
  | #...spacing as v => [bottom(Theme.Spacing.toValue(v))]
  | #...proportions as prop => [bottom(Theme.Proportions.toValue(prop))]
  }

let left = value =>
  switch value {
  | #auto => [left(#auto)]
  | #...spacing as v => [left(Theme.Spacing.toValue(v))]
  | #...proportions as prop => [left(Theme.Proportions.toValue(prop))]
  }

let right = value =>
  switch value {
  | #auto => [right(#auto)]
  | #...spacing as v => [right(Theme.Spacing.toValue(v))]
  | #...proportions as prop => [right(Theme.Proportions.toValue(prop))]
  }

type negativeSpace = Theme.SpacingNegative.t
type negativeProportions = Theme.ProportionsNegative.t
type negativeSpacing = [negativeSpace | negativeProportions]

let nInset = (value: negativeSpacing) =>
  switch value {
  | #...negativeSpace as sp => [
      CssJs.top(Theme.SpacingNegative.toValue(sp)),
      CssJs.right(Theme.SpacingNegative.toValue(sp)),
      CssJs.bottom(Theme.SpacingNegative.toValue(sp)),
      CssJs.left(Theme.SpacingNegative.toValue(sp)),
    ]
  | #...negativeProportions as prop => [
      CssJs.top(Theme.ProportionsNegative.toValue(prop)),
      CssJs.right(Theme.ProportionsNegative.toValue(prop)),
      CssJs.bottom(Theme.ProportionsNegative.toValue(prop)),
      CssJs.left(Theme.ProportionsNegative.toValue(prop)),
    ]
  }

let nInsetX = (value: negativeSpacing) =>
  switch value {
  | #...negativeSpace as sp => [
      CssJs.right(Theme.SpacingNegative.toValue(sp)),
      CssJs.left(Theme.SpacingNegative.toValue(sp)),
    ]
  | #...negativeProportions as prop => [
      CssJs.right(Theme.ProportionsNegative.toValue(prop)),
      CssJs.left(Theme.ProportionsNegative.toValue(prop)),
    ]
  }

let nInsetY = (value: negativeSpacing) =>
  switch value {
  | #...negativeSpace as sp => [
      CssJs.top(Theme.SpacingNegative.toValue(sp)),
      CssJs.bottom(Theme.SpacingNegative.toValue(sp)),
    ]
  | #...negativeProportions as prop => [
      CssJs.top(Theme.ProportionsNegative.toValue(prop)),
      CssJs.bottom(Theme.ProportionsNegative.toValue(prop)),
    ]
  }

let nTop = (value: negativeSpacing) =>
  switch value {
  | #...negativeSpace as sp => [CssJs.top(Theme.SpacingNegative.toValue(sp))]
  | #...negativeProportions as prop => [CssJs.top(Theme.ProportionsNegative.toValue(prop))]
  }

let nBottom = (value: negativeSpacing) =>
  switch value {
  | #...negativeSpace as sp => [CssJs.bottom(Theme.SpacingNegative.toValue(sp))]
  | #...negativeProportions as prop => [CssJs.bottom(Theme.ProportionsNegative.toValue(prop))]
  }

let nLeft = (value: negativeSpacing) =>
  switch value {
  | #...negativeSpace as sp => [CssJs.left(Theme.SpacingNegative.toValue(sp))]
  | #...negativeProportions as prop => [CssJs.left(Theme.ProportionsNegative.toValue(prop))]
  }

let nRight = (value: negativeSpacing) =>
  switch value {
  | #...negativeSpace as sp => [CssJs.right(Theme.SpacingNegative.toValue(sp))]
  | #...negativeProportions as prop => [CssJs.right(Theme.ProportionsNegative.toValue(prop))]
  }

// NOTE: Visibility - Utilities for controlling the visibility of an element.
let visible = [visibility(#visible)]
let invisible = [visibility(#hidden)]

// NOTE: Z-Index - Utilities for controlling the stack order of an element.
type zIndex = Theme.ZIndex.t
type index = [zIndex | #auto]
let z = (index: index) =>
  switch index {
  | #auto => [CssJs.unsafe("zIndex", "auto")]
  | #...zIndex as z => [zIndex(Theme.ZIndex.toValue(z))]
  }

// INFO: FLEXBOX
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
type order = Theme.Order.t
let order = order => [CssJs.order(Theme.Order.toValue(order))]

// NOTE: Grid Template Columns - Utilities for specifying the columns in a grid layout.
type gCols = Theme.GridCols.t
type gridColumnType = [#none | gCols]

let gridCols = columns =>
  switch columns {
  | #none => [CssJs.unsafe("gridTemplateColumns", "none")]
  | #...gCols as cols => [gridTemplateColumns(Theme.GridCols.toValue(cols))]
  }

// NOTE: Grid Column Start / End - Utilities for controlling how elements are sized and placed across grid columns.
type spanType = Theme.ColSpan.t
type colStartEnd = Theme.ColStart.t
type colStartEndType = [#auto | colStartEnd]

let col = column => [CssJs.unsafe("gridColumn", Theme.ColSpan.toValue(column))]
let colStart = (cols: colStartEndType) =>
  switch cols {
  | #auto => [CssJs.unsafe("gridColumnStart", "auto")]
  | #...colStartEnd as cs => [gridColumnStart(Theme.ColStart.toValue(cs))]
  }
let colEnd = (cols: colStartEndType) =>
  switch cols {
  | #auto => [CssJs.unsafe("gridColumnEnd", "auto")]
  | #...colStartEnd as cs => [gridColumnEnd(Theme.ColStart.toValue(cs))]
  }

// NOTE: Grid Template Rows - Utilities for specifying the rows in a grid layout.
type gRows = Theme.GridRows.t
type gridRowsType = [#none | gRows]

let gridRows = (rows: gridRowsType) =>
  switch rows {
  | #none => [CssJs.unsafe("gridTemplateRows", "none")]
  | #...gRows as r => [gridTemplateRows(Theme.GridRows.toValue(r))]
  }

// NOTE: Grid Row Start / End - Utilities for controlling how elements are sized and placed across grid rows.
type rowSpan = Theme.RowSpan.t
type rowSpanType = [rowSpan | #auto | #full]
let row = count =>
  switch count {
  | #auto => [CssJs.unsafe("gridRow", "auto")]
  | #full => [gridRow(1, -1)]
  | #...rowSpan as rs => [CssJs.unsafe("gridRow", Theme.RowSpan.toValue(rs))]
  }

type rowS = Theme.Row.t
type rowStartEnd = [rowS | #auto]

let rowStart = (rows: rowStartEnd) =>
  switch rows {
  | #auto => [CssJs.unsafe("gridRowStart", "auto")]
  | #...rowS as r => [gridRowStart(Theme.Row.toValue(r))]
  }

let rowEnd = (rows: rowStartEnd) =>
  switch rows {
  | #auto => [CssJs.unsafe("gridRowEnd", "auto")]
  | #...rowS as r => [gridRowEnd(Theme.Row.toValue(r))]
  }

// NOTE: Grid Auto Flow - Utilities for controlling how elements in a grid are auto-placed.
let gridFlowRow = [gridAutoFlow(#row)]
let gridFlowCol = [gridAutoFlow(#column)]
let gridFlowRowDense = [gridAutoFlow(#rowDense)]
let gridFlowColDense = [gridAutoFlow(#columnDense)]

// NOTE: Grid Auto Columns - Utilities for controlling the size of implicitly-created grid columns.
let autoColsAuto = [gridAutoColumns(#auto)]
let autoColsMin = [gridAutoColumns(#minContent)]
let autoColsMax = [gridAutoColumns(#maxContent)]
let autoColsFr = [gridAutoColumns(#minmax(#zero, #fr(1.)))]

// NOTE: Grid Auto Rows - Utilities for controlling the size of implicitly-created grid rows.
let autoRowsAuto = [gridAutoRows(#auto)]
let autoRowsMin = [gridAutoRows(#minContent)]
let autoRowsMax = [gridAutoRows(#maxContent)]
let autoRowsFr = [gridAutoRows(#minmax(#zero, #fr(1.)))]

// NOTE: Gap - Utilities for controlling gutters between grid rows and columns.

let gap = value => [CssJs.gridGap(Theme.Spacing.toValue(value))]
let gapX = value => [CssJs.gridColumnGap(Theme.Spacing.toValue(value))]
let gapY = value => [CssJs.gridRowGap(Theme.Spacing.toValue(value))]

// INFO: BOX ALIGNMENT
// NOTE: Justify Content - Utilities for controlling how flex and grid items are positioned along a container's main axis.
let justifyStart = [justifyContent(#flexStart)]
let justifyEnd = [justifyContent(#flexEnd)]
let justifyCenter = [justifyContent(#center)]
let justifyBetween = [justifyContent(#spaceBetween)]
let justifyAround = [justifyContent(#spaceAround)]
let justifyEvenly = [justifyContent(#spaceEvenly)]

// NOTE: Justify Items - Utilities for controlling how grid items are aligned along their inline axis.
let justifyItemsAuto = [CssJs.unsafe("justifyItems", "auto")]
let justifyItemsStart = [justifyItems(#start)]
let justifyItemsEnd = [justifyItems(#end_)]
let justifyItemsCenter = [justifyItems(#center)]
let justifyItemsStretch = [CssJs.unsafe("justifyItems", "stretch")]

// NOTE: Justify Self - Utilities for controlling how an individual grid item is aligned along its inline axis.
let justifySelfAuto = [justifySelf(#auto)]
let justifySelfStart = [justifySelf(#start)]
let justifySelfEnd = [justifySelf(#end_)]
let justifySelfCenter = [justifySelf(#center)]
let justifySelfStretch = [justifySelf(#stretch)]

// NOTE: Align Content - Utilities for controlling how rows are positioned in multi-row flex and grid containers.
let contentCenter = [alignContent(#center)]
let contentStart = [alignContent(#flexStart)]
let contentEnd = [alignContent(#flexEnd)]
let contentBetween = [alignContent(#spaceBetween)]
let contentAround = [alignContent(#spaceAround)]
let contentEvenly = [alignContent(#spaceEvenly)]

// NOTE: Align Items - Utilities for controlling how flex and grid items are positioned along a container's cross axis.
let itemsStart = [alignItems(#flexStart)]
let itemsEnd = [alignItems(#flexEnd)]
let itemsCenter = [alignItems(#center)]
let itemsBaseline = [alignItems(#baseline)]
let itemsStretch = [alignItems(#stretch)]

// NOTE: Align Self - Utilities for controlling how an individual flex or grid item is positioned along its container's cross axis.
let selfAuto = [alignSelf(#auto)]
let selfStart = [alignSelf(#flexStart)]
let selfEnd = [alignSelf(#flexEnd)]
let selfCenter = [alignSelf(#center)]
let selfStretch = [alignSelf(#stretch)]

// NOTE: Place Content - Utilities for controlling how content is justified and aligned at the same time.
// TODO: Test if unsafe utilities are working
let placeContentCenter = [CssJs.unsafe("placeContent", "center")]
let placeContentStart = [CssJs.unsafe("placeContent", "start")]
let placeContentBetween = [CssJs.unsafe("placeContent", "end")]
let placeContentEnd = [CssJs.unsafe("placeContent", "space-between")]
let placeContentAround = [CssJs.unsafe("placeContent", "space-around")]
let placeContentEvenly = [CssJs.unsafe("placeContent", "space-evenly")]
let placeContentStretch = [CssJs.unsafe("placeContent", "stretch")]

// NOTE: Place Items - Utilities for controlling how items are justified and aligned at the same time.
// TODO: Test if unsafe utilities are working
let placeItemsAuto = [CssJs.unsafe("placeItems", "auto")]
let placeItemsStart = [CssJs.unsafe("placeItems", "start")]
let placeItemsEnd = [CssJs.unsafe("placeItems", "end")]
let placeItemsCenter = [CssJs.unsafe("placeItems", "center")]
let placeItemsStretch = [CssJs.unsafe("placeItems", "stretch")]

// NOTE: Place Self - Utilities for controlling how an individual item is justified and aligned at the same time.
// TODO: Test if unsafe utilities are working
let placeSelfAuto = [CssJs.unsafe("placeSelf", "auto")]
let placeSelfStart = [CssJs.unsafe("placeSelf", "start")]
let placeSelfEnd = [CssJs.unsafe("placeSelf", "end")]
let placeSelfCenter = [CssJs.unsafe("placeSelf", "center")]
let placeSelfStretch = [CssJs.unsafe("placeSelf", "stretch")]

// INFO: SPACING
// NOTE: Padding - Utilities for controlling an element's padding.

let p = (size: spacing) => [padding(Theme.Spacing.toValue(size))]
let py = (size: spacing) => [
  paddingTop(Theme.Spacing.toValue(size)),
  paddingBottom(Theme.Spacing.toValue(size)),
]
let px = (size: spacing) => [
  paddingLeft(Theme.Spacing.toValue(size)),
  paddingRight(Theme.Spacing.toValue(size)),
]

let pt = (size: spacing) => [paddingTop(Theme.Spacing.toValue(size))]
let pr = (size: spacing) => [paddingRight(Theme.Spacing.toValue(size))]
let pb = (size: spacing) => [paddingBottom(Theme.Spacing.toValue(size))]
let pl = (size: spacing) => [paddingLeft(Theme.Spacing.toValue(size))]

// NOTE: Margin - Utilities for controlling an element's margin.
type mx = [spacing | #auto]
type negativeMargin = Theme.SpacingNegative.t

let m = (size: spacing) => [margin(Theme.Spacing.toValue(size))]
let my = (size: spacing) => [
  marginTop(Theme.Spacing.toValue(size)),
  marginBottom(Theme.Spacing.toValue(size)),
]

let mx = (size: mx) =>
  switch size {
  | #auto => [marginLeft(#auto), marginRight(#auto)]
  | #...spacing as sp => [
      marginLeft(Theme.Spacing.toValue(sp)),
      marginRight(Theme.Spacing.toValue(sp)),
    ]
  }
let mt = (size: spacing) => [marginTop(Theme.Spacing.toValue(size))]
let mb = (size: spacing) => [marginBottom(Theme.Spacing.toValue(size))]
let mr = (size: spacing) => [marginRight(Theme.Spacing.toValue(size))]
let ml = (size: spacing) => [marginLeft(Theme.Spacing.toValue(size))]

let nm = (size: negativeMargin) => [margin(Theme.SpacingNegative.toValue(size))]
let nmy = (size: negativeMargin) => [
  marginTop(Theme.SpacingNegative.toValue(size)),
  marginBottom(Theme.SpacingNegative.toValue(size)),
]

let nmx = (size: negativeMargin) => [
  marginLeft(Theme.SpacingNegative.toValue(size)),
  marginRight(Theme.SpacingNegative.toValue(size)),
]

let nmt = (size: negativeMargin) => [marginTop(Theme.SpacingNegative.toValue(size))]
let nmb = (size: negativeMargin) => [marginBottom(Theme.SpacingNegative.toValue(size))]
let nmr = (size: negativeMargin) => [marginRight(Theme.SpacingNegative.toValue(size))]
let nml = (size: negativeMargin) => [marginLeft(Theme.SpacingNegative.toValue(size))]

// NOTE: Space Between - Utilities for controlling the space between child elements.

let spaceY = (size: spacing) => [
  selector(
    Selectors.ignoreFirstChild,
    [marginTop(Theme.Spacing.toValue(size)), marginBottom(Theme.Spacing.toValue(#v0))],
  ),
]

let nspaceY = (size: negativeMargin) => [
  selector(
    Selectors.ignoreFirstChild,
    [marginTop(Theme.SpacingNegative.toValue(size)), marginBottom(Theme.Spacing.toValue(#v0))],
  ),
]

let spaceX = (size: spacing) => [
  selector(
    Selectors.ignoreFirstChild,
    [marginLeft(Theme.Spacing.toValue(size)), marginRight(Theme.Spacing.toValue(#v0))],
  ),
]

let nspaceX = (size: negativeMargin) => [
  selector(
    Selectors.ignoreFirstChild,
    [marginLeft(Theme.SpacingNegative.toValue(size)), marginRight(Theme.Spacing.toValue(#v0))],
  ),
]

// INFO: SIZING
// NOTE: Width - Utilities for setting the width of an element

type spacingHeight = [spacing | proportions | #screen | #auto]
type spacingWidth = [spacingHeight | #minContent | #maxContent]

let w = (width: spacingWidth) =>
  switch width {
  | #minContent => [CssJs.unsafe("width", "min-content")]
  | #maxContent => [CssJs.unsafe("width", "max-content")]
  | #screen => [CssJs.width(#vw(100.))]
  | #auto => [CssJs.width(#auto)]
  | #...spacing as sp => [CssJs.width(Theme.Spacing.toValue(sp))]
  | #...proportions as prop => [CssJs.width(Theme.Proportions.toValue(prop))]
  }

// NOTE:  Min-Width - Utilities for setting the minimum width of an element
let minW0 = [minWidth(#px(0))]
let minWFull = [minWidth(#percent(100.))]
let minWMin = [CssJs.unsafe("minWidth", "min-content")]
let minWMax = [CssJs.unsafe("minWidth", "max-content")]

// NOTE: Max-Width - Utilities for setting the maximum width of an element
type widths = Theme.MaxWidth.t
type screens = Theme.Screens.t
type maxWidth = [widths | screens | #minContent | #maxContent]

let maxW = (max: maxWidth) =>
  switch max {
  | #minContent => [CssJs.unsafe("maxWidth", "min-content")]
  | #maxContent => [CssJs.unsafe("maxWidth", "max-content")]
  | #...widths as wd => [maxWidth(Theme.MaxWidth.toValue(wd))]
  | #...screens as sc => [maxWidth(Theme.Screens.toValue(sc))]
  }

// NOTE: Height - Utilities for setting the height of an element
let h = (height: spacingHeight) =>
  switch height {
  | #screen => [CssJs.height(#vw(100.))]
  | #auto => [CssJs.height(#auto)]
  | #...spacing as sp => [CssJs.height(Theme.Spacing.toValue(sp))]
  | #...proportions as prop => [CssJs.height(Theme.Proportions.toValue(prop))]
  }

// NOTE: Min-Height - Utilities for setting the minimum height of an element
let minH0 = [minHeight(#px(0))]
let minHFull = [minHeight(#percent(100.))]
let minHScreen = [minHeight(#vh(100.))]

// NOTE: Max-Height - Utilities for setting the maximum height of an element
type maxHeightType = [spacing | #screen]
let maxH = height =>
  switch height {
  | #screen => [CssJs.height(#vh(100.))]
  | #...spacing as h => [CssJs.height(Theme.Spacing.toValue(h))]
  }

// INFO: TYPOGRAPHY
// NOTE: Font Family - Utilities for controlling the font family of an element.
let fontSans = [
  fontFamilies([
    #custom("ui-sans-serif"),
    #custom("system-ui"),
    #custom("-apple-system"),
    #custom("BlinkMacSystemFont"),
    #custom("Segoe UI"),
    #custom("Roboto"),
    #custom("Helvetica Neue"),
    #custom("Arial"),
    #custom("Noto Sans"),
    #sansSerif,
    #custom("Apple Color Emoji"),
    #custom("Segoe UI Emoji"),
    #custom("Segoe UI Symbol"),
    #custom("Noto Color Emoji"),
  ]),
]

let fontSerif = [
  fontFamilies([
    #custom("ui-serif"),
    #custom("Georgia"),
    #custom("Cambria"),
    #custom("Times New Roman"),
    #custom("Times"),
    #serif,
  ]),
]

let fontMono = [
  fontFamilies([
    #custom("ui-monospace"),
    #custom("SFMono-Regular"),
    #custom("Menlo"),
    #custom("Monaco"),
    #custom("Consolas"),
    #custom("Liberation Mono"),
    #custom("Courier New"),
    #monospace,
  ]),
]

// NOTE: Font Size - Utilities for controlling the font size of an element.
type fontSize = Theme.FontSize.t
let text = size =>
  switch size {
  | #xs => [fontSize(Theme.FontSize.toValue(size)), lineHeight(Theme.LineHeight.toValue(#v5))]
  | #sm => [fontSize(Theme.FontSize.toValue(size)), lineHeight(Theme.LineHeight.toValue(#v5))]
  | #base => [fontSize(Theme.FontSize.toValue(size)), lineHeight(Theme.LineHeight.toValue(#v6))]
  | #lg => [fontSize(Theme.FontSize.toValue(size)), lineHeight(Theme.LineHeight.toValue(#v7))]
  | #xl => [fontSize(Theme.FontSize.toValue(size)), lineHeight(Theme.LineHeight.toValue(#v7))]
  | #xl2 => [fontSize(Theme.FontSize.toValue(size)), lineHeight(Theme.LineHeight.toValue(#v8))]
  | #xl3 => [fontSize(Theme.FontSize.toValue(size)), lineHeight(Theme.LineHeight.toValue(#v9))]
  | #xl4 => [fontSize(Theme.FontSize.toValue(size)), lineHeight(Theme.LineHeight.toValue(#v10))]
  | #xl5 | #xl6 | #xl7 | #xl8 | #xl9 => [
      fontSize(Theme.FontSize.toValue(size)),
      lineHeight(Theme.LineHeight.toValue(#none)),
    ]
  }

// NOTE: Font Style - Utilities for controlling the style of text.
let italic = [fontStyle(#italic)]
let noItalic = [fontStyle(#normal)]

// NOTE: Font Weight - Utilities for controlling the font weight of an element.
let fontWeight = weight => [CssJs.fontWeight(Theme.FontWeight.toValue(weight))]

// NOTE: Font Variant Numeric - Utilities for controlling the variant of numbers.
let normalNums = [CssJs.unsafe("fontVariantNumeric", "normal")]
let ordinal = [CssJs.unsafe("fontVariantNumeric", "ordinal")]
let slashedZero = [CssJs.unsafe("fontVariantNumeric", "slashed-zero")]
let liningNums = [CssJs.unsafe("fontVariantNumeric", "lining-nums")]
let oldstyleNums = [CssJs.unsafe("fontVariantNumeric", "oldstyle-nums")]
let proportionalNums = [CssJs.unsafe("fontVariantNumeric", "proportional-nums")]
let tabularNums = [CssJs.unsafe("fontVariantNumeric", "tabular-nums")]
let diagonalFractions = [CssJs.unsafe("fontVariantNumeric", "diagonal-fractions")]
let stackedFractions = [CssJs.unsafe("fontVariantNumeric", "stacked-fractions")]

// NOTE: Letter Spacing - Utilities for controlling the tracking (letter spacing) of an element.
let tracking = wide => [letterSpacing(Theme.LetterSpacing.toValue(wide))]

// NOTE: Line Height - Utilities for controlling the leading (line height) of an element.
let leading = value => [lineHeight(Theme.LineHeight.toValue(value))]

// NOTE: List Style Type - Utilities for controlling the bullet/number style of a list.
let listNone = [listStyleType(#none)]
let listDisc = [listStyleType(#disc)]
let listDecimal = [listStyleType(#decimal)]

// NOTE: List Style Position - Utilities for controlling the position of bullets/numbers in lists.
let listInside = [listStylePosition(#inside)]
let listOutside = [listStylePosition(#outside)]

// NOTE: Placeholder Color - Utilities for controlling the color of placeholder text.
// NOTE: Placeholder Color - Utilities for controlling the color of placeholder text.
type colorType = Theme.Colors.t

let placeholder = (~opacity=1., color: colorType) => [
  CssJs.placeholder([CssJs.color(Theme.Colors.toColor(color, ~opacity))]),
]

// NOTE: Text Alignment - Utilities for controlling the alignment of text.
let textLeft = [textAlign(#left)]
let textCenter = [textAlign(#center)]
let textRight = [textAlign(#right)]
let textJustify = [textAlign(#justify)]

// NOTE: Text Color - Utilities for controlling the text color of an element.
let textColor = (~opacity=1., color: colorType) => [
  CssJs.color(Theme.Colors.toColor(color, ~opacity)),
]

// NOTE: Text Decoration - Utilities for controlling the decoration of text.
let underline = [textDecoration(#underline)]
let lineThrough = [textDecoration(#lineThrough)]
let noUnderline = [textDecoration(#none)]

// NOTE: Text Transform - Utilities for controlling the transformation of text.
let uppercase = [textTransform(#uppercase)]
let lowercase = [textTransform(#lowercase)]
let capitalize = [textTransform(#capitalize)]
let normalCase = [textTransform(#none)]

// NOTE: Text Overflow - Utilities for controlling text overflow in an element.
let truncate = [overflow(#hidden), textOverflow(#ellipsis), whiteSpace(#nowrap)]
let overflowEllipsis = [textOverflow(#ellipsis)]
let overflowClip = [textOverflow(#clip)]

// NOTE: Vertical Alignment - Utilities for controlling the vertical alignment of an inline or table-cell box.
let alignBaseline = [verticalAlign(#baseline)]
let alignTop = [verticalAlign(#top)]
let alignMiddle = [verticalAlign(#middle)]
let alignBottom = [verticalAlign(#bottom)]
let alignTextTop = [CssJs.unsafe("verticalAlign", "text-top")]
let alignTextBottom = [CssJs.unsafe("verticalAlign", "text-bottom")]

// NOTE: Whitespace - Utilities for controlling an element's white-space property.
let whitespaceNormal = [whiteSpace(#normal)]
let whitespaceNowrap = [whiteSpace(#nowrap)]
let whitespacePre = [whiteSpace(#pre)]
let whitespacePreLine = [whiteSpace(#preLine)]
let whitespacePreWrap = [whiteSpace(#preWrap)]

// NOTE: Word Break - Utilities for controlling word breaks in an element.
let breakNormal = [overflowWrap(#normal), wordBreak(#normal)]
let breakWords = [overflowWrap(#breakWord)]
let breakAll = [wordBreak(#breakAll)]

// INFO: BACKGROUNDS
// NOTE: Background Attachment - Utilities for controlling how a background image behaves when scrolling.
let bgFixed = [backgroundAttachment(#fixed)]
let bgLocal = [backgroundAttachment(#local)]
let bgScroll = [backgroundAttachment(#scroll)]

// NOTE: Background Clip - Utilities for controlling the bounding box of an element's background.
let bgClipBorder = [backgroundClip(#borderBox)]
let bgClipPadding = [backgroundClip(#paddingBox)]
let bgClipContent = [backgroundClip(#contentBox)]
let bgClipText = [CssJs.unsafe("backgroundClip", "text")]

// NOTE: Background Color - Utilities for controlling an element's background color.
let bg = (~opacity=1., color: colorType) => [backgroundColor(Theme.Colors.toColor(color, ~opacity))]

// NOTE: Background Position - Utilities for controlling the position of an element's background image.
let bgBottom = [backgroundPosition(#bottom)]
let bgCenter = [backgroundPosition(#center)]
let bgLeft = [backgroundPosition(#left)]
let bgLeftBottom = [backgroundPositions([#left, #bottom])]
let bgLeftTop = [backgroundPositions([#left, #top])]
let bgRight = [backgroundPosition(#right)]
let bgRightBottom = [backgroundPositions([#right, #bottom])]
let bgRightTop = [backgroundPositions([#right, #top])]
let bgTop = [backgroundPosition(#top)]

// NOTE: Background Repeat - Utilities for controlling the repetition of an element's background image.
let bgRepeat = [backgroundRepeat(#repeat)]
let bgNoRepeat = [backgroundRepeat(#noRepeat)]
let bgRepeatX = [backgroundRepeat(#repeatX)]
let bgRepeatY = [backgroundRepeat(#repeatY)]
let bgRepeatRound = [backgroundRepeat(#round)]
let bgRepeatSpace = [backgroundRepeat(#space)]

// NOTE: Background Size - Utilities for controlling the background size of an element's background image.
let bgAuto = [backgroundSize(#auto)]
let bgCover = [backgroundSize(#cover)]
let bgContain = [backgroundSize(#contain)]

// NOTE: Background Image - Utilities for controlling an element's background image.
// INFO: Solved - but needs more feedback

type colorTuple = (CssJs.Types.Length.t, CssJs.Types.Color.t)

let combineGradientColors = ((percent, color): colorTuple) =>
  `, ${CssJs.Types.Color.toString(color)} ${CssJs.Types.Length.toString(percent)}`

let linGradient = (direction, listOfTuples: list<colorTuple>) =>
  `linear-gradient(${direction}${Belt.List.reduce(listOfTuples, ``, (acc, (percent, color)) =>
      acc ++ combineGradientColors((percent, color))
    )})`

let bgNone = [backgroundImage(#none)]
let toT = colorList => CssJs.Types.Gradient.toString(CssJs.linearGradient(deg(0.), colorList))
let toTr = colorList => linGradient("to top right", colorList)
let toR = colorList => CssJs.Types.Gradient.toString(CssJs.linearGradient(deg(90.), colorList))
let toBr = colorList => linGradient("to bottom right", colorList)
let toB = colorList => CssJs.Types.Gradient.toString(CssJs.linearGradient(deg(180.), colorList))
let toBl = colorList => linGradient("to bottom left", colorList)
let toL = colorList => CssJs.Types.Gradient.toString(CssJs.linearGradient(deg(270.), colorList))
let toTl = colorList => linGradient("to top left", colorList)

let bgGradientToT = (colorList: list<colorTuple>) => [
  CssJs.unsafe("backgroundImage", toT(colorList)),
]
let bgGradientToTr = (colorList: list<colorTuple>) => [
  CssJs.unsafe("backgroundImage", toTr(colorList)),
]
let bgGradientToR = (colorList: list<colorTuple>) => [
  CssJs.unsafe("backgroundImage", toR(colorList)),
]
let bgGradientToBr = (colorList: list<colorTuple>) => [
  CssJs.unsafe("backgroundImage", toBr(colorList)),
]
let bgGradientToB = (colorList: list<colorTuple>) => [
  CssJs.unsafe("backgroundImage", toB(colorList)),
]
let bgGradientToBl = (colorList: list<colorTuple>) => [
  CssJs.unsafe("backgroundImage", toBl(colorList)),
]
let bgGradientToL = (colorList: list<colorTuple>) => [
  CssJs.unsafe("backgroundImage", toL(colorList)),
]
let bgGradientToTl = (colorList: list<colorTuple>) => [
  CssJs.unsafe("backgroundImage", toTl(colorList)),
]

// INFO: BORDERS
// NOTE: Border Radius - Utilities for controlling the border radius of an element.
type borderRadius = Theme.BorderRadius.t

let rounded = (radius: borderRadius) => [borderRadius(Theme.BorderRadius.toRadius(radius))]

let roundedT = (radius: borderRadius) => [
  borderTopLeftRadius(Theme.BorderRadius.toRadius(radius)),
  borderTopRightRadius(Theme.BorderRadius.toRadius(radius)),
]

let roundedR = (radius: borderRadius) => [
  borderTopRightRadius(Theme.BorderRadius.toRadius(radius)),
  borderBottomRightRadius(Theme.BorderRadius.toRadius(radius)),
]

let roundedB = (radius: borderRadius) => [
  borderBottomRightRadius(Theme.BorderRadius.toRadius(radius)),
  borderBottomLeftRadius(Theme.BorderRadius.toRadius(radius)),
]

let roundedL = (radius: borderRadius) => [
  borderTopLeftRadius(Theme.BorderRadius.toRadius(radius)),
  borderBottomLeftRadius(Theme.BorderRadius.toRadius(radius)),
]

let roundedTl = (radius: borderRadius) => [borderTopLeftRadius(Theme.BorderRadius.toRadius(radius))]
let roundedTr = (radius: borderRadius) => [
  borderTopRightRadius(Theme.BorderRadius.toRadius(radius)),
]
let roundedBr = (radius: borderRadius) => [
  borderBottomRightRadius(Theme.BorderRadius.toRadius(radius)),
]
let roundedBl = (radius: borderRadius) => [
  borderBottomLeftRadius(Theme.BorderRadius.toRadius(radius)),
]

// NOTE: Border Width - Utilities for controlling the width of an element's fborders

type width = Theme.BorderWidth.t

let border = width => [borderWidth(Theme.BorderWidth.toWidth(width))]
let borderT = width => [borderTopWidth(Theme.BorderWidth.toWidth(width))]
let borderB = width => [borderBottomWidth(Theme.BorderWidth.toWidth(width))]
let borderL = width => [borderLeftWidth(Theme.BorderWidth.toWidth(width))]
let borderR = width => [borderRightWidth(Theme.BorderWidth.toWidth(width))]

// NOTE: Border Color - Utilities for controlling the color of an element's borders.
type borderColor = Theme.Colors.t

let borderColor = color => [borderColor(Theme.Colors.toColor(color))]

// NOTE: Border Style - Utilities for controlling the style of an element's borders.
let borderSolid = [borderStyle(#solid)]
let borderDashed = [borderStyle(#dashed)]
let borderDotted = [borderStyle(#dotted)]
let borderDouble = [borderStyle(#double)]
let borderNone = [borderStyle(#none)]

// NOTE: Divide Width - Utilities for controlling the border width between elements.

let divideY = (~reverse=false, width) =>
  reverse
    ? [
        selector(
          Selectors.ignoreFirstChild,
          [
            borderTopWidth(Theme.BorderWidth.toWidth(#v0)),
            borderBottomWidth(Theme.BorderWidth.toWidth(width)),
          ],
        ),
      ]
    : [
        selector(
          Selectors.ignoreFirstChild,
          [
            borderTopWidth(Theme.BorderWidth.toWidth(width)),
            borderBottomWidth(Theme.BorderWidth.toWidth(#v0)),
          ],
        ),
      ]

let divideX = (width, ~reverse=false, ()) =>
  reverse
    ? [
        selector(
          Selectors.ignoreFirstChild,
          [
            borderRightWidth(Theme.BorderWidth.toWidth(width)),
            borderLeftWidth(Theme.BorderWidth.toWidth(#v0)),
          ],
        ),
      ]
    : [
        selector(
          Selectors.ignoreFirstChild,
          [
            borderLeftWidth(Theme.BorderWidth.toWidth(width)),
            borderRightWidth(Theme.BorderWidth.toWidth(#v0)),
          ],
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

let whiteShadow = CssJs.Shadow.box(~x=#px(0), ~y=#px(0), Theme.Colors.toColor(#white))

let ring = (
  ~inset=false,
  ~offsetWidth=0,
  ~offsetColor=Theme.Colors.toColor(#white),
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

// INFO: EFFECTS
// NOTE: Box Shadow - Utilities for controlling the box shadow of an element.
type themeShadows = Theme.BoxShadow.t
type shadow = [themeShadows | #none]
let shadow = (value: shadow) =>
  switch value {
  | #none => [boxShadow(#none)]
  | #...themeShadows as ts => [boxShadows(Theme.BoxShadow.toShadow(ts))]
  }

// NOTE: Opacity - Utilities for controlling the opacity of an element.
type opacity = Theme.Opacity.t
let opacity = (value: opacity) => [opacity(Theme.Opacity.toValue(value))]

// INFO: TABELS
// NOTE: Border Collapse - Utilities for controlling whether table borders should collapse or be separated.
let borderCollapse = [CssJs.borderCollapse(#collapse)]
let borderSeparate = [CssJs.borderCollapse(#separate)]

// NOTE: Table Layout - Utilities for controlling the table layout algorithm.
let tableAuto = [tableLayout(#auto)]
let tableFixed = [tableLayout(#fixed)]

// INFO: INTERACTIVITY
// NOTE: Appearance - Utilities for suppressing native form control styling.
let appearanceNone = [CssJs.unsafe("appearance", "none")]

// NOTE: Cursor - Utilities for controlling the cursor style when hovering over an element.
let cursorAuto = [cursor(#auto)]
let cursorDefault = [cursor(#default)]
let cursorPointer = [cursor(#pointer)]
let cursorWait = [cursor(#wait)]
let cursorText = [cursor(#text)]
let cursorMove = [cursor(#move)]
let cursorNotAllowed = [cursor(#notAllowed)]

// NOTE: Outline - Utilities for controlling an element's outline.
let outlineNone = [
  outline(#px(2), #solid, Theme.Colors.toColor(#transparent)),
  outlineOffset(#px(2)),
]
let outlineWhite = [outline(#px(2), #dotted, Theme.Colors.toColor(#white)), outlineOffset(#px(2))]
let outlineBlack = [outline(#px(2), #dotted, Theme.Colors.toColor(#black)), outlineOffset(#px(2))]

// NOTE: Pointer Events - Utilities for controlling whether an element responds to pointer events.
let pointerEventsNone = [pointerEvents(#none)]
let pointerEventsAuto = [pointerEvents(#auto)]

// NOTE: Resize - Utilities for controlling how an element can be resized.
let resizeNone = [resize(#none)]
let resizeY = [resize(#vertical)]
let resizeX = [resize(#horizontal)]
let resize = [resize(#both)]

// NOTE: User Select - Utilities for controlling whether the user can select text in an element.
let selectNone = [userSelect(#none)]
let selectText = [userSelect(#text)]
let selectAll = [userSelect(#all)]
let selectAuto = [userSelect(#auto)]

// INFO: SVG
// NOTE: Fill - Utilities for styling the fill of SVG elements.
let fillCurrent = [SVG.fill(#currentColor)]

// NOTE: Stroke - Utilities for styling the stroke of SVG elements.
let strokeCurrent = [SVG.stroke(#currentColor)]

// NOTE: Stroke Width - Utilities for styling the stroke width of SVG elements.
let stroke0 = [SVG.strokeWidth(#px(0))]
let stroke1 = [SVG.strokeWidth(#px(1))]
let stroke2 = [SVG.strokeWidth(#px(2))]

type rulesArray = array<CssJs.rule>

// INFO: ACCESSIBILITY
// NOTE: Screen Readers - Utilities for improving accessibility with screen readers.
// Css_AtomicTypes.
let srOnly = [
  position(#absolute),
  width(#px(1)),
  height(#px(1)),
  padding(#px(0)),
  margin(#px(-1)),
  overflow(#hidden),
  CssJs.unsafe("clip", "rect(0, 0, 0, 0)"),
  whiteSpace(#nowrap),
  borderWidth(#px(0)),
]

let noSrOnly = [
  position(#static),
  width(#auto),
  height(#auto),
  padding(#px(0)),
  margin(#px(0)),
  overflow(#visible),
  CssJs.unsafe("clip", "auto"),
  whiteSpace(#normal),
]

// INFO: TRANSFORMATIONS
// NOTE: Transform - Utilities for controlling transform behaviour.
let transform = (
  ~twTranslateX=0.,
  ~twTranslateY=0.,
  ~twRotate=#deg(0.),
  ~twSkewX=#deg(0.),
  ~twSkewY=#deg(0.),
  ~twScaleX=1.,
  ~twScaleY=1.,
  (),
) => [
  CssJs.transforms([
    CssJs.translateX(#percent(twTranslateX)),
    CssJs.translateY(#percent(twTranslateY)),
    CssJs.rotate(twRotate),
    CssJs.skewX(twSkewX),
    CssJs.skewY(twSkewY),
    CssJs.scaleX(twScaleX),
    CssJs.scaleY(twScaleY),
  ]),
]

let transformGpu = (
  ~twTranslateX=#percent(0.),
  ~twTranslateY=#percent(0.),
  ~twRotate=#deg(0.),
  ~twSkewX=#deg(0.),
  ~twSkewY=#deg(0.),
  ~twScaleX=1.,
  ~twScaleY=1.,
  (),
) => [
  CssJs.transforms([
    CssJs.translate3d(twTranslateX, twTranslateY, #percent(0.)),
    CssJs.rotate(twRotate),
    CssJs.skewX(twSkewX),
    CssJs.skewY(twSkewY),
    CssJs.scaleX(twScaleX),
    CssJs.scaleY(twScaleY),
  ]),
]
let transformNone = [CssJs.transform(#none)]

// NOTE: Transform Origin - Utilities for specifying the origin for an element's transformations.
let originCenter = [transformOrigin(#percent(50.), #percent(50.))]
let originRight = [transformOrigin(#percent(50.), #percent(100.))]
let originLeft = [transformOrigin(#percent(50.), #percent(0.))]

let originTop = [transformOrigin(#percent(0.), #percent(50.))]
let originTopLeft = [transformOrigin(#percent(0.), #percent(0.))]
let originTopRight = [transformOrigin(#percent(0.), #percent(100.))]

let originBottom = [transformOrigin(#percent(100.), #percent(50.))]
let originBottomRight = [transformOrigin(#percent(100.), #percent(100.))]
let originBottomLeft = [transformOrigin(#percent(100.), #percent(0.))]

// INFO: FUNCTIONS

let merge = CssJs.merge

let style = CssJs.style

let tw = rules => Belt.Array.concatMany(rules)

let twStyle = rules => CssJs.style(. Belt.Array.concatMany(rules))

let minWBreakpoint = (breakpoint, styles) => [
  CssJs.media(`screen and (min-width: ${Belt.Int.toString(breakpoint)}px)`, tw(styles)),
]

let maxWBreakpoint = (breakpoint, styles) => [
  CssJs.media(`screen and (max-width: ${Belt.Int.toString(breakpoint)}px)`, tw(styles)),
]

let sm = minWBreakpoint(640)
let md = minWBreakpoint(768)
let lg = minWBreakpoint(1024)
let xl = minWBreakpoint(1280)
let xl2 = minWBreakpoint(1536)
let fontFamilies = fonts => [CssJs.fontFamilies(fonts)]
let fontName = font => [CssJs.fontFamily(#custom(font))]
let contentText = text => [CssJs.contentRule(#text(text))]
// WARNING: This is not a function - create separate section for Atomic types not available in tailwind
let contentNone = [CssJs.contentRule(#none)]
let contentOpen = [CssJs.contentRule(#openQuote)]
let contentClose = [CssJs.contentRule(#closeQuote)]
// INFO: Selectors

let selector = (string, rules) => [CssJs.selector(string, tw(rules))]

let marker = rules => [CssJs.selector("&::marker", tw(rules))]
let active = rules => [CssJs.active(tw(rules))]
let checked = rules => [CssJs.checked(tw(rules))]
let default = rules => [CssJs.default(tw(rules))]
let defined = rules => [CssJs.defined(tw(rules))]
let disabled = rules => [CssJs.disabled(tw(rules))]
let empty = rules => [CssJs.empty(tw(rules))]
let enabled = rules => [CssJs.enabled(tw(rules))]
let first = rules => [CssJs.first(tw(rules))]
let firstChild = rules => [CssJs.firstChild(tw(rules))]
let firstOfType = rules => [CssJs.firstOfType(tw(rules))]
let focus = rules => [CssJs.focus(tw(rules))]
let focusWithin = rules => [CssJs.focusWithin(tw(rules))]
// TODO: host selector

let hover = rules => [CssJs.hover(tw(rules))]
let indeterminate = rules => [CssJs.indeterminate(tw(rules))]
let inRange = rules => [CssJs.inRange(tw(rules))]
let invalid = rules => [CssJs.invalid(tw(rules))]
// TODO: lang selector

let lastChild = rules => [CssJs.lastChild(tw(rules))]
let lastOfType = rules => [CssJs.lastOfType(tw(rules))]
let link = rules => [CssJs.lastOfType(tw(rules))]
//  TODO: Figure out not function
// let not = rules => [CssJs.not__(tw(rules))]
// TODO: Nth selectors

let onlyChild = rules => [CssJs.onlyChild(tw(rules))]
let onlyOfType = rules => [CssJs.onlyOfType(tw(rules))]
let optional = rules => [CssJs.optional(tw(rules))]
let outOfRange = rules => [CssJs.outOfRange(tw(rules))]
let readOnly = rules => [CssJs.readOnly(tw(rules))]
let readWrite = rules => [CssJs.readWrite(tw(rules))]
let required = rules => [CssJs.required(tw(rules))]
// TODO: why right selector is commented out?
let root = rules => [CssJs.root(tw(rules))]
let scope = rules => [CssJs.scope(tw(rules))]
let target = rules => [CssJs.target(tw(rules))]
let valid = rules => [CssJs.valid(tw(rules))]
let visited = rules => [CssJs.visited(tw(rules))]

let after = rules => [CssJs.after(tw(rules))]
let before = rules => [CssJs.before(tw(rules))]
let firstLetter = rules => [CssJs.firstLetter(tw(rules))]
let firstLine = rules => [CssJs.firstLine(tw(rules))]
let selection = rules => [CssJs.selection(tw(rules))]

// #region REGION: Typography module

module Typography = {
  let round = float => float_of_string(Js.Float.toFixedWithPrecision(~digits=7, float))

  let em = (px, base) => #em(round(px /. base))

  let toRem = px => #rem(px /. 16.)

  let leading = (px, base) => [CssJs.lineHeight(#abs(round(px /. base)))]

  let mt = (px, base) => [CssJs.marginTop(em(px, base))]
  let mr = (px, base) => [CssJs.marginRight(em(px, base))]
  let ml = (px, base) => [CssJs.marginLeft(em(px, base))]
  let mb = (px, base) => [CssJs.marginBottom(em(px, base))]
  let my = (px, base) => [CssJs.marginBottom(em(px, base)), CssJs.marginTop(em(px, base))]
  let mx = (px, base) => [CssJs.marginLeft(em(px, base)), CssJs.marginRight(em(px, base))]

  let pt = (px, base) => [CssJs.paddingTop(em(px, base))]
  let pr = (px, base) => [CssJs.paddingRight(em(px, base))]
  let pl = (px, base) => [CssJs.paddingLeft(em(px, base))]
  let pb = (px, base) => [CssJs.paddingBottom(em(px, base))]
  let py = (px, base) => [CssJs.paddingBottom(em(px, base)), CssJs.paddingTop(em(px, base))]
  let px = (px, base) => [CssJs.paddingLeft(em(px, base)), CssJs.paddingRight(em(px, base))]

  let w = (px, base) => [CssJs.width(em(px, base))]
  let h = (px, base) => [CssJs.height(em(px, base))]
  let square = (px, base) => [CssJs.width(em(px, base)), CssJs.height(em(px, base))]
  let rect = (~w, ~h, ~base) => [CssJs.width(em(w, base)), CssJs.height(em(h, base))]

  type mathOperations = [#sub(float, float) | #add(float, float)]

  let top = (px, base) => [CssJs.top(em(px, base))]
  let right = (px, base) => [CssJs.right(em(px, base))]
  let bottom = (px, base) => [CssJs.bottom(em(px, base))]
  let left = (px, base) => [CssJs.left(em(px, base))]

  let topCalc = (mathOperation, ~base) =>
    switch mathOperation {
    | #add(a, b) => [CssJs.top(#em(round(a /. base) +. round(b /. base)))]

    | #sub(a, b) => [CssJs.top(#em(round(a /. base) -. round(b /. base)))]
    }

  let rightCalc = (mathOperation, ~base) =>
    switch mathOperation {
    | #add(a, b) => [CssJs.right(#em(round(a /. base) +. round(b /. base)))]

    | #sub(a, b) => [CssJs.right(#em(round(a /. base) -. round(b /. base)))]
    }

  let bottomCalc = (mathOperation, ~base) =>
    switch mathOperation {
    | #add(a, b) => [CssJs.bottom(#em(round(a /. base) +. round(b /. base)))]

    | #sub(a, b) => [CssJs.bottom(#em(round(a /. base) -. round(b /. base)))]
    }

  let leftCalc = (mathOperation, ~base) =>
    switch mathOperation {
    | #add(a, b) => [CssJs.left(#em(round(a /. base) +. round(b /. base)))]

    | #sub(a, b) => [CssJs.left(#em(round(a /. base) -. round(b /. base)))]
    }
  // INFO: Represents the width, or more precisely the advance measure, of the glyph "0" (zero, the Unicode character U+0030) in the element's font.
  let maxW = characters => [CssJs.maxWidth(#ch(Belt.Int.toFloat(characters)))]

  let fontSize = px => [CssJs.fontSize(toRem(px))]
}

// #endregion ENDREGION: Typography module
