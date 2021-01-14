open CssJs

// NOTE: Font Family - Utilities for controlling the font family of an element.
let fontSans = style(.[
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
])

let fontSerif = style(.[
  fontFamilies([
    #custom("ui-serif"),
    #custom("Georgia"),
    #custom("Cambria"),
    #custom("Times New Roman"),
    #custom("Times"),
    #serif,
  ]),
])

let fontMono = style(.[
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
])

// NOTE: Font Size - Utilities for controlling the font size of an element.
let textXs = style(.[fontSize(Theme.FontSize.xs), lineHeight(Theme.LineHeight._4)])
let textSm = style(.[fontSize(Theme.FontSize.sm), lineHeight(Theme.LineHeight._5)])
let textBase = style(.[fontSize(Theme.FontSize.base), lineHeight(Theme.LineHeight._6)])
let textLg = style(.[fontSize(Theme.FontSize.lg), lineHeight(Theme.LineHeight._7)])
let textXl = style(.[fontSize(Theme.FontSize.xl), lineHeight(Theme.LineHeight._7)])
let text2Xl = style(.[fontSize(Theme.FontSize._2xl), lineHeight(Theme.LineHeight._8)])
let text3Xl = style(.[fontSize(Theme.FontSize._3xl), lineHeight(Theme.LineHeight._9)])
let text4Xl = style(.[fontSize(Theme.FontSize._4xl), lineHeight(Theme.LineHeight._10)])
let text5Xl = style(.[fontSize(Theme.FontSize._5xl), lineHeight(Theme.LineHeight.none)])
let text6Xl = style(.[fontSize(Theme.FontSize._6xl), lineHeight(Theme.LineHeight.none)])
let text7Xl = style(.[fontSize(Theme.FontSize._7xl), lineHeight(Theme.LineHeight.none)])
let text8Xl = style(.[fontSize(Theme.FontSize._8xl), lineHeight(Theme.LineHeight.none)])
let text9Xl = style(.[fontSize(Theme.FontSize._9xl), lineHeight(Theme.LineHeight.none)])

// NOTE: Font Style - Utilities for controlling the style of text.
let italic = style(.[fontStyle(#italic)])
let noItalic = style(.[fontStyle(#normal)])

// NOTE: Font Weight - Utilities for controlling the font weight of an element.
let fontThin = style(.[fontWeight(#num(100))])
let fontExtralight = style(.[fontWeight(#num(200))])
let fontLight = style(.[fontWeight(#num(300))])
let fontNormal = style(.[fontWeight(#num(400))])
let fontMedium = style(.[fontWeight(#num(500))])
let fontSemibold = style(.[fontWeight(#num(600))])
let fontBold = style(.[fontWeight(#num(700))])
let fontExtrabold = style(.[fontWeight(#num(800))])
let fontBlack = style(.[fontWeight(#num(900))])

// NOTE: Font Variant Numeric - Utilities for controlling the variant of numbers.
let normalNums = style(.[CssJs.unsafe("font-variant-numeric", "normal")])
let ordinal = style(.[CssJs.unsafe("font-variant-numeric", "ordinal")])
let slashedZero = style(.[CssJs.unsafe("font-variant-numeric", "slashed-zero")])
let liningNums = style(.[CssJs.unsafe("font-variant-numeric", "lining-nums")])
let oldstyleNums = style(.[CssJs.unsafe("font-variant-numeric", "oldstyle-nums")])
let proportionalNums = style(.[CssJs.unsafe("font-variant-numeric", "proportional-nums")])
let tabularNums = style(.[CssJs.unsafe("font-variant-numeric", "tabular-nums")])
let diagonalFractions = style(.[CssJs.unsafe("font-variant-numeric", "diagonal-fractions")])
let stackedFractions = style(.[CssJs.unsafe("font-variant-numeric", "stacked-fractions")])

// NOTE: Letter Spacing - Utilities for controlling the tracking (letter spacing) of an element.
let trackingTighter = style(.[letterSpacing(Theme.LetterSpacing.tighter)])
let trackingTight = style(.[letterSpacing(Theme.LetterSpacing.tight)])
let trackingNormal = style(.[letterSpacing(Theme.LetterSpacing.normal)])
let trackingWide = style(.[letterSpacing(Theme.LetterSpacing.wide)])
let trackingWider = style(.[letterSpacing(Theme.LetterSpacing.wider)])
let trackingWidest = style(.[letterSpacing(Theme.LetterSpacing.widest)])

// NOTE: Line Height - Utilities for controlling the leading (line height) of an element.
let leading3 = style(.[lineHeight(Theme.LineHeight._3)])
let leading4 = style(.[lineHeight(Theme.LineHeight._4)])
let leading5 = style(.[lineHeight(Theme.LineHeight._5)])
let leading6 = style(.[lineHeight(Theme.LineHeight._6)])
let leading7 = style(.[lineHeight(Theme.LineHeight._7)])
let leading8 = style(.[lineHeight(Theme.LineHeight._8)])
let leading9 = style(.[lineHeight(Theme.LineHeight._9)])
let leading10 = style(.[lineHeight(Theme.LineHeight._10)])
let leadingNone = style(.[lineHeight(Theme.LineHeight.none)])
let leadingTight = style(.[lineHeight(Theme.LineHeight.tight)])
let leadingSnug = style(.[lineHeight(Theme.LineHeight.snug)])
let leadingNormal = style(.[lineHeight(Theme.LineHeight.normal)])
let leadingRelaxed = style(.[lineHeight(Theme.LineHeight.relaxed)])
let leadingLoose = style(.[lineHeight(Theme.LineHeight.loose)])

// NOTE: List Style Type - Utilities for controlling the bullet/number style of a list.
let listNone = style(.[listStyleType(#none)])
let listDisc = style(.[listStyleType(#disc)])
let listDecimal = style(.[listStyleType(#decimal)])

// NOTE: List Style Position - Utilities for controlling the position of bullets/numbers in lists.
let listInside = style(.[listStylePosition(#inside)])
let listOutside = style(.[listStylePosition(#outside)])

// NOTE: Placeholder Color - Utilities for controlling the color of placeholder text.
include Tailwind__PlaceholderColor

// NOTE: Text Alignment - Utilities for controlling the alignment of text.
let textLeft = style(.[textAlign(#left)])
let textCenter = style(.[textAlign(#center)])
let textRight = style(.[textAlign(#right)])
let textJustify = style(.[textAlign(#justify)])

// NOTE: Text Color - Utilities for controlling the text color of an element.
include Tailwind__TextColor

// NOTE: Text Decoration - Utilities for controlling the decoration of text.
let underline = style(.[textDecoration(#underline)])
let lineThrough = style(.[textDecoration(#lineThrough)])
let noUnderline = style(.[textDecoration(#none)])

// NOTE: Text Transform - Utilities for controlling the transformation of text.
let uppercase = style(.[textTransform(#uppercase)])
let lowercase = style(.[textTransform(#lowercase)])
let capitalize = style(.[textTransform(#capitalize)])
let normalCase = style(.[textTransform(#none)])

// NOTE: Text Overflow - Utilities for controlling text overflow in an element.
let truncate = style(.[overflow(#hidden), textOverflow(#ellipsis), whiteSpace(#nowrap)])
let overflowEllipsis = style(.[textOverflow(#ellipsis)])
let overflowClip = style(.[textOverflow(#clip)])

// NOTE: Vertical Alignment - Utilities for controlling the vertical alignment of an inline or table-cell box.
let alignBaseline = style(.[verticalAlign(#baseline)])
let alignTop = style(.[verticalAlign(#top)])
let alignMiddle = style(.[verticalAlign(#middle)])
let alignBottom = style(.[verticalAlign(#bottom)])
let alignTextTop = style(.[CssJs.unsafe("vertical-align", "text-top")])
let alignTextBottom = style(.[CssJs.unsafe("vertical-align", "text-bottom")])

// NOTE: Whitespace - Utilities for controlling an element's white-space property.
let whitespaceNormal = style(.[whiteSpace(#normal)])
let whitespaceNowrap = style(.[whiteSpace(#nowrap)])
let whitespacePre = style(.[whiteSpace(#pre)])
let whitespacePreLine = style(.[whiteSpace(#preLine)])
let whitespacePreWrap = style(.[whiteSpace(#preWrap)])

// NOTE: Word Break - Utilities for controlling word breaks in an element.
let breakNormal = style(.[overflowWrap(#normal), wordBreak(#normal)])
let breakWords = style(.[overflowWrap(#breakWord)])
let breakAll = style(.[wordBreak(#breakAll)])
