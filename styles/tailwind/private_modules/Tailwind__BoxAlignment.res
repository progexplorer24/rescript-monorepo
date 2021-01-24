open CssJs

// NOTE: Justify Content - Utilities for controlling how flex and grid items are positioned along a container's main axis.
let justifyStart = [justifyContent(#flexStart)]
let justifyEnd = [justifyContent(#flexEnd)]
let justifyCenter = [justifyContent(#center)]
let justifyBetween = [justifyContent(#spaceBetween)]
let justifyAround = [justifyContent(#spaceAround)]
let justifyEvenly = [justifyContent(#spaceEvenly)]

// NOTE: Justify Items - Utilities for controlling how grid items are aligned along their inline axis.
let justifyItemsAuto = [CssJs.unsafe("justify-items", "auto")]
let justifyItemsStart = [justifyItems(#start)]
let justifyItemsEnd = [justifyItems(#end_)]
let justifyItemsCenter = [justifyItems(#center)]
let justifyItemsStretch = [CssJs.unsafe("justify-items", "stretch")]

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
let placeContentCenter = [CssJs.unsafe("place-content", "center")]
let placeContentStart = [CssJs.unsafe("place-content", "start")]
let placeContentBetween = [CssJs.unsafe("place-content", "end")]
let placeContentEnd = [CssJs.unsafe("place-content", "space-between")]
let placeContentAround = [CssJs.unsafe("place-content", "space-around")]
let placeContentEvenly = [CssJs.unsafe("place-content", "space-evenly")]
let placeContentStretch = [CssJs.unsafe("place-content", "stretch")]

// NOTE: Place Items - Utilities for controlling how items are justified and aligned at the same time.
// TODO: Test if unsafe utilities are working
let placeItemsAuto = [CssJs.unsafe("place-items", "auto")]
let placeItemsStart = [CssJs.unsafe("place-items", "start")]
let placeItemsEnd = [CssJs.unsafe("place-items", "end")]
let placeItemsCenter = [CssJs.unsafe("place-items", "center")]
let placeItemsStretch = [CssJs.unsafe("place-items", "stretch")]

// NOTE: Place Self - Utilities for controlling how an individual item is justified and aligned at the same time.
// TODO: Test if unsafe utilities are working
let placeSelfAuto = [CssJs.unsafe("place-self", "auto")]
let placeSelfStart = [CssJs.unsafe("place-self", "start")]
let placeSelfEnd = [CssJs.unsafe("place-self", "end")]
let placeSelfCenter = [CssJs.unsafe("place-self", "center")]
let placeSelfStretch = [CssJs.unsafe("place-self", "stretch")]
