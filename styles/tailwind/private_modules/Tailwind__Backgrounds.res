// INFO: Not completed
open CssJs
// NOTE: Background Attachment - Utilities for controlling how a background image behaves when scrolling.
let bgFixed = style(.[backgroundAttachment(#fixed)])
let bgLocal = style(.[backgroundAttachment(#local)])
let bgScroll = style(.[backgroundAttachment(#scroll)])

// NOTE: Background Clip - Utilities for controlling the bounding box of an element's background.
let bgClipBorder = style(.[backgroundClip(#borderBox)])
let bgClipPadding = style(.[backgroundClip(#paddingBox)])
let bgClipContent = style(.[backgroundClip(#contentBox)])
let bgClipText = style(.[CssJs.unsafe("background-clip", "text")])

// NOTE: Background Color - Utilities for controlling an element's background color.
include Tailwind__BackgroundColor

// NOTE: Background Position - Utilities for controlling the position of an element's background image.
let bgBottom = style(.[backgroundPosition(#bottom)])
let bgCenter = style(.[backgroundPosition(#center)])
let bgLeft = style(.[backgroundPosition(#left)])
let bgLeftBottom = style(.[backgroundPositions([#left, #bottom])])
let bgLeftTop = style(.[backgroundPositions([#left, #top])])
let bgRight = style(.[backgroundPosition(#right)])
let bgRightBottom = style(.[backgroundPositions([#right, #bottom])])
let bgRightTop = style(.[backgroundPositions([#right, #top])])
let bgTop = style(.[backgroundPosition(#top)])

// NOTE: Background Repeat - Utilities for controlling the repetition of an element's background image.
let bgRepeat = style(.[backgroundRepeat(#repeat)])
let bgNoRepeat = style(.[backgroundRepeat(#noRepeat)])
let bgRepeatX = style(.[backgroundRepeat(#repeatX)])
let bgRepeatY = style(.[backgroundRepeat(#repeatY)])
let bgRepeatRound = style(.[backgroundRepeat(#round)])
let bgRepeatSpace = style(.[backgroundRepeat(#space)])

// NOTE: Background Size - Utilities for controlling the background size of an element's background image.
let bgAuto = style(.[backgroundSize(#auto)])
let bgCover = style(.[backgroundSize(#cover)])
let bgContain = style(.[backgroundSize(#contain)])

// NOTE: Background Image - Utilities for controlling an element's background image.
// INFO: Using css variables - needs further inspection

// NOTE: Gradient Color Stops - Utilities for controlling the color stops in background gradients.
// INFO: Using css variables - needs further inspection
