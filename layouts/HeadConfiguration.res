module Styles = {
  open Tailwind

  let font = fontName => fontFamilies([#custom(fontName)])

  let fontStyles = fontName => twStyle([font(fontName)])
}

type fontTypes = Theme.GoogleFonts.t

let light = "300;"

// type italics = [#italic300 | #italic400 | #italic600 | #italic700 | #italic800]

type weight = [#v300 | #v400 | #v600 | #v700 | #v800] // | italics

// type fontType = (fontTypes, weight)

type fontRecord = {
  fontName: fontTypes,
  weights: [#regular],
}

@react.component
let make = (~children, ~weights=#regular, ~font=#Dosis) => {
  let fontString = Theme.GoogleFonts.tovalue(font)
  let generateLink = font => `https://fonts.googleapis.com/css2?family=${font}&display=swap`
  let linkFontName = Js.String2.replace(fontString, " ", "+")

  let googleLink = switch weights {
  | #regular => generateLink(linkFontName)
  }

  <>
    <Next.Head>
      <media name="viewport" content="width=device-width, initial-sacle=1.0" />
      <title> {"Title"->Utils.str} </title>
      <link rel="preconnect" href="https://fonts.gstatic.com" />
      <link href={googleLink} rel="stylesheet" />
    </Next.Head>
    <div className={Tailwind.merge(.[Styles.fontStyles(fontString)])}> children </div>
  </>
}
