open CssJs

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
let outlineNone = [outline(#px(2), #solid, Theme.Colors.transparent), outlineOffset(#px(2))]
let outlineWhite = [outline(#px(2), #dotted, Theme.Colors.white(1.)), outlineOffset(#px(2))]
let outlineBlack = [outline(#px(2), #dotted, Theme.Colors.black(1.)), outlineOffset(#px(2))]

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
