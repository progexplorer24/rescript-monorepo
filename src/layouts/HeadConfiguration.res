module GenerateLink = {
  type italicSpec = {
    prefix: string,
    normalPrefix: string,
    italicPrefix: string,
  }

  type weights = array<Theme.GoogleFonts.weightRecord>

  type fontName = string

  type fontFamilies = array<Theme.GoogleFonts.fontRecord>

  let hasItalics = (weights: weights) =>
    Belt.Array.some(weights, a => a.isItalic === true)
      ? {
          prefix: ":ital,",
          normalPrefix: "0,",
          italicPrefix: "1,",
        }
      : {
          prefix: ":",
          normalPrefix: "",
          italicPrefix: "",
        }

  let weightPrefix = (
    {weight, isItalic}: Theme.GoogleFonts.weightRecord,
    normalPrefix,
    italicPrefix,
  ) => `${isItalic ? italicPrefix : normalPrefix}${Belt.Int.toString(weight)};`

  let generateWeights = (~normalPrefix="", ~italicPrefix="", weights: weights) =>
    Js.String2.slice(
      Belt.Array.reduce(weights, "", (acc, value) =>
        acc ++ weightPrefix(value, normalPrefix, italicPrefix)
      ),
      ~from=0,
      ~to_=-1,
    )

  let linkFontName = fontString => Js.String2.replaceByRe(fontString, %re("/ /g"), "+")

  let createFontFamily = (fontName, weights) => {
    let {prefix, normalPrefix, italicPrefix} = hasItalics(weights)
    `family=${linkFontName(fontName)}${prefix}wght@${generateWeights(
        weights,
        ~normalPrefix,
        ~italicPrefix,
      )}&`
  }

  let createFontFamilies = (fontFamilies: fontFamilies) => {
    Belt.Array.reduce(fontFamilies, "", (acc, font) =>
      acc ++ createFontFamily(font.fontName, font.weights)
    )
  }

  let generateLink = fontFamilies => {
    `https://fonts.googleapis.com/css2?${createFontFamilies(fontFamilies)}display=swap`
  }
}

@react.component
let make = (
  ~children,
  ~fonts: Theme.GoogleFonts.fontsArray=[
    #AlegreyaSans([#v400]),
    #CrimsonPro([#v200, #italic200, #italic300]),
    #JetBrainsMono([#v800]),
  ],
  ~title="Page Title",
) => {
  let fontFamilies = Theme.GoogleFonts.toFontValues(fonts)
  // NOTE: Multiple font Families
  // https://fonts.googleapis.com/css2?family=Barlow+Condensed:wght@100&family=Barlow:ital,wght@1,300&display=swap
  //

  //  https://fonts.googleapis.com/css2?family=Alegreya+Sans&family=Crimson+Pro:ital,wght@0,200;1,200;1,300&family=JetBrains+Mono:wght@800&display=swap
  //  https://fonts.googleapis.com/css2?family=Alegreya+Sans:wght@400&family=Crimson+Pro:ital,wght@0,200;1,200;1,300&family=JetBrains+Mono:wght@800&display=swap

  // NOTE: Single font Family
  // https://fonts.googleapis.com/css2?family=Barlow:wght@400;600&display=swap
  // https://fonts.googleapis.com/css2?family=Barlow:wght@400;600&display=swap

  // https://fonts.googleapis.com/css2?family=Barlow:ital,wght@0,400;0,600;1,300&display=swap
  // https://fonts.googleapis.com/css2?family=Barlow:ital,wght@0,400;0,600;1,300&display=swap

  // https://fonts.googleapis.com/css2?family=Barlow:ital,wght@1,300&display=swap
  // https://fonts.googleapis.com/css2?family=Barlow:ital,wght@1,300&display=swap
  <>
    <Next.Head>
      <media name="viewport" content="width=device-width, initial-sacle=1.0" />
      <title> {title->Utils.str} </title>
      <link rel="preconnect" href="https://fonts.gstatic.com" />
      <link href={GenerateLink.generateLink(fontFamilies)} rel="stylesheet" />
    </Next.Head>
    children
  </>
}
