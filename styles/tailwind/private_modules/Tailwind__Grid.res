// INFO: Not completed
open CssJs

// NOTE: Grid Template Columns - Utilities for specifying the columns in a grid layout.
let gridCols1 = style(.[gridTemplateColumns([#repeat(#num(1), #minmax(#zero, #fr(1.)))])])
let gridCols2 = style(.[gridTemplateColumns([#repeat(#num(2), #minmax(#zero, #fr(1.)))])])
let gridCols3 = style(.[gridTemplateColumns([#repeat(#num(3), #minmax(#zero, #fr(1.)))])])
let gridCols4 = style(.[gridTemplateColumns([#repeat(#num(4), #minmax(#zero, #fr(1.)))])])
let gridCols5 = style(.[gridTemplateColumns([#repeat(#num(5), #minmax(#zero, #fr(1.)))])])
let gridCols6 = style(.[gridTemplateColumns([#repeat(#num(6), #minmax(#zero, #fr(1.)))])])
let gridCols7 = style(.[gridTemplateColumns([#repeat(#num(7), #minmax(#zero, #fr(1.)))])])
let gridCols8 = style(.[gridTemplateColumns([#repeat(#num(8), #minmax(#zero, #fr(1.)))])])
let gridCols9 = style(.[gridTemplateColumns([#repeat(#num(9), #minmax(#zero, #fr(1.)))])])
let gridCols10 = style(.[gridTemplateColumns([#repeat(#num(10), #minmax(#zero, #fr(1.)))])])
let gridCols11 = style(.[gridTemplateColumns([#repeat(#num(11), #minmax(#zero, #fr(1.)))])])
let gridCols12 = style(.[gridTemplateColumns([#repeat(#num(12), #minmax(#zero, #fr(1.)))])])
let gridColsNone = style(.[CssJs.unsafe("grid-template-columns", "none")])

// NOTE: Grid Column Start / End - Utilities for controlling how elements are sized and placed across grid columns.
// INFO: I am not able to use span functionality in bs-css
let colAuto = style(.[CssJs.unsafe("grid-column", "auto")])

// NOTE: Grid Template Rows - Utilities for specifying the rows in a grid layout.
let gridRows1 = style(.[gridTemplateRows([#repeat(#num(1), #minmax(#zero, #fr(1.)))])])
let gridRows2 = style(.[gridTemplateRows([#repeat(#num(2), #minmax(#zero, #fr(1.)))])])
let gridRows3 = style(.[gridTemplateRows([#repeat(#num(3), #minmax(#zero, #fr(1.)))])])
let gridRows4 = style(.[gridTemplateRows([#repeat(#num(4), #minmax(#zero, #fr(1.)))])])
let gridRows5 = style(.[gridTemplateRows([#repeat(#num(5), #minmax(#zero, #fr(1.)))])])
let gridRows6 = style(.[gridTemplateRows([#repeat(#num(6), #minmax(#zero, #fr(1.)))])])
let gridRowsNone = style(.[CssJs.unsafe("grid-template-rows", "none")])

// NOTE: Grid Row Start / End - Utilities for controlling how elements are sized and placed across grid rows.
let rowAuto = style(.[CssJs.unsafe("grid-row", "auto")])
// INFO: I am not able to use span functionality in bs-css
let rowSpanFull = style(.[gridRow(1, -1)])
let rowStart1 = style(.[gridRowStart(1)])
let rowStart2 = style(.[gridRowStart(2)])
let rowStart3 = style(.[gridRowStart(3)])
let rowStart4 = style(.[gridRowStart(4)])
let rowStart5 = style(.[gridRowStart(5)])
let rowStart6 = style(.[gridRowStart(6)])
let rowStart7 = style(.[gridRowStart(7)])
let rowStartAuto = style(.[CssJs.unsafe("grid-row-start", "auto")])
let rowEnd1 = style(.[gridRowEnd(1)])
let rowEnd2 = style(.[gridRowEnd(2)])
let rowEnd3 = style(.[gridRowEnd(3)])
let rowEnd4 = style(.[gridRowEnd(4)])
let rowEnd5 = style(.[gridRowEnd(5)])
let rowEnd6 = style(.[gridRowEnd(6)])
let rowEnd7 = style(.[gridRowEnd(7)])
let rowEndAuto = style(.[CssJs.unsafe("grid-row-end", "auto")])

// NOTE: Grid Auto Flow - Utilities for controlling how elements in a grid are auto-placed.
let gridFlowRow = style(.[gridAutoFlow(#row)])
let gridFlowCol = style(.[gridAutoFlow(#column)])
let gridFlowRowDense = style(.[gridAutoFlow(#rowDense)])
let gridFlowColDense = style(.[gridAutoFlow(#columnDense)])

// NOTE: Grid Auto Columns - Utilities for controlling the size of implicitly-created grid columns.
let autoColsAuto = style(.[gridAutoColumns(#auto)])
let autoColsMin = style(.[gridAutoColumns(#minContent)])
let autoColsMax = style(.[gridAutoColumns(#maxContent)])
let autoColsFr = style(.[gridAutoColumns(#minmax(#zero, #fr(1.)))])

// NOTE: Grid Auto Rows - Utilities for controlling the size of implicitly-created grid rows.
let autoRowsAuto = style(.[gridAutoRows(#auto)])
let autoRowsMin = style(.[gridAutoRows(#minContent)])
let autoRowsMax = style(.[gridAutoRows(#maxContent)])
let autoRowsFr = style(.[gridAutoRows(#minmax(#zero, #fr(1.)))])

// NOTE: Gap - Utilities for controlling gutters between grid rows and columns.
// INFO: Plenty of features - will do it later
