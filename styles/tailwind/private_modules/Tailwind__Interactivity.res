open CssJs

// NOTE: Appearance - Utilities for suppressing native form control styling.
let appearanceNone = style(.[CssJs.unsafe("appearance", "none")])

// NOTE: Cursor - Utilities for controlling the cursor style when hovering over an element.
let cursorAuto = style(.[cursor(#auto)])
let cursorDefault = style(.[cursor(#default)])
let cursorPointer = style(.[cursor(#pointer)])
let cursorWait = style(.[cursor(#wait)])
let cursorText = style(.[cursor(#text)])
let cursorMove = style(.[cursor(#move)])
let cursorNotAllowed = style(.[cursor(#notAllowed)])

// NOTE: Outline - Utilities for controlling an element's outline.
let outlineNone = style(.[outline(#px(2), #solid, Theme.Colors.transparent), outlineOffset(#px(2))])
let outlineWhite = style(.[outline(#px(2), #dotted, Theme.Colors.white(1.)), outlineOffset(#px(2))])
let outlineBlack = style(.[outline(#px(2), #dotted, Theme.Colors.black(1.)), outlineOffset(#px(2))])

// NOTE: Pointer Events - Utilities for controlling whether an element responds to pointer events.
let pointerEventsNone = style(.[pointerEvents(#none)])
let pointerEventsAuto = style(.[pointerEvents(#auto)])

// NOTE: Resize - Utilities for controlling how an element can be resized.
let resizeNone = style(.[resize(#none)])
let resizeY = style(.[resize(#vertical)])
let resizeX = style(.[resize(#horizontal)])
let resize = style(.[resize(#both)])

// NOTE: User Select - Utilities for controlling whether the user can select text in an element.
let selectNone = style(.[userSelect(#none)])
let selectText = style(.[userSelect(#text)])
let selectAll = style(.[userSelect(#all)])
let selectAuto = style(.[userSelect(#auto)])
