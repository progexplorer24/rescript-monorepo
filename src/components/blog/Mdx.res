module Styles = {
  open Tailwind
  let base = 14.
  let baseSm = 16.
  let baseLg = 18.
  let baseXl = 24.

  // EDGE CASE: Don't add top margin for first child element and bottom margin for last child element
  let proseFirstChild = twStyle([selector("& >", [firstChild([mt(#0)])])])
  let proseLastChild = twStyle([selector("& >", [lastChild([mb(#0)])])])

  let proseBase = twStyle([mx(#auto), Typography.maxW(65), Typography.fontSize(base)])
  let proseSm = twStyle([sm([Typography.fontSize(baseSm), Typography.leading(28., baseSm)])])
  let proseLg = twStyle([lg([Typography.fontSize(baseLg), Typography.leading(32., baseLg)])])
  let proseXl = twStyle([xl([Typography.fontSize(baseXl), Typography.leading(40., baseXl)])])

  let prose = merge(. [proseBase, proseSm, proseLg, proseXl, proseFirstChild, proseLastChild])

  // NOTE: Solution for sm screen size
  let paragraphBase = twStyle([
    Typography.leading(24., base),
    textColor(#coolGray700),
    Typography.my(16., base),
  ])
  let paragraphSm = twStyle([sm([Typography.my(20., baseSm)])])
  let paragraphLg = twStyle([lg([Typography.my(24., baseLg)])])
  let paragraphXl = twStyle([xl([Typography.my(32., baseXl)])])

  let paragraph = merge(. [paragraphBase, paragraphSm, paragraphLg, paragraphXl])

  let link = twStyle([textColor(#coolGray900), noUnderline, fontWeight(#500)])

  let rebaseLead = 18.
  let rebaseLeadSm = 20.
  let rebaseLeadLg = 22.
  let rebaseLeadXl = 30.
  let leadBase = twStyle([
    textColor(#coolGray600),
    Typography.fontSize(rebaseLead),
    Typography.my(16., rebaseLead),
    Typography.leading(28., rebaseLead),
  ])

  let leadSm = twStyle([
    sm([
      Typography.fontSize(rebaseLeadSm),
      Typography.leading(32., rebaseLeadSm),
      Typography.my(24., rebaseLeadSm),
    ]),
  ])

  let leadLg = twStyle([
    lg([
      Typography.fontSize(rebaseLeadLg),
      Typography.leading(32., rebaseLeadLg),
      Typography.my(24., rebaseLeadLg),
    ]),
  ])
  let leadXl = twStyle([
    xl([
      Typography.fontSize(rebaseLeadXl),
      Typography.leading(44., rebaseLeadXl),
      Typography.my(32., rebaseLeadXl),
    ]),
  ])

  let lead = merge(. [leadBase, leadSm, leadLg, leadXl])

  let strong = twStyle([textColor(#coolGray900), fontWeight(#600)])

  // HACK: Increase specifity because styles are not applied
  // EDGE CASE: Remove margin top from next element of h2-h4 & hr
  let removeTopMarginFromNextElement = selector("&& + *", [mt(#0)])

  let hrBase = twStyle([
    borderT(#1),
    borderColor(#coolGray200),
    Typography.my(40., base),
    removeTopMarginFromNextElement,
  ])

  let hrSm = twStyle([sm([Typography.my(48., baseSm)])])
  let hrLg = twStyle([lg([Typography.my(56., baseLg)])])
  let hrXl = twStyle([xl([Typography.my(72., baseXl)])])

  let hr = merge(. [hrBase, hrSm, hrLg, hrXl])

  // TODO: Check what happens when you add multiple paragraphs

  // TODO: Rebase blockqoute fontSize to 20px - investigate

  let rebaseBlockquote = 18.
  let rebaseBlockquoteSm = 20.
  let rebaseBlockquoteLg = 24.
  let rebaseBlockquoteXl = 36.
  let blockquoteBase = twStyle([
    italic,
    borderColor(#coolGray200),
    fontWeight(#500),
    borderL(#4),
    selector(
      "p",
      [
        textColor(#coolGray900),
        firstOfType([before([contentOpen])]),
        lastOfType([after([contentClose])]),
      ],
    ),
    Typography.my(24., rebaseBlockquote),
    Typography.pl(20., rebaseBlockquote),
  ])
  let blockquoteSm = twStyle([
    sm([Typography.my(32., rebaseBlockquoteSm), Typography.pl(20., rebaseBlockquoteSm)]),
  ])

  let blockquoteLg = twStyle([
    lg([Typography.my(40., rebaseBlockquoteLg), Typography.pl(24., rebaseBlockquoteLg)]),
  ])
  let blockquoteXl = twStyle([
    xl([Typography.my(64., rebaseBlockquoteXl), Typography.pl(40., rebaseBlockquoteXl)]),
  ])

  let blockquote = merge(. [blockquoteBase, blockquoteSm, blockquoteLg, blockquoteXl])

  let rebaseCode = 12.
  let rebaseCodeSm = 14.
  let rebaseCodeLg = 16.
  let rebaseCodeXl = 20.
  let codeBase = twStyle([
    fontMono,
    Typography.fontSize(rebaseCode),
    textColor(#coolGray900),
    fontWeight(#600),
    before([contentText(Utils.grave)]),
    after([contentText(Utils.grave)]),
  ])

  let codeSm = twStyle([sm([Typography.fontSize(rebaseCodeSm)])])
  let codeLg = twStyle([lg([Typography.fontSize(rebaseCodeLg)])])
  let codeXl = twStyle([xl([Typography.fontSize(rebaseCodeXl)])])

  let code = merge(. [codeBase, codeSm, codeLg, codeXl])

  // EDGE CASE: Code element inside h2 & h3
  let codeInsideH2Base = twStyle([selector("& code", [Typography.fontSize(18.)])])
  let codeInsideH2Sm = twStyle([sm([selector("& code", [Typography.fontSize(21.)])])])
  let codeInsideH2Lg = twStyle([lg([selector("& code", [Typography.fontSize(26.)])])])
  let codeInsideH2Xl = twStyle([xl([selector("& code", [Typography.fontSize(42.)])])])

  let codeInsideH3Base = twStyle([selector("& code", [Typography.fontSize(16.)])])
  let codeInsideH3Sm = twStyle([sm([selector("& code", [Typography.fontSize(18.)])])])
  let codeInsideH3Lg = twStyle([lg([selector("& code", [Typography.fontSize(21.)])])])
  let codeInsideH3Xl = twStyle([xl([selector("& code", [Typography.fontSize(32.)])])])

  let codeInsideH2 = merge(. [codeInsideH2Base, codeInsideH2Sm, codeInsideH2Lg, codeInsideH2Xl])
  let codeInsideH3 = merge(. [codeInsideH3Base, codeInsideH3Sm, codeInsideH3Lg, codeInsideH3Xl])

  let rebaseH1 = 30.
  let rebaseH1Sm = 36.
  let rebaseH1Lg = 48.
  let rebaseH1Xl = 64.

  let h1Base = twStyle([
    textColor(#coolGray900),
    fontWeight(#800),
    Typography.fontSize(rebaseH1),
    Typography.leading(36., rebaseH1),
    Typography.mt(0., rebaseH1),
    Typography.mb(24., rebaseH1),
  ])

  let h1Sm = twStyle([
    sm([
      Typography.fontSize(rebaseH1Sm),
      Typography.leading(40., rebaseH1Sm),
      Typography.mt(0., rebaseH1Sm),
      Typography.mb(32., rebaseH1Sm),
    ]),
  ])

  let h1Lg = twStyle([
    lg([
      Typography.fontSize(rebaseH1Lg),
      Typography.leading(48., rebaseH1Lg),
      Typography.mt(0., rebaseH1Lg),
      Typography.mb(40., rebaseH1Lg),
    ]),
  ])

  let h1Xl = twStyle([
    xl([
      Typography.fontSize(rebaseH1Xl),
      Typography.leading(64., rebaseH1Xl),
      Typography.mt(0., rebaseH1Xl),
      Typography.mb(56., rebaseH1Xl),
    ]),
  ])

  let h1 = merge(. [h1Base, h1Sm, h1Lg, h1Xl])

  let rebaseH2 = 20.
  let rebaseH2Sm = 24.
  let rebaseH2Lg = 30.
  let rebaseH2Xl = 48.

  let h2Base = merge(. [
    twStyle([
      textColor(#coolGray900),
      fontWeight(#700),
      Typography.fontSize(rebaseH2),
      Typography.leading(28., rebaseH2),
      Typography.mt(32., rebaseH2),
      Typography.mb(16., rebaseH2),
      removeTopMarginFromNextElement,
    ]),
    codeInsideH2,
  ])

  let h2Sm = twStyle([
    sm([
      Typography.fontSize(rebaseH2Sm),
      Typography.leading(32., rebaseH2Sm),
      Typography.mt(48., rebaseH2Sm),
      Typography.mb(24., rebaseH2Sm),
    ]),
  ])

  let h2Lg = twStyle([
    lg([
      Typography.fontSize(rebaseH2Lg),
      Typography.leading(40., rebaseH2Lg),
      Typography.mt(56., rebaseH2Lg),
      Typography.mb(32., rebaseH2Lg),
    ]),
  ])

  let h2Xl = twStyle([
    xl([
      Typography.fontSize(rebaseH2Xl),
      Typography.leading(52., rebaseH2Xl),
      Typography.mt(72., rebaseH2Xl),
      Typography.mb(40., rebaseH2Xl),
    ]),
  ])

  let h2 = merge(. [h2Base, h2Sm, h2Lg, h2Xl])

  let rebaseH3 = 18.
  let rebaseH3Sm = 20.
  let rebaseH3Lg = 24.
  let rebaseH3Xl = 36.

  let h3Base = merge(. [
    twStyle([
      textColor(#coolGray900),
      fontWeight(#600),
      Typography.fontSize(rebaseH3),
      Typography.leading(28., rebaseH3),
      Typography.mt(28., rebaseH3),
      Typography.mb(8., rebaseH3),
      removeTopMarginFromNextElement,
    ]),
    codeInsideH3,
  ])

  let h3Sm = twStyle([
    sm([
      Typography.fontSize(rebaseH3Sm),
      Typography.leading(32., rebaseH3Sm),
      Typography.mt(32., rebaseH3Sm),
      Typography.mb(12., rebaseH3Sm),
    ]),
  ])

  let h3Lg = twStyle([
    lg([
      Typography.fontSize(rebaseH3Lg),
      Typography.mt(40., rebaseH3Lg),
      Typography.mb(16., rebaseH3Lg),
      Typography.leading(36., rebaseH3Lg),
    ]),
  ])

  let h3Xl = twStyle([
    xl([
      Typography.fontSize(rebaseH3Xl),
      Typography.mt(56., rebaseH3Xl),
      Typography.mb(24., rebaseH3Xl),
      Typography.leading(44., rebaseH3Xl),
    ]),
  ])

  let h3 = merge(. [h3Base, h3Sm, h3Lg, h3Xl])

  let h4Base = twStyle([
    Typography.leading(20., base),
    Typography.mt(20., base),
    Typography.mb(8., base),
    textColor(#coolGray900),
    fontWeight(#600),
    removeTopMarginFromNextElement,
  ])

  let h4Sm = twStyle([
    sm([Typography.mt(24., baseSm), Typography.mb(8., baseSm), Typography.leading(24., baseSm)]),
  ])

  let h4Lg = twStyle([
    lg([Typography.mt(32., baseLg), Typography.mb(8., baseLg), Typography.leading(28., baseLg)]),
  ])

  let h4Xl = twStyle([
    xl([Typography.mt(40., baseXl), Typography.mb(16., baseXl), Typography.leading(36., baseXl)]),
  ])

  let h4 = merge(. [h4Base, h4Sm, h4Lg, h4Xl])

  let rebasePre = 12.
  let rebasePreSm = 14.
  let rebasePreLg = 16.
  let rebasePreXl = 20.
  // ui-monospace,SFMono-Regular,Menlo,Monaco,Consolas,Liberation Mono,Courier New,monospace
  let preBase = twStyle([
    overflowXAuto,
    bg(#coolGray800),
    textColor(#coolGray200),
    Typography.fontSize(rebasePre),
    Typography.leading(20., rebasePre),
    Typography.my(20., rebasePre),
    Typography.px(12., rebasePre),
    Typography.py(8., rebasePre),
    rounded(#default),
    selector(
      "& code",
      [
        border(#0),
        fontWeight(#400),
        borderR(#0),
        bg(#transparent),
        p(#0),
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
        before([contentNone]),
        after([contentNone]),
      ],
    ),
  ])
  let preSm = twStyle([
    sm([
      Typography.fontSize(rebasePreSm),
      Typography.leading(24., rebasePreSm),
      Typography.my(24., rebasePreSm),
      Typography.px(16., rebasePreSm),
      Typography.py(12., rebasePreSm),
    ]),
  ])

  let preLg = twStyle([
    lg([
      Typography.fontSize(rebasePreLg),
      Typography.leading(28., rebasePreLg),
      Typography.my(32., rebasePreLg),
      Typography.px(24., rebasePreLg),
      Typography.py(16., rebasePreLg),
      rounded(#md),
    ]),
  ])

  let preXl = twStyle([
    xl([
      Typography.fontSize(rebasePreXl),
      Typography.leading(36., rebasePreXl),
      Typography.my(40., rebasePreXl),
      Typography.px(32., rebasePreXl),
      Typography.py(24., rebasePreXl),
      rounded(#lg),
    ]),
  ])

  let pre = merge(. [preBase, preSm, preLg, preXl])

  // INFO: List Styles

  let nestedListBase = twStyle([selector("& ul, & ol", [Typography.my(8., base)])])
  let nestedListSm = twStyle([sm([selector("& ul, & ol", [Typography.my(12., baseSm)])])])
  let nestedListLg = twStyle([lg([selector("& ul, & ol", [Typography.my(16., baseLg)])])])
  let nestedListXl = twStyle([xl([selector("& ul, & ol", [Typography.my(16., baseXl)])])])
  let nestedList = merge(. [nestedListBase, nestedListSm, nestedListLg, nestedListXl])

  let listPaddingBase = twStyle([Typography.my(16., base)])
  let listPaddingSm = twStyle([sm([Typography.my(20., baseSm)])])
  let listPaddingLg = twStyle([lg([Typography.my(24., baseLg)])])
  let listPaddingXl = twStyle([xl([Typography.my(32., baseXl)])])
  let listPadding = merge(. [listPaddingBase, listPaddingSm, listPaddingLg, listPaddingXl])

  // | #circle
  // | #decimal
  // | #disc
  // | #lowerAlpha
  // | #lowerGreek
  // | #lowerLatin
  // | #lowerRoman
  // | #none
  // | #square
  // | #unset
  // | #upperAlpha
  // | #upperLatin
  // | #upperRoman

  let liBase = twStyle([
    relative,
    textColor(#coolGray700),
    Typography.my(4., base),
    Typography.pl(22., base),
    Typography.leading(24., base),
    selector(
      "& > *",
      [firstChild([Typography.mt(16., base)]), lastChild([Typography.mb(16., base)])],
    ),
  ])

  let liSm = twStyle([
    sm([
      Typography.my(8., baseSm),
      selector(
        "& > *",
        [firstChild([Typography.mt(20., baseSm)]), lastChild([Typography.mb(20., baseSm)])],
      ),
    ]),
  ])

  let liLg = twStyle([
    lg([
      Typography.my(12., baseLg),
      selector(
        "& > *",
        [firstChild([Typography.mt(24., baseLg)]), lastChild([Typography.mb(24., baseLg)])],
      ),
    ]),
  ])

  let liXl = twStyle([
    xl([
      Typography.my(12., baseXl),
      selector(
        "& > *",
        [firstChild([Typography.mt(32., baseXl)]), lastChild([Typography.mb(32., baseXl)])],
      ),
    ]),
  ])

  let li = merge(. [liBase, liSm, liLg, liXl])

  type listStyleType = [
    | #decimal
    | #lowerAlpha
    | #lowerGreek
    | #lowerLatin
    | #lowerRoman
    | #upperAlpha
    | #upperLatin
    | #upperRoman
  ]

  let olItemsBase = (listStyleType: listStyleType) => {
    let selectedType = switch listStyleType {
    | #decimal => #decimal
    | #upperAlpha => #upperAlpha
    | #upperLatin => #upperLatin
    | #upperRoman => #upperRoman
    | #lowerAlpha => #lowerAlpha
    | #lowerGreek => #lowerGreek
    | #lowerLatin => #lowerLatin
    | #lowerRoman => #lowerRoman
    }
    twStyle([
      selector(
        "& > li",
        [
          before([
            [CssJs.contentRules([#counter("list-item", selectedType), #text(".")])],
            absolute,
            fontWeight(#400),
            textColor(#coolGray500),
            left(#0),
          ]),
        ],
      ),
    ])
  }
  // }

  let olItemsSm = twStyle([sm([selector("& > li", [Typography.pl(28., baseSm)])])])
  let olItemsLg = twStyle([lg([selector("& > li", [Typography.pl(30., baseLg)])])])
  let olItemsXl = twStyle([xl([selector("& > li", [Typography.pl(40., baseXl)])])])

  let olItems = merge(. [olItemsBase(#decimal), olItemsSm, olItemsLg, olItemsXl])

  let ol = merge(. [listPadding, olItems, nestedList])

  let ulElementsBase = twStyle([
    selector(
      "& > li",
      [
        Typography.pl(30., baseLg),
        before([
          absolute,
          contentText(""),
          bg(#coolGray300),
          rounded(#full),
          Typography.square(5., base),
          Typography.topCalc(#sub(24. /. 2., 2.5), ~base),
          Typography.left(3., base),
        ]),
      ],
    ),
  ])

  let ulElementsSm = twStyle([
    sm([
      selector(
        "& > li",
        [
          Typography.pl(28., baseSm),
          before([
            Typography.square(6., baseSm),
            Typography.topCalc(#sub(28. /. 2., 3.), ~base=baseSm),
            Typography.left(4., baseSm),
          ]),
        ],
      ),
    ]),
  ])

  let ulElementsLg = twStyle([
    lg([
      selector(
        "& > li",
        [
          Typography.pl(30., baseLg),
          before([
            Typography.square(6., baseLg),
            Typography.topCalc(#sub(32. /. 2., 3.), ~base=baseLg),
            Typography.left(4., baseLg),
          ]),
        ],
      ),
    ]),
  ])

  let ulElementsXl = twStyle([
    xl([
      selector(
        "& > li",
        [
          Typography.pl(40., baseXl),
          before([
            Typography.square(8., baseXl),
            Typography.topCalc(#sub(40. /. 2., 4.), ~base=baseXl),
            Typography.left(6., baseXl),
          ]),
        ],
      ),
    ]),
  ])

  let ulElements = merge(. [ulElementsBase, ulElementsSm, ulElementsLg, ulElementsXl])

  let liParagraphBase = twStyle([selector("& > li p", [Typography.my(8., base)])])
  let liParagraphSm = twStyle([sm([selector("& > li p", [Typography.my(12., baseSm)])])])
  let liParagraphLg = twStyle([lg([selector("& > li p", [Typography.my(16., baseLg)])])])
  let liParagraphXl = twStyle([xl([selector("& > li p", [Typography.my(20., baseXl)])])])

  let liParagraph = merge(. [liParagraphBase, liParagraphSm, liParagraphLg, liParagraphXl])

  let ul = merge(. [listPadding, ulElements, liParagraph, nestedList])
  // HACK: Increase specifity because styles are not applied
  let anyChild = selector("&& > *", [my(#0)])

  let rebaseFigcaption = 12.
  let rebaseFigcaptionSm = 14.
  let rebaseFigcaptionLg = 16.
  let rebaseFigcaptionXl = 20.
  // HACK: Increase specifity because styles are not applied
  let figureFigcaptionBase = twStyle([
    selector(
      "&& figcaption",
      [
        Typography.fontSize(rebaseFigcaption),
        Typography.leading(16., rebaseFigcaption),
        Typography.mt(8., rebaseFigcaption),
        textColor(#coolGray500),
      ],
    ),
  ])

  let figureFigcaptionSm = twStyle([
    sm([
      selector(
        "&& figcaption",
        [
          Typography.fontSize(rebaseFigcaptionSm),
          Typography.leading(20., rebaseFigcaptionSm),
          Typography.mt(12., rebaseFigcaptionSm),
        ],
      ),
    ]),
  ])

  let figureFigcaptionLg = twStyle([
    lg([
      selector(
        "&& figcaption",
        [
          Typography.fontSize(rebaseFigcaptionLg),
          Typography.leading(24., rebaseFigcaptionLg),
          Typography.mt(16., rebaseFigcaptionLg),
        ],
      ),
    ]),
  ])

  let figureFigcaptionXl = twStyle([
    xl([
      selector(
        "&& figcaption",
        [
          Typography.fontSize(rebaseFigcaptionXl),
          Typography.leading(32., rebaseFigcaptionXl),
          Typography.mt(20., rebaseFigcaptionXl),
        ],
      ),
    ]),
  ])

  let figureFigcaption = merge(. [
    figureFigcaptionBase,
    figureFigcaptionSm,
    figureFigcaptionLg,
    figureFigcaptionXl,
  ])
  // base video: {
  //   marginTop: em(24, 14),
  //   marginBottom: em(24, 14),
  //      sm video: {
  //         marginTop: em(32, 16),
  //         marginBottom: em(32, 16),
  //       },
  //      lg video: {
  //         marginTop: em(32, 18),
  //         marginBottom: em(32, 18),
  //       },
  // xl video: {
  //   marginTop: em(48, 24),
  //   marginBottom: em(48, 24),
  // },

  let figureBase = merge(. [twStyle([Typography.my(24., base), anyChild]), figureFigcaption])

  let figureSm = twStyle([sm([Typography.my(32., baseSm)])])
  let figureLg = twStyle([lg([Typography.my(32., baseLg)])])
  let figureXl = twStyle([xl([Typography.my(48., baseXl)])])

  let figure = merge(. [figureBase, figureSm, figureLg, figureXl])

  let imgBase = twStyle([Typography.my(24., base)])
  let imgSm = twStyle([sm([Typography.my(32., baseSm)])])
  let imgLg = twStyle([lg([Typography.my(32., baseLg)])])
  let imgXl = twStyle([xl([Typography.my(48., baseXl)])])

  let img = merge(. [imgBase, imgSm, imgLg, imgXl])

  let rebaseTable = 12.
  let rebaseTableSm = 14.
  let rebaseTableLg = 16.
  let rebaseTableXl = 20.

  let tableBase = twStyle([
    Typography.fontSize(rebaseTable),
    Typography.leading(18., rebaseTable),
    Typography.my(24., rebaseTable),
    w(#full),
    tableAuto,
    textLeft,
  ])

  let tableSm = twStyle([
    sm([Typography.fontSize(rebaseTableSm), Typography.leading(24., rebaseTableSm)]),
  ])
  let tableLg = twStyle([
    lg([Typography.fontSize(rebaseTableLg), Typography.leading(24., rebaseTableLg)]),
  ])
  let tableXl = twStyle([
    xl([Typography.fontSize(rebaseTableXl), Typography.leading(28., rebaseTableXl)]),
  ])

  let table = merge(. [tableBase, tableSm, tableLg, tableXl])

  let theadThBase = twStyle([
    selector(
      "& th",
      [
        Typography.px(12., rebaseTable),
        Typography.pb(8., rebaseTable),
        firstChild([pl(#0)]),
        lastChild([pr(#0)]),
        alignBottom,
      ],
    ),
  ])

  let theadThSm = twStyle([
    sm([selector("& th", [Typography.px(8., rebaseTableSm), Typography.pb(8., rebaseTableSm)])]),
  ])

  let theadThLg = twStyle([
    lg([selector("& th", [Typography.px(12., rebaseTableLg), Typography.pb(12., rebaseTableLg)])]),
  ])

  let theadThXl = twStyle([
    xl([selector("& th", [Typography.px(12., rebaseTableXl), Typography.pb(16., rebaseTableXl)])]),
  ])

  let theadTh = merge(. [theadThBase, theadThSm, theadThLg, theadThXl])

  let thead = merge(. [
    theadTh,
    twStyle([textColor(#coolGray900), fontWeight(#600), borderB(#1), borderColor(#coolGray300)]),
  ])

  let tbodyTdBase = twStyle([
    selector(
      "& td",
      [
        Typography.px(12., rebaseTable),
        Typography.py(8., rebaseTable),
        alignTop,
        textColor(#coolGray700),
        firstChild([pl(#0)]),
        lastChild([pr(#0)]),
      ],
    ),
  ])

  let tbodyTdSm = twStyle([
    sm([selector("& td", [Typography.py(8., rebaseTableSm), Typography.px(8., rebaseTableSm)])]),
  ])

  let tbodyTdLg = twStyle([
    lg([selector("& td", [Typography.py(12., rebaseTableLg), Typography.px(12., rebaseTableLg)])]),
  ])

  let tbodyTdXl = twStyle([
    xl([selector("& td", [Typography.py(16., rebaseTableXl), Typography.px(12., rebaseTableXl)])]),
  ])

  let tbodyTd = merge(. [tbodyTdBase, tbodyTdSm, tbodyTdLg, tbodyTdXl])

  let tbodyTr = selector("& tr", [borderB(#1), borderColor(#coolGray300), lastChild([borderB(#0)])])

  let tbody = merge(. [tbodyTd, twStyle([tbodyTr])])
}

// REGION: Mdx Components

@react.component
let lead = (~children, ~className="") =>
  <p className={Tailwind.merge(. [Styles.lead, className])}> children </p>

@react.component
let wrapper = (~children) =>
  <TypographyLayout>
    <article> <div className={Tailwind.merge(. [Styles.prose])}> children </div> </article>
  </TypographyLayout>

@react.component
let p = (~children, ~className="") =>
  <p className={Tailwind.merge(. [Styles.paragraph, className])}> children </p>

@react.component
let h1 = (~children, ~className="") =>
  <h1 className={Tailwind.merge(. [Styles.h2, className])}> children </h1>

@react.component
let h2 = (~children, ~className="") =>
  <h2 className={Tailwind.merge(. [Styles.h2, className])}> children </h2>

@react.component
let h3 = (~children, ~className="") =>
  <h3 className={Tailwind.merge(. [Styles.h3, className])}> children </h3>

@react.component
let h4 = (~children, ~className="") =>
  <h4 className={Tailwind.merge(. [Styles.h4, className])}> children </h4>

@react.component
let blockquote = (~children, ~className="") =>
  <blockquote className={Tailwind.merge(. [Styles.blockquote, className])}> children </blockquote>

// REGION: List elements

@react.component
let ul = (~children, ~className="") =>
  <ul className={Tailwind.merge(. [Styles.ul, className])}> children </ul>

@react.component
let ol = (~children, ~className="") =>
  <ol className={Tailwind.merge(. [Styles.ol, className])}> children </ol>

@react.component
let li = (~children, ~className="") =>
  <li className={Tailwind.merge(. [Styles.li, className])}> children </li>

@react.component
let pre = (~children, ~className="") =>
  <pre className={Tailwind.merge(. [Styles.pre, className])}> <code> children </code> </pre>

@react.component
let inlineCode = (~children, ~className="") =>
  <code className={Tailwind.merge(. [Styles.code, className])}> children </code>

@react.component
let em = (~children, ~className="") => <em className> children </em>

@react.component
let strong = (~children, ~className="") =>
  <strong className={Tailwind.merge(. [Styles.strong, className])}> children </strong>

// @react.component
// let del = (~children, ~className="") => <del className> children </del>

@react.component
let hr = (~className="") => <hr className={Tailwind.merge(. [Styles.hr, className])} />

@react.component
let a = (~children, ~href="/", ~className="", ~ariaLabel="") =>
  <Link ariaLabel className={Tailwind.merge(. [Styles.link, className])} href> children </Link>

@react.component
let img = (~src, ~alt="", ~className="", ~figcaption=?) =>
  switch figcaption {
  | None =>
    <figure className=Styles.figure>
      <Next.Image
        src alt width=1920 height=1271 className={Tailwind.merge(. [Styles.img, className])}
      />
    </figure>
  | Some(string) =>
    <figure className=Styles.figure>
      <Next.Image
        src alt width=1920 height=1271 className={Tailwind.merge(. [Styles.img, className])}
      />
      <figcaption> string </figcaption>
    </figure>
  }

// REGION: Table elements

@react.component
let table = (~children, ~className="") =>
  <table className={Tailwind.merge(. [Styles.table, className])}> children </table>

@react.component
let thead = (~children, ~className="") =>
  <thead className={Tailwind.merge(. [Styles.thead, className])}> children </thead>

@react.component
let tbody = (~children, ~className="") =>
  <tbody className={Tailwind.merge(. [Styles.tbody, className])}> children </tbody>

@react.component
let tr = (~children, ~className="") => <tr className> children </tr>

@react.component
let td = (~children, ~className="") => <td className> children </td>
