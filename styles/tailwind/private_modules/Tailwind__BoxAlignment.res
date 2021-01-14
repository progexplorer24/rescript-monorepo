open CssJs

// NOTE: Justify Content - Utilities for controlling how flex and grid items are positioned along a container's main axis.
let justifyStart = style(.[justifyContent(#flexStart)])
let justifyEnd = style(.[justifyContent(#flexEnd)])
let justifyCenter = style(.[justifyContent(#center)])
let justifyBetween = style(.[justifyContent(#spaceBetween)])
let justifyAround = style(.[justifyContent(#spaceAround)])
let justifyEvenly = style(.[justifyContent(#spaceEvenly)])

// NOTE: Justify Items - Utilities for controlling how grid items are aligned along their inline axis.
let justifyItemsAuto = style(.[CssJs.unsafe("justify-items", "auto")])
let justifyItemsStart = style(.[justifyItems(#start)])
let justifyItemsEnd = style(.[justifyItems(#end_)])
let justifyItemsCenter = style(.[justifyItems(#center)])
let justifyItemsStretch = style(.[CssJs.unsafe("justify-items", "stretch")])

// NOTE: Justify Self - Utilities for controlling how an individual grid item is aligned along its inline axis.
let justifySelfAuto = style(.[justifySelf(#auto)])
let justifySelfStart = style(.[justifySelf(#start)])
let justifySelfEnd = style(.[justifySelf(#end_)])
let justifySelfCenter = style(.[justifySelf(#center)])
let justifySelfStretch = style(.[justifySelf(#stretch)])

// NOTE: Align Content - Utilities for controlling how rows are positioned in multi-row flex and grid containers.
let contentCenter = style(.[alignContent(#center)])
let contentStart = style(.[alignContent(#flexStart)])
let contentEnd = style(.[alignContent(#flexEnd)])
let contentBetween = style(.[alignContent(#spaceBetween)])
let contentAround = style(.[alignContent(#spaceAround)])
let contentEvenly = style(.[alignContent(#spaceEvenly)])

// NOTE: Align Items - Utilities for controlling how flex and grid items are positioned along a container's cross axis.
let itemsStart = style(.[alignItems(#flexStart)])
let itemsEnd = style(.[alignItems(#flexEnd)])
let itemsCenter = style(.[alignItems(#center)])
let itemsBaseline = style(.[alignItems(#baseline)])
let itemsStretch = style(.[alignItems(#stretch)])

// NOTE: Align Self - Utilities for controlling how an individual flex or grid item is positioned along its container's cross axis.
let selfAuto = style(.[alignSelf(#auto)])
let selfStart = style(.[alignSelf(#flexStart)])
let selfEnd = style(.[alignSelf(#flexEnd)])
let selfCenter = style(.[alignSelf(#center)])
let selfStretch = style(.[alignSelf(#stretch)])

// NOTE: Place Content - Utilities for controlling how content is justified and aligned at the same time.
// TODO: Test if unsafe utilities are working
let placeContentCenter = style(.[CssJs.unsafe("place-content", "center")])
let placeContentStart = style(.[CssJs.unsafe("place-content", "start")])
let placeContentBetween = style(.[CssJs.unsafe("place-content", "end")])
let placeContentEnd = style(.[CssJs.unsafe("place-content", "space-between")])
let placeContentAround = style(.[CssJs.unsafe("place-content", "space-around")])
let placeContentEvenly = style(.[CssJs.unsafe("place-content", "space-evenly")])
let placeContentStretch = style(.[CssJs.unsafe("place-content", "stretch")])

// NOTE: Place Items - Utilities for controlling how items are justified and aligned at the same time.
// TODO: Test if unsafe utilities are working
let placeItemsAuto = style(.[CssJs.unsafe("place-items", "auto")])
let placeItemsStart = style(.[CssJs.unsafe("place-items", "start")])
let placeItemsEnd = style(.[CssJs.unsafe("place-items", "end")])
let placeItemsCenter = style(.[CssJs.unsafe("place-items", "center")])
let placeItemsStretch = style(.[CssJs.unsafe("place-items", "stretch")])

// NOTE: Place Self - Utilities for controlling how an individual item is justified and aligned at the same time.
// TODO: Test if unsafe utilities are working
let placeSelfAuto = style(.[CssJs.unsafe("place-self", "auto")])
let placeSelfStart = style(.[CssJs.unsafe("place-self", "start")])
let placeSelfEnd = style(.[CssJs.unsafe("place-self", "end")])
let placeSelfCenter = style(.[CssJs.unsafe("place-self", "center")])
let placeSelfStretch = style(.[CssJs.unsafe("place-self", "stretch")])
