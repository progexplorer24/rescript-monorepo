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
// INFO: Solved - but needs more feedback

type colorTuple = (CssJs.Types.Length.t, CssJs.Types.Color.t)

let combineGradientColors = ((percent, color): colorTuple) =>
  `, ${CssJs.Types.Color.toString(color)} ${CssJs.Types.Length.toString(percent)}`

let linGradient = (direction, listOfTuples: list<colorTuple>) =>
  `linear-gradient(${direction}${Belt.List.reduce(listOfTuples, ``, (acc, (percent, color)) =>
      acc ++ combineGradientColors((percent, color))
    )})`

let bgNone = style(.[backgroundImage(#none)])
let toT = colorList => CssJs.Types.Gradient.toString(CssJs.linearGradient(deg(0.), colorList))
let toTr = colorList => linGradient("to top right", colorList)
let toR = colorList => CssJs.Types.Gradient.toString(CssJs.linearGradient(deg(90.), colorList))
let toBr = colorList => linGradient("to bottom right", colorList)
let toB = colorList => CssJs.Types.Gradient.toString(CssJs.linearGradient(deg(180.), colorList))
let toBl = colorList => linGradient("to bottom left", colorList)
let toL = colorList => CssJs.Types.Gradient.toString(CssJs.linearGradient(deg(270.), colorList))
let toTl = colorList => linGradient("to top left", colorList)

let bgGradientToT = (colorList: list<colorTuple>) =>
  style(.[CssJs.unsafe("background-image", toT(colorList))])
let bgGradientToTr = (colorList: list<colorTuple>) =>
  style(.[CssJs.unsafe("background-image", toTr(colorList))])
let bgGradientToR = (colorList: list<colorTuple>) =>
  style(.[CssJs.unsafe("background-image", toR(colorList))])
let bgGradientToBr = (colorList: list<colorTuple>) =>
  style(.[CssJs.unsafe("background-image", toBr(colorList))])
let bgGradientToB = (colorList: list<colorTuple>) =>
  style(.[CssJs.unsafe("background-image", toB(colorList))])
let bgGradientToBl = (colorList: list<colorTuple>) =>
  style(.[CssJs.unsafe("background-image", toBl(colorList))])
let bgGradientToL = (colorList: list<colorTuple>) =>
  style(.[CssJs.unsafe("background-image", toL(colorList))])
let bgGradientToTl = (colorList: list<colorTuple>) =>
  style(.[CssJs.unsafe("background-image", toTl(colorList))])
