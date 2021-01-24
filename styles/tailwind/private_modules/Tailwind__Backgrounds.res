// INFO: Not completed
open CssJs
// NOTE: Background Attachment - Utilities for controlling how a background image behaves when scrolling.
let bgFixed = [backgroundAttachment(#fixed)]
let bgLocal = [backgroundAttachment(#local)]
let bgScroll = [backgroundAttachment(#scroll)]

// NOTE: Background Clip - Utilities for controlling the bounding box of an element's background.
let bgClipBorder = [backgroundClip(#borderBox)]
let bgClipPadding = [backgroundClip(#paddingBox)]
let bgClipContent = [backgroundClip(#contentBox)]
let bgClipText = [CssJs.unsafe("background-clip", "text")]

// NOTE: Background Color - Utilities for controlling an element's background color.
include Tailwind__BackgroundColor

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
  CssJs.unsafe("background-image", toT(colorList)),
]
let bgGradientToTr = (colorList: list<colorTuple>) => [
  CssJs.unsafe("background-image", toTr(colorList)),
]
let bgGradientToR = (colorList: list<colorTuple>) => [
  CssJs.unsafe("background-image", toR(colorList)),
]
let bgGradientToBr = (colorList: list<colorTuple>) => [
  CssJs.unsafe("background-image", toBr(colorList)),
]
let bgGradientToB = (colorList: list<colorTuple>) => [
  CssJs.unsafe("background-image", toB(colorList)),
]
let bgGradientToBl = (colorList: list<colorTuple>) => [
  CssJs.unsafe("background-image", toBl(colorList)),
]
let bgGradientToL = (colorList: list<colorTuple>) => [
  CssJs.unsafe("background-image", toL(colorList)),
]
let bgGradientToTl = (colorList: list<colorTuple>) => [
  CssJs.unsafe("background-image", toTl(colorList)),
]
