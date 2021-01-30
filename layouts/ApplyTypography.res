module Styles = {
  open Tailwind
  let setFont = font => fontFamilies([#custom(font), #sansSerif])
  let openSans = "Open Sans"

  let fontCurrent = setFont(openSans)

  let elementStyles = twStyle([fontCurrent])
}

type openSansType = [#openSans]

let light = "300;"

// type italics = [#italic300 | #italic400 | #italic600 | #italic700 | #italic800]

type weight = [#v300 | #v400 | #v600 | #v700 | #v800] // | italics

type fontType = (openSansType, weight)

@react.component
let make = (~children, ~className="", ~font: fontType=(#openSans, #v300)) => {
  let (fontName, weight) = font

  let addItalics = false ? ("ital,", "1,") : ("", "")

  let toValue = fontName =>
    switch fontName {
    | #openSans => "Open Sans"
    }

  let toWeight = fontWeight =>
    switch fontWeight {
    | #v300 => "300"
    | #v400 => "400"
    | #v600 => "600"
    | #v700 => "700"
    | #v800 => "800"
    // | #...italics as itl =>
    }

  let (italics, italicsNumber) = addItalics

  let transformFont = fontName => Js.String2.replace(fontName, " ", "+")
  let buildString = (fontName, weights) =>
    `https://fonts.googleapis.com/css2?family=${fontName}:${italics}wght@${italicsNumber}${weights}&display=swap`

  let gFontsLink = buildString(transformFont(toValue(fontName)), toWeight(weight))

  <>
    <Next.Head>
      <media name="viewport" content="width=device-width, initial-sacle=1.0" />
      <title> {"Title"->Utils.str} </title>
      <link rel="preconnect" href="https://fonts.gstatic.com" />
      <link href={gFontsLink} rel="stylesheet" />
    </Next.Head>
    <div className={Tailwind.merge(.[Styles.elementStyles, className])}> children </div>
  </>
}
