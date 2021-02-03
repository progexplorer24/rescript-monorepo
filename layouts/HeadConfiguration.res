module Styles = {
  open Tailwind

  let font = fontName => fontFamilies([#custom(fontName)])

  let fontStyles = fontName => twStyle([font(fontName)])
}

// TODO: Przeanalizować każdy przypadek dla każdego możliwego wariantu: - default font, default italic font, changed font Weight font, changed font Weight italic font,

type normalWeights = Theme.GoogleFonts.normalWeights
type italicWeights = Theme.GoogleFonts.italicWeights

@react.component
let make = (~children, ~font: Theme.GoogleFonts.styles18=#Montserrat(#v300)) => {
  // let fontString = Theme.GoogleFonts.to(font)
  let isItalic = bool => bool ? "1," : ""
  let weightString = (~italic=false, weight: Theme.GoogleFonts.weightType<'a>) =>
    `wght@${isItalic(italic)}${Belt.Int.toString(Theme.GoogleFonts.toWeightValue(weight))}`
  let linkFontName = fontString => Js.String2.replaceByRe(fontString, %re("/ /g"), "+")
  let fontObject = Theme.GoogleFonts.toFontValue(font)

  // Theme.GoogleFonts.fon

  let generateItalicLinks = ({fontName, weight}: Theme.GoogleFonts.fontRecord) =>
    switch weight {
    | #...normalWeights as fw =>
      `https://fonts.googleapis.com/css2?family=${linkFontName(fontName)}:${weightString(
          fw,
        )}&display=swap`
    | #...italicWeights as iw =>
      `https://fonts.googleapis.com/css2?family=${linkFontName(fontName)}:ital,${weightString(
          iw,
          ~italic=true,
        )}&display=swap`
    }

  // let generatelinkWithWeight = ({fontName, weight}: Theme.GoogleFonts.fontRecord) =>
  //   `https://fonts.googleapis.com/css2?family=${linkFontName(fontName)}${weightString(
  //       weight,
  //     )}&display=swap`
  // let generateLink = font => `https://fonts.googleapis.com/css2?family=${font}&display=swap`

  // | #v100 => generatelinkWithWeight(linkFontName, 100)
  //   | #v300 => generatelinkWithWeight(linkFontName, 300)
  //   | #v400 => generateLink(linkFontName)
  //   | #v500 => generatelinkWithWeight(linkFontName, 500)
  //   | #v700 => generatelinkWithWeight(linkFontName, 700)
  //   | #v900 => generatelinkWithWeight(linkFontName, 900)

  // let googleLink = (font: fontType) =>
  //   switch font {
  //   | #NotoSansJP(fontValue) =>
  //     generatelinkWithWeight(Theme.GoogleFonts.toFontValue(#NotoSansJP(fontValue)))
  //   }

  <>
    <Next.Head>
      <media name="viewport" content="width=device-width, initial-sacle=1.0" />
      <title> {"Title"->Utils.str} </title>
      <link rel="preconnect" href="https://fonts.gstatic.com" />
      <link href={generateItalicLinks(fontObject)} rel="stylesheet" />
    </Next.Head>
    <div className={Tailwind.merge(.[Styles.fontStyles(fontObject.fontName)])}> children </div>
  </>
}
