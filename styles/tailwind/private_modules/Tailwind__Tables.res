open CssJs

// NOTE: Border Collapse - Utilities for controlling whether table borders should collapse or be separated.
let borderCollapse = style(.[CssJs.borderCollapse(#collapse)])
let borderSeparate = style(.[CssJs.borderCollapse(#separate)])

// NOTE: Table Layout - Utilities for controlling the table layout algorithm.
let tableAuto = style(.[tableLayout(#auto)])
let tableFixed = style(.[tableLayout(#fixed)])
