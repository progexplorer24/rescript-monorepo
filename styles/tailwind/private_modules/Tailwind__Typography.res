open CssJs

// NOTE: Font Family - Utilities for controlling the font family of an element.
let fontSans = [
  fontFamilies([
    #custom("ui-sans-serif"),
    #custom("system-ui"),
    #custom("-apple-system"),
    #custom("BlinkMacSystemFont"),
    #custom("Segoe UI"),
    #custom("Roboto"),
    #custom("Helvetica Neue"),
    #custom("Arial"),
    #custom("Noto Sans"),
    #sansSerif,
    #custom("Apple Color Emoji"),
    #custom("Segoe UI Emoji"),
    #custom("Segoe UI Symbol"),
    #custom("Noto Color Emoji"),
  ]),
]

let fontSerif = [
  fontFamilies([
    #custom("ui-serif"),
    #custom("Georgia"),
    #custom("Cambria"),
    #custom("Times New Roman"),
    #custom("Times"),
    #serif,
  ]),
]

let fontMono = [
  fontFamilies([
    #custom("ui-monospace"),
    #custom("SFMono-Regular"),
    #custom("Menlo"),
    #custom("Monaco"),
    #custom("Consolas"),
    #custom("Liberation Mono"),
    #custom("Courier New"),
    #monospace,
  ]),
]

// NOTE: Font Size - Utilities for controlling the font size of an element.
let textXs = [fontSize(Theme.FontSize.xs), lineHeight(Theme.LineHeight._4)]
let textSm = [fontSize(Theme.FontSize.sm), lineHeight(Theme.LineHeight._5)]
let textBase = [fontSize(Theme.FontSize.base), lineHeight(Theme.LineHeight._6)]
let textLg = [fontSize(Theme.FontSize.lg), lineHeight(Theme.LineHeight._7)]
let textXl = [fontSize(Theme.FontSize.xl), lineHeight(Theme.LineHeight._7)]
let text2Xl = [fontSize(Theme.FontSize._2xl), lineHeight(Theme.LineHeight._8)]
let text3Xl = [fontSize(Theme.FontSize._3xl), lineHeight(Theme.LineHeight._9)]
let text4Xl = [fontSize(Theme.FontSize._4xl), lineHeight(Theme.LineHeight._10)]
let text5Xl = [fontSize(Theme.FontSize._5xl), lineHeight(Theme.LineHeight.none)]
let text6Xl = [fontSize(Theme.FontSize._6xl), lineHeight(Theme.LineHeight.none)]
let text7Xl = [fontSize(Theme.FontSize._7xl), lineHeight(Theme.LineHeight.none)]
let text8Xl = [fontSize(Theme.FontSize._8xl), lineHeight(Theme.LineHeight.none)]
let text9Xl = [fontSize(Theme.FontSize._9xl), lineHeight(Theme.LineHeight.none)]

// NOTE: Font Style - Utilities for controlling the style of text.
let italic = [fontStyle(#italic)]
let noItalic = [fontStyle(#normal)]

// NOTE: Font Weight - Utilities for controlling the font weight of an element.
let fontThin = [fontWeight(#num(100))]
let fontExtralight = [fontWeight(#num(200))]
let fontLight = [fontWeight(#num(300))]
let fontNormal = [fontWeight(#num(400))]
let fontMedium = [fontWeight(#num(500))]
let fontSemibold = [fontWeight(#num(600))]
let fontBold = [fontWeight(#num(700))]
let fontExtrabold = [fontWeight(#num(800))]
let fontBlack = [fontWeight(#num(900))]

// NOTE: Font Variant Numeric - Utilities for controlling the variant of numbers.
let normalNums = [CssJs.unsafe("font-variant-numeric", "normal")]
let ordinal = [CssJs.unsafe("font-variant-numeric", "ordinal")]
let slashedZero = [CssJs.unsafe("font-variant-numeric", "slashed-zero")]
let liningNums = [CssJs.unsafe("font-variant-numeric", "lining-nums")]
let oldstyleNums = [CssJs.unsafe("font-variant-numeric", "oldstyle-nums")]
let proportionalNums = [CssJs.unsafe("font-variant-numeric", "proportional-nums")]
let tabularNums = [CssJs.unsafe("font-variant-numeric", "tabular-nums")]
let diagonalFractions = [CssJs.unsafe("font-variant-numeric", "diagonal-fractions")]
let stackedFractions = [CssJs.unsafe("font-variant-numeric", "stacked-fractions")]

// NOTE: Letter Spacing - Utilities for controlling the tracking (letter spacing) of an element.
let trackingTighter = [letterSpacing(Theme.LetterSpacing.tighter)]
let trackingTight = [letterSpacing(Theme.LetterSpacing.tight)]
let trackingNormal = [letterSpacing(Theme.LetterSpacing.normal)]
let trackingWide = [letterSpacing(Theme.LetterSpacing.wide)]
let trackingWider = [letterSpacing(Theme.LetterSpacing.wider)]
let trackingWidest = [letterSpacing(Theme.LetterSpacing.widest)]

// NOTE: Line Height - Utilities for controlling the leading (line height) of an element.
let leading3 = [lineHeight(Theme.LineHeight._3)]
let leading4 = [lineHeight(Theme.LineHeight._4)]
let leading5 = [lineHeight(Theme.LineHeight._5)]
let leading6 = [lineHeight(Theme.LineHeight._6)]
let leading7 = [lineHeight(Theme.LineHeight._7)]
let leading8 = [lineHeight(Theme.LineHeight._8)]
let leading9 = [lineHeight(Theme.LineHeight._9)]
let leading10 = [lineHeight(Theme.LineHeight._10)]
let leadingNone = [lineHeight(Theme.LineHeight.none)]
let leadingTight = [lineHeight(Theme.LineHeight.tight)]
let leadingSnug = [lineHeight(Theme.LineHeight.snug)]
let leadingNormal = [lineHeight(Theme.LineHeight.normal)]
let leadingRelaxed = [lineHeight(Theme.LineHeight.relaxed)]
let leadingLoose = [lineHeight(Theme.LineHeight.loose)]

// NOTE: List Style Type - Utilities for controlling the bullet/number style of a list.
let listNone = [listStyleType(#none)]
let listDisc = [listStyleType(#disc)]
let listDecimal = [listStyleType(#decimal)]

// NOTE: List Style Position - Utilities for controlling the position of bullets/numbers in lists.
let listInside = [listStylePosition(#inside)]
let listOutside = [listStylePosition(#outside)]

// NOTE: Placeholder Color - Utilities for controlling the color of placeholder text.
include Tailwind__PlaceholderColor

// NOTE: Text Alignment - Utilities for controlling the alignment of text.
let textLeft = [textAlign(#left)]
let textCenter = [textAlign(#center)]
let textRight = [textAlign(#right)]
let textJustify = [textAlign(#justify)]

// NOTE: Text Color - Utilities for controlling the text color of an element.
include Tailwind__TextColor

// NOTE: Text Decoration - Utilities for controlling the decoration of text.
let underline = [textDecoration(#underline)]
let lineThrough = [textDecoration(#lineThrough)]
let noUnderline = [textDecoration(#none)]

// NOTE: Text Transform - Utilities for controlling the transformation of text.
let uppercase = [textTransform(#uppercase)]
let lowercase = [textTransform(#lowercase)]
let capitalize = [textTransform(#capitalize)]
let normalCase = [textTransform(#none)]

// NOTE: Text Overflow - Utilities for controlling text overflow in an element.
let truncate = [overflow(#hidden), textOverflow(#ellipsis), whiteSpace(#nowrap)]
let overflowEllipsis = [textOverflow(#ellipsis)]
let overflowClip = [textOverflow(#clip)]

// NOTE: Vertical Alignment - Utilities for controlling the vertical alignment of an inline or table-cell box.
let alignBaseline = [verticalAlign(#baseline)]
let alignTop = [verticalAlign(#top)]
let alignMiddle = [verticalAlign(#middle)]
let alignBottom = [verticalAlign(#bottom)]
let alignTextTop = [CssJs.unsafe("vertical-align", "text-top")]
let alignTextBottom = [CssJs.unsafe("vertical-align", "text-bottom")]

// NOTE: Whitespace - Utilities for controlling an element's white-space property.
let whitespaceNormal = [whiteSpace(#normal)]
let whitespaceNowrap = [whiteSpace(#nowrap)]
let whitespacePre = [whiteSpace(#pre)]
let whitespacePreLine = [whiteSpace(#preLine)]
let whitespacePreWrap = [whiteSpace(#preWrap)]

// NOTE: Word Break - Utilities for controlling word breaks in an element.
let breakNormal = [overflowWrap(#normal), wordBreak(#normal)]
let breakWords = [overflowWrap(#breakWord)]
let breakAll = [wordBreak(#breakAll)]
