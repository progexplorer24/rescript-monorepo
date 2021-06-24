open Next
open Utils

/*
  TODO: load static font files?
  1. Prepare information about different strategies and give their pros and cons.

  TODO: build layout component

  TODO: create module and convert all unicode characters with proper documentation

  TODO: Utils functions - expand list of convienient functions

  TODO: code snippets

  TODO: Setup Headwind regexp for tailwind ppx

  TODO: Decide on proper svg loading strategy - create icons components for Rescript?

  TODO: Automate generating new tailwind.css file after tailiwnd.config change 
        - Write documentation about how to reload tailwind.css file
*/

// INFO: This is how you could declare font face if you want to self-host your fonts.
/*
 {

    let latoThinnest = fontFace(
    ~fontFamily="Lato",
    ~src=[
      url("../../fonts/omnifood/lato-v17-latin-100.woff2"),
      url("../../fonts/omnifood/lato-v17-latin-100.woff"),
    ],
    ~fontStyle=#normal,
    ~fontWeight=#num(100),
    (),
  )

  let latoThin = fontFace(
    ~fontFamily="Lato",
    ~src=[
      url("../../fonts/omnifood/lato-v17-latin-300.woff2"),
      url("../../fonts/omnifood/lato-v17-latin-300.woff"),
    ],
    ~fontStyle=#normal,
    ~fontWeight=#num(300),
    (),
  )

  let latoThinItalic = fontFace(
    ~fontFamily="Lato",
    ~src=[
      url("../../fonts/omnifood/lato-v17-latin-300italic.woff2"),
      url("../../fonts/omnifood/lato-v17-latin-300italic.woff"),
    ],
    ~fontStyle=#italic,
    ~fontWeight=#num(300),
    (),
  )

  let latoRegular = fontFace(
    ~fontFamily="Lato",
    ~src=[
      url("../../fonts/omnifood/lato-v17-latin-regular.woff2"),
      url("../../fonts/omnifood/lato-v17-latin-regular.woff"),
    ],
    ~fontStyle=#normal,
    ~fontWeight=#num(400),
    (),
  )
  }
*/

module Styles = {
  open CssJs

  let mainOrange = "e67e22"

  let omnifoodSm = Tailwind.minWBreakpoint(481)
  let omnifoodMd = Tailwind.minWBreakpoint(767)

  let smallGlobal = style(. [
    media("screen and (max-width: 767px)", [overflowX(#hidden), fontSize(#px(15))]),
  ])

  let mediumBreakpointGlobal = style(. [
    media("screen and (max-width: 1023px)", [fontSize(#px(18))]),
  ])

  let globalStyles = CssJs.merge(. [
    style(. [
      backgroundColor(hex("fff")),
      color(hex("555")),
      fontSize(px(20)),
      fontWeight(#num(300)),
      fontFamily(#custom("Lato")),
    ]),
    mediumBreakpointGlobal,
    smallGlobal,
  ])

  let smallRow = style(. [
    media("screen and (max-width: 767px)", [padding2(~v=#px(0), ~h=#percent(4.))]),
  ])

  let largeBreakpointRow = style(. [
    media("screen and (max-width: 1200px)", [padding2(~v=#px(0), ~h=#percent(2.))]),
  ])

  let row = CssJs.merge(. [
    style(. [maxWidth(px(1140)), margin2(~v=#zero, ~h=#auto)]),
    largeBreakpointRow,
    smallRow,
  ])

  let headerStyles = style(. [
    backgrounds([
      linearGradient(
        deg(0.),
        list{
          (zero, #rgba(0, 0, 0, #percent(70.))),
          (#percent(100.), #rgba(0, 0, 0, #percent(70.))),
        },
      ),
      url("/omnifood/hero.jpg"),
    ]),
    height(#vh(Belt.Int.toFloat(100))),
    backgroundSize(#cover),
    backgroundPosition(#center),
    backgroundAttachment(#fixed),
  ])

  let smallTextBox = style(. [
    media(
      "screen and (max-width: 767px)",
      [width(#percent(100.)), padding2(~v=#px(0), ~h=#percent(4.))],
    ),
  ])

  let largeBreakpointTextBox = style(. [
    media(
      "screen and (max-width: 1200px)",
      [width(#percent(100.)), padding2(~v=#px(0), ~h=#percent(2.))],
    ),
  ])

  let textBox = CssJs.merge(. [
    style(. [
      position(#absolute),
      width(px(1140)),
      top(#percent(Belt.Int.toFloat(50))),
      left(#percent(Belt.Int.toFloat(50))),
      transform(#translate(#percent(Belt.Int.toFloat(-50)), #percent(Belt.Int.toFloat(-50)))),
    ]),
    largeBreakpointTextBox,
    smallTextBox,
  ])

  let headingStyles = style(. [fontWeight(#num(300)), textTransform(#uppercase)])

  let smallH1 = style(. [media("screen and (max-width: 767px)", [fontSize(#percent(180.))])])

  let h1 = CssJs.merge(. [
    style(. [
      margin(#zero),
      color(hex("fff")),
      fontSize(#percent(240.)),
      marginBottom(px(20)),
      letterSpacing(#px(1)),
    ]),
    smallH1,
  ])

  let btn = style(. [
    display(#inlineBlock),
    padding2(~v=px(10), ~h=px(30)),
    fontWeight(#num(300)),
    borderRadius(#px(200)),
    transition("background-color, color, border", ~duration=200),
  ])

  let btnHover = style(. [hover([backgroundColor(hex("cf6d17"))])])

  let hoverStyles2 = style(. [hover([color(hex("fff")), border(px(1), solid, #hex("cf6d17"))])])

  let btnFull = merge(. [
    btn,
    btnHover,
    style(. [backgroundColor(hex("e67e22")), color(#hex("fff")), marginRight(px(15))]),
  ])

  let btnGhost = merge(. [
    btn,
    btnHover,
    hoverStyles2,
    style(. [border(px(1), solid, #hex("e67e22")), color(#hex("e67e22"))]),
  ])

  let logo = style(. [
    height(px(50)),
    width(#auto),
    CssJs.float(#left),
    marginTop(px(5)),
    marginBottom(px(5)),
  ])

  let stickyNav = style(. [
    position(#fixed),
    top(#px(0)),
    left(#px(0)),
    width(#percent(100.)),
    backgroundColor(#rgba(255, 255, 255, #percent(98.))),
    boxShadow(Shadow.box(~x=#px(0), ~y=#px(2), ~blur=#px(2), #hex("efefef"))),
    zIndex(9999),
  ])

  // let smallMainNav = style(.[media("screen and (max-width: 767px)", [display(#none)])])

  let mainNavSticky = style(. [color(#hex("555"))])

  let mainNav = CssJs.merge(. [style(. [CssJs.float(#right), marginTop(px(18))]), mainNavSticky])

  let liNav = style(. [display(#inlineBlock), marginLeft(#px(40))])

  let linkBase = style(. [
    color(#hex("555")),
    textTransform(#uppercase),
    fontSize(#percent(90.)),
    borderBottom(#px(2), #solid, #transparent),
    transition("border-bottom", ~duration=200),
    padding2(~v=px(16), ~h=#zero),
  ])

  let linkHover = style(. [hover([borderBottom(#px(2), #solid, #hex(mainOrange))])])

  let link = merge(. [linkBase, linkHover])

  // NOTE: This part is a features section

  let h2After = style(. [
    after([
      display(#block),
      height(#px(2)),
      backgroundColor(#hex(mainOrange)),
      contentRule(#text(" ")),
      width(#px(100)),
      margin2(~v=#px(0), ~h=#auto),
      marginTop(#px(30)),
    ]),
  ])

  let h2Small = style(. [media("screen and (max-width: 767px)", [fontSize(#percent(150.))])])

  let h2 = CssJs.merge(. [
    headingStyles,
    style(. [
      fontSize(#percent(180.)),
      wordSpacing(px(2)),
      textAlign(#center),
      marginBottom(#px(30)),
      letterSpacing(#px(1)),
    ]),
    h2After,
    h2Small,
  ])

  let h3 = CssJs.merge(. [
    headingStyles,
    style(. [fontSize(#percent(110.)), marginBottom(#px(15))]),
  ])

  let smallP = style(. [
    media("screen and (max-width: 767px)", [width(#percent(100.)), marginLeft(#px(0))]),
  ])

  let mediumP = style(. [
    media("screen and (max-width: 1023px)", [width(#percent(80.)), marginLeft(#percent(10.))]),
  ])

  let p = CssJs.merge(. [
    style(. [
      lineHeight(#percent(140.)),
      width(#percent(70.)),
      marginLeft(#percent(15.)),
      marginBottom(#px(40)),
    ]),
    mediumP,
    smallP,
  ])

  let featuresParagraph = style(. [fontSize(#percent(90.)), lineHeight(#percent(140.))])

  let box = style(. [padding(#percent(1.))])

  // NOTE: Icon styles
  let bigIcons = CssJs.merge(. [
    style(. [color(#hex(mainOrange)), marginBottom(#px(10))]),
    Tailwind.twStyle([Tailwind.w(#v16), Tailwind.h(#v16), Tailwind.block, Tailwind.fillCurrent]),
  ])

  // NOTE: Favourite meals

  let clearfix = style(. [
    after([
      contentRule(#text(".")),
      clear(#both),
      display(#block),
      height(#px(0)),
      visibility(#hidden),
    ]),
  ])

  let mealsShowcase = CssJs.merge(. [style(. [width(#percent(100.))]), clearfix])

  let mealsLi = style(. [display(#block), CssJs.float(#left), width(#percent(25.))])

  let mealFigure = style(. [
    width(#percent(100.)),
    margin(#px(0)),
    overflow(#hidden),
    backgroundColor(#hex("000000")),
  ])

  let mealImgHover = style(. [hover([transform(#scale(1., 1.)), opacity(1.)])])

  let mealImg = CssJs.merge(. [
    style(. [
      width(#percent(100.)),
      height(#auto),
      transform(#scale(1.15, 1.15)),
      transitions([
        Transition.shorthand("transform", ~duration=500),
        Transition.shorthand("opacity", ~duration=500),
      ]),
      opacity(0.7),
    ]),
    mealImgHover,
  ])

  // NOTE: How it works section

  let smallStepsBox = style(. [media("screen and (max-width: 767px)", [marginTop(#px(10))])])

  let mediumStepsBox = style(. [media("screen and (max-width: 1023px)", [marginTop(#px(10))])])

  let stepsBox = CssJs.merge(. [style(. [marginTop(#px(30))]), mediumStepsBox, smallStepsBox])

  let smallLeftSection = style(. [
    media("screen and (max-width: 767px)", [textAlign(#center), paddingRight(#px(0))]),
  ])

  let leftSection = CssJs.merge(. [
    stepsBox,
    style(. [textAlign(#right), paddingRight(#percent(10.))]),
    smallLeftSection,
  ])

  let rightSection = CssJs.merge(. [
    stepsBox,
    style(. [paddingLeft(#percent(3.)), marginTop(#px(70))]),
  ])

  let smallAppScreen = style(. [media("screen and (max-width: 767px)", [width(#percent(40.))])])

  let mediumAppScreen = style(. [media("screen and (max-width: 1023px)", [width(#percent(50.))])])

  let appScreen = CssJs.merge(. [
    style(. [width(#percent(40.)), display(#inlineBlock)]),
    mediumAppScreen,
    smallAppScreen,
  ])

  let smallWorkStop = style(. [media("screen and (max-width: 767px)", [marginBottom(#px(20))])])

  let mediumWorkStop = style(. [media("screen and (max-width: 1023px)", [marginBottom(#px(40))])])

  let worksStop = CssJs.merge(. [
    Tailwind.twStyle([Tailwind.flex, Tailwind.itemsCenter, omnifoodMd([Tailwind.itemsStart])]),
    style(. [overflow(#auto), marginBottom(#px(50))]),
    mediumWorkStop,
    smallWorkStop,
  ])

  let lastWorkStop = CssJs.merge(. [worksStop, style(. [marginBottom(#px(80))])])

  let smallWorkStopNumber = style(. [
    media(
      "screen and (max-width: 767px)",
      [
        height(#px(40)),
        width(#px(40)),
        marginRight(#px(15)),
        padding(#px(4)),
        fontSize(#percent(120.)),
      ],
    ),
  ])

  let workStopNumber = CssJs.merge(. [
    Tailwind.twStyle([Tailwind.flexShrink0]),
    style(. [
      color(#hex(mainOrange)),
      border(px(2), #solid, #hex(mainOrange)),
      display(#inlineBlock),
      borderRadius(#percent(50.)),
      width(#px(50)),
      height(#px(50)),
      textAlign(#center),
      CssJs.float(#left),
      fontSize(#percent(150.)),
      marginRight(#px(25)),
      padding(#px(5)),
    ]),
    smallWorkStopNumber,
  ])

  let btnAppImage = style(. [
    height(#px(50)),
    width(#auto),
    marginRight(#px(10)),
    display(#inlineBlock),
  ])

  let xsSection = style(. [
    media("screen and (max-width: 480px)", [padding2(~v=#px(25), ~h=#px(0))]),
  ])

  let smallSection = style(. [padding2(~v=#px(30), ~h=#px(0))])

  let mediumSection = style(. [
    media("screen and (max-width: 1023px)", [padding2(~v=#px(60), ~h=#px(0))]),
  ])

  let section = CssJs.merge(. [
    style(. [padding2(~v=px(80), ~h=px(0))]),
    mediumSection,
    smallSection,
    xsSection,
  ])

  let sectionSteps = CssJs.merge(. [section, style(. [backgroundColor(#hex("f4f4f4"))])])

  // NOTE: Cities section

  let boxImage = style(. [width(#percent(100.)), height(#auto), marginBottom(#px(15))])

  let mediumCityFeature = style(. [
    media("screen and (max-width: 1023px)", [fontSize(#percent(90.))]),
  ])

  let cityFeature = CssJs.merge(. [style(. [marginBottom(#px(10))]), mediumCityFeature])

  let fourColumns = CssJs.merge(. [
    Tailwind.twStyle([
      Tailwind.grid,
      Tailwind.gridCols(#v1),
      Tailwind.gap(#v6),
      omnifoodMd([Tailwind.gridCols(#v4)]),
    ]),
    row,
  ])

  let mediumIconSmall = style(. [
    media("screen and (max-width: 1023px)", [width(#px(16)), marginRight(#px(5))]),
  ])

  let iconSmall = CssJs.merge(. [
    style(. [
      display(#inlineBlock),
      width(#px(30)),
      textAlign(#center),
      fontSize(#percent(120.)),
      color(#hex(mainOrange)),
      SVG.fill(#currentColor),
      lineHeight(#percent(120.)),
      verticalAlign(#middle),
      marginTop(#px(-6)),
      marginRight(#px(10)),
    ]),
    mediumIconSmall,
  ])

  let twitterHover = style(. [
    hover([color(#hex("555")), borderBottom(#px(1), #solid, #transparent)]),
  ])

  let twitterLink = CssJs.merge(. [
    style(. [
      color(#hex(mainOrange)),
      borderBottom(#px(1), #solid, #hex(mainOrange)),
      paddingBottom(#px(1)),
      transition("background-color", ~duration=200),
      transition("border", ~duration=200),
    ]),
    twitterHover,
  ])

  // NOTE: Customer experiance

  let threeColumns = CssJs.merge(. [
    Tailwind.twStyle([
      Tailwind.grid,
      Tailwind.gridCols(#v1),
      omnifoodSm([Tailwind.gridCols(#v3), Tailwind.gap(#v6)]),
    ]),
    row,
  ])

  let customerSection = CssJs.merge(. [
    section,
    style(. [
      backgrounds([
        linearGradient(
          deg(0.),
          list{
            (zero, #rgba(0, 0, 0, #percent(80.))),
            (#percent(100.), #rgba(0, 0, 0, #percent(80.))),
          },
        ),
        #url("/omnifood/back-customers.jpg"),
      ]),
      backgroundSize(#cover),
      backgroundAttachment(#fixed),
    ]),
    Tailwind.twStyle([Tailwind.textColor(#white)]),
  ])

  let blockquoteBefore = style(. [
    before([
      contentRule(#text(lsquo)),
      fontSize(#percent(500.)),
      display(#block),
      position(#absolute),
      top(#px(-5)),
      left(#px(-5)),
    ]),
  ])

  let blockquote = CssJs.merge(. [
    style(. [
      padding(#percent(2.)),
      fontStyle(#italic),
      lineHeight(#percent(145.)),
      position(#relative),
      marginTop(#px(40)),
    ]),
    blockquoteBefore,
  ])

  let cite = style(. [fontSize(#percent(90.)), marginTop(#px(25)), display(#block)])

  let customerImage = style(. [
    height(#px(45)),
    borderRadius(#percent(50.)),
    marginRight(#px(10)),
    verticalAlign(#middle),
    display(#inlineBlock),
  ])

  // NOTE: Pricing plans

  let sectionPlans = CssJs.merge(. [section, style(. [backgroundColor(#hex("f4f4f4"))])])

  let mediumPlanBox = style(. [
    media("screen and (max-width: 1023px)", [width(#percent(100.)), marginLeft(#px(0))]),
  ])

  let planBox = CssJs.merge(. [
    style(. [
      backgroundColor(#hex("fff")),
      borderRadius(#px(5)),
      boxShadow(Shadow.box(~x=px(0), ~y=px(2), ~blur=px(2), #hex("efefef"))),
    ]),
    mediumPlanBox,
  ])

  let mediumPlanBoxDiv = style(. [media("screen and (max-width: 1023px)", [padding(#px(20))])])

  let planBoxDiv = CssJs.merge(. [
    style(. [padding(#px(40)), borderBottom(#px(1), #solid, #rgb(243, 244, 246))]),
    mediumPlanBoxDiv,
  ])

  let threeColumnsPricing = CssJs.merge(. [
    Tailwind.twStyle([Tailwind.grid, Tailwind.gap(#v6), omnifoodMd([Tailwind.gridCols(#v3)])]),
    row,
  ])

  let smPlanPrice = style(. [media("screen and (max-width: 1023px)", [fontSize(#percent(300.))])])

  let mediumPlanPrice = style(. [
    media("screen and (max-width: 1023px)", [fontSize(#percent(250.))]),
  ])

  let planPrice = CssJs.merge(. [
    style(. [
      fontSize(#percent(300.)),
      marginBottom(#px(10)),
      fontWeight(#num(100)),
      color(#hex(mainOrange)),
    ]),
    mediumPlanPrice,
    smPlanPrice,
  ])

  let planPriceSpan = style(. [fontSize(#percent(30.)), fontWeight(#num(300))])

  let smallPlanPriceMeal = style(. [
    media("screen and (max-width: 1023px)", [fontSize(#percent(100.))]),
  ])

  let planPriceMeal = CssJs.merge(. [style(. [fontSize(#percent(80.))]), smallPlanPriceMeal])

  let planBoxLi = style(. [padding2(~h=px(0), ~v=px(5))])

  let buttonSection = CssJs.merge(. [
    planBoxDiv,
    style(. [textAlign(#center), borderBottom(#px(1), #solid, #transparent)]),
  ])

  let priceSection = CssJs.merge(. [
    planBoxDiv,
    style(. [
      backgroundColor(#hex("fcfcfc")),
      borderTopRightRadius(#px(5)),
      borderTopLeftRadius(#px(5)),
    ]),
  ])

  // NOTE: Contact form

  let xsContactForm = style(. [media("screen and (max-width: 1023px)", [width(#percent(100.))])])

  let mediumContactForm = style(. [width(#percent(80.))])

  let contactForm = CssJs.merge(. [
    style(. [width(#percent(60.)), margin2(~v=#px(0), ~h=#auto)]),
    mediumContactForm,
    xsContactForm,
  ])

  let inputStyles = style(. [
    width(#percent(100.)),
    padding(#px(7)),
    borderRadius(#px(3)),
    border(#px(1), #solid, #hex("ccc")),
    margin2(~v=#px(5), ~h=#px(0)),
  ])

  let textareaStyles = CssJs.merge(. [inputStyles, style(. [height(#percent(100.))])])

  let checkboxStyles = style(. [
    margin4(~top=#px(10), ~right=#px(5), ~bottom=#px(10), ~left=#px(0)),
  ])

  // NOTE: Footer Section

  let twoColumns = CssJs.merge(. [
    Tailwind.twStyle([Tailwind.grid, Tailwind.gridCols(#v2), Tailwind.gap(#v6)]),
    row,
  ])

  let footer = style(. [backgroundColor(#hex("333")), padding2(~v=#px(20), ~h=#px(0))])

  let footerNav = style(. [CssJs.float(#left)])

  let socialLinks = style(. [CssJs.float(#right)])

  let footerLi = style(. [display(#inlineBlock), marginRight(#px(20))])
  let lastLi = style(. [display(#inlineBlock), marginRight(#px(0))])

  let linkHover = style(. [hover([color(#hex("ddd"))])])

  let navLink = CssJs.merge(. [
    style(. [textDecoration(#none), borderWidth(#px(0)), color(#hex("AAA"))]),
    linkHover,
  ])

  let iconNav = CssJs.merge(. [iconSmall, style(. [color(#hex("AAA"))]), linkHover])

  let footerText = style(. [color(#hex("AAA")), textAlign(#center), paddingTop(#px(25))])
}

let default = () => {
  <div className=Styles.globalStyles>
    <Head>
      <media name="viewport" content="width=device-width, initial-sacle=1.0" />
      <title> {"Omnifood"->str} </title>
      <link rel="preconnect" href="https://fonts.gstatic.com" />
      <link
        href="https://fonts.googleapis.com/css2?family=Lato:ital,wght@0,100;0,300;0,400;1,300&display=swap"
        rel="stylesheet"
      />
    </Head>
    <header className=Styles.headerStyles>
      <nav className=Styles.stickyNav>
        <div className=Styles.row>
          <img src="/omnifood/logo.png" alt="Omnifood logo" className=Styles.logo />
          <ul className=Styles.mainNav>
            <li className=Styles.liNav>
              <a className=Styles.link href="#"> {"Food delivery"->str} </a>
            </li>
            <li className=Styles.liNav>
              <a className=Styles.link href="#"> {"How it works"->str} </a>
            </li>
            <li className=Styles.liNav>
              <a className=Styles.link href="#"> {"Our cities"->str} </a>
            </li>
            <li className=Styles.liNav>
              <a className=Styles.link href="#"> {"Sign up"->str} </a>
            </li>
          </ul>
        </div>
      </nav>
      <div className=Styles.textBox>
        <h1 className=Styles.h1>
          {"Goodbye junk food."->str} <br /> {"Hello super healthy meals."->str}
        </h1>
        <a href="#pricing" className=Styles.btnFull> {"I'm hungry"->str} </a>
        <a href="#features" className=Styles.btnGhost> {"Show me more"->str} </a>
      </div>
    </header>
    <section className=Styles.section id="features">
      <div className=Styles.row>
        <h2 className=Styles.h2> {`Get food fast ${mdash} not fast food.`->str} </h2>
        <p className=Styles.p>
          {"Hello, we're Omnifood, your new premium food delivery service. We know you're always busy. No time for cooking. So let us take care of that, we're really good at it, we promise!
          "->str}
        </p>
        <div
          className={Tailwind.merge(. [
            Tailwind.twStyle([
              Tailwind.grid,
              Tailwind.mt(#v8),
              Tailwind.gap(#v4),
              Tailwind.gridCols(#v1),
              Styles.omnifoodMd([Tailwind.gridCols(#v4)]),
            ]),
          ])}>
          <div className=Styles.box>
            <svg xmlns="http://www.w3.org/2000/svg" className=Styles.bigIcons viewBox="0 0 512 512">
              <path
                d="M256 256s-48-96-126-96c-54.12 0-98 43-98 96s43.88 96 98 96c37.51 0 71-22.41 94-48M256 256s48 96 126 96c54.12 0 98-43 98-96s-43.88-96-98-96c-37.51 0-71 22.41-94 48"
                fill="none"
                stroke="currentColor"
                strokeLinecap="round"
                strokeMiterlimit="10"
                strokeWidth="32"
              />
            </svg>
            <h3 className=Styles.h3> {"Up to 365 days/year"->str} </h3>
            <p className=Styles.featuresParagraph>
              {"Never cook again! We really mean that. Our subscription plans include up to 365 days/year coverage. You can also choose to order more flexibly if that's your style."->str}
            </p>
          </div>
          <div className=Styles.box>
            <svg xmlns="http://www.w3.org/2000/svg" className=Styles.bigIcons viewBox="0 0 512 512">
              <path
                d="M112.91 128A191.85 191.85 0 0064 254c-1.18 106.35 85.65 193.8 192 194 106.2.2 192-85.83 192-192 0-104.54-83.55-189.61-187.5-192a4.36 4.36 0 00-4.5 4.37V152"
                fill="none"
                stroke="currentColor"
                strokeLinecap="round"
                strokeLinejoin="round"
                strokeWidth="32"
              />
              <path
                d="M233.38 278.63l-79-113a8.13 8.13 0 0111.32-11.32l113 79a32.5 32.5 0 01-37.25 53.26 33.21 33.21 0 01-8.07-7.94z"
              />
            </svg>
            <h3 className=Styles.h3> {"Ready in 20 minutes"->str} </h3>
            <p className=Styles.featuresParagraph>
              {"You're only twenty minutes away from your delicious and super healthy meals delivered right to your home. We work with the best chefs in each town to ensure that you're 100% happy.
            "->str}
            </p>
          </div>
          <div className=Styles.box>
            <svg xmlns="http://www.w3.org/2000/svg" className=Styles.bigIcons viewBox="0 0 512 512">
              <path
                d="M352 128c-32.26-2.89-64 16-96 16s-63.75-19-96-16c-64 6-96 64-96 160 0 80 64 192 111.2 192s51.94-24 80.8-24 33.59 24 80.8 24S448 368 448 288c0-96-29-154-96-160z"
                fill="none"
                stroke="currentColor"
                strokeMiterlimit="10"
                strokeWidth="32"
              />
              <path
                d="M323.92 83.14c-21 21-45.66 27-58.82 28.79a8 8 0 01-9.1-8.73 97.6 97.6 0 0128.61-59.33c22-22 46-26.9 58.72-27.85a8 8 0 018.67 8.92 98 98 0 01-28.08 58.2z"
              />
              <ellipse cx="216" cy="304" rx="24" ry="48" />
              <ellipse cx="296" cy="304" rx="24" ry="48" />
            </svg>
            <h3 className=Styles.h3> {"100% organic"->str} </h3>
            <p className=Styles.featuresParagraph>
              {"All our vegetables are fresh, organic and local. Animals are raised without added hormones or antibiotics. Good for your health, the environment, and it also tastes better!
            "->str}
            </p>
          </div>
          <div className=Styles.box>
            <svg xmlns="http://www.w3.org/2000/svg" className=Styles.bigIcons viewBox="0 0 512 512">
              <circle
                cx="176"
                cy="416"
                r="16"
                fill="none"
                stroke="currentColor"
                strokeLinecap="round"
                strokeLinejoin="round"
                strokeWidth="32"
              />
              <circle
                cx="400"
                cy="416"
                r="16"
                fill="none"
                stroke="currentColor"
                strokeLinecap="round"
                strokeLinejoin="round"
                strokeWidth="32"
              />
              <path
                fill="none"
                stroke="currentColor"
                strokeLinecap="round"
                strokeLinejoin="round"
                strokeWidth="32"
                d="M48 80h64l48 272h256"
              />
              <path
                d="M160 288h249.44a8 8 0 007.85-6.43l28.8-144a8 8 0 00-7.85-9.57H128"
                fill="none"
                stroke="currentColor"
                strokeLinecap="round"
                strokeLinejoin="round"
                strokeWidth="32"
              />
            </svg>
            <h3 className=Styles.h3> {"Order anything"->str} </h3>
            <p className=Styles.featuresParagraph>
              {"We don't limit your creativity, which means you can order whatever you feel like. You can also choose from our menu containing over 100 delicious meals. It's up to you!"->str}
            </p>
          </div>
        </div>
      </div>
    </section>
    <section>
      <ul className=Styles.mealsShowcase>
        <li className=Styles.mealsLi>
          <figure className=Styles.mealFigure>
            <img
              src="/omnifood/1.jpg"
              className=Styles.mealImg
              alt="Korean bibimbap with egg and vegetables"
            />
          </figure>
        </li>
        <li className=Styles.mealsLi>
          <figure className=Styles.mealFigure>
            <img
              src="/omnifood/2.jpg"
              className=Styles.mealImg
              alt="Simple italian pizza with cherry tomatoes"
            />
          </figure>
        </li>
        <li className=Styles.mealsLi>
          <figure className=Styles.mealFigure>
            <img
              src="/omnifood/3.jpg"
              className=Styles.mealImg
              alt="Chicken breast steak with vegetables"
            />
          </figure>
        </li>
        <li className=Styles.mealsLi>
          <figure className=Styles.mealFigure>
            <img src="/omnifood/4.jpg" className=Styles.mealImg alt="Autumn pumpkin soup" />
          </figure>
        </li>
      </ul>
      <ul className=Styles.mealsShowcase>
        <li className=Styles.mealsLi>
          <figure className=Styles.mealFigure>
            <img
              src="/omnifood/5.jpg" className=Styles.mealImg alt="Paleo beef steak with vegetables"
            />
          </figure>
        </li>
        <li className=Styles.mealsLi>
          <figure className=Styles.mealFigure>
            <img
              src="/omnifood/6.jpg"
              className=Styles.mealImg
              alt="Healthy baguette with egg and vegetables"
            />
          </figure>
        </li>
        <li className=Styles.mealsLi>
          <figure className=Styles.mealFigure>
            <img
              src="/omnifood/7.jpg" className=Styles.mealImg alt="Burger with cheddar and bacon"
            />
          </figure>
        </li>
        <li className=Styles.mealsLi>
          <figure className=Styles.mealFigure>
            <img
              src="/omnifood/8.jpg"
              className=Styles.mealImg
              alt="Granola with cherries and strawberries"
            />
          </figure>
        </li>
      </ul>
    </section>
    <section className=Styles.sectionSteps>
      <div className=Styles.row>
        <h2 className=Styles.h2> {`How it works ${mdash} Simple as 1, 2, 3`->str} </h2>
      </div>
      <div
        className={CssJs.merge(. [
          Styles.row,
          Tailwind.twStyle([Tailwind.grid, Styles.omnifoodMd([Tailwind.gridCols(#v2)])]),
        ])}>
        <div className=Styles.leftSection>
          <img
            src="/omnifood/app-iPhone.png" alt="Omnifood app on iPhone" className=Styles.appScreen
          />
        </div>
        <div className=Styles.rightSection>
          <div className=Styles.worksStop>
            <div className=Styles.workStopNumber> {"1"->str} </div>
            <p>
              {"Choose the subscription plan that best fits your needs and sign up today."->str}
            </p>
          </div>
          <div className=Styles.worksStop>
            <div className=Styles.workStopNumber> {"2"->str} </div>
            <p>
              {"Order your delicious meal using our mobile app or website. Or you can even call us!"->str}
            </p>
          </div>
          <div className=Styles.lastWorkStop>
            <div className=Styles.workStopNumber> {"3"->str} </div>
            <p> {"Enjoy your meal after less than 20 minutes. See you the next time!"->str} </p>
          </div>
          <a href="#">
            <img
              className=Styles.btnAppImage src="/omnifood/download-app.svg" alt="App Store Button"
            />
          </a>
          <a href="#">
            <img
              className=Styles.btnAppImage
              src="/omnifood/download-app-android.png"
              alt="Play Store Button"
            />
          </a>
        </div>
      </div>
    </section>
    <section className=Styles.section>
      <div className=Styles.row>
        <h2 className=Styles.h2> {"We're currently in these cities"->str} </h2>
      </div>
      <div className=Styles.fourColumns>
        <div className=Styles.box>
          <img src="/omnifood/lisbon-3.jpg" alt="Lisbon" className=Styles.boxImage />
          <h3 className=Styles.h3> {"Lisbon"->str} </h3>
          <div className=Styles.cityFeature>
            <svg
              xmlns="http://www.w3.org/2000/svg" className=Styles.iconSmall viewBox="0 0 512 512">
              <path
                d="M332.64 64.58C313.18 43.57 286 32 256 32c-30.16 0-57.43 11.5-76.8 32.38-19.58 21.11-29.12 49.8-26.88 80.78C156.76 206.28 203.27 256 256 256s99.16-49.71 103.67-110.82c2.27-30.7-7.33-59.33-27.03-80.6zM432 480H80a31 31 0 01-24.2-11.13c-6.5-7.77-9.12-18.38-7.18-29.11C57.06 392.94 83.4 353.61 124.8 326c36.78-24.51 83.37-38 131.2-38s94.42 13.5 131.2 38c41.4 27.6 67.74 66.93 76.18 113.75 1.94 10.73-.68 21.34-7.18 29.11A31 31 0 01432 480z"
              />
            </svg>
            {"1600+ happy eaters"->str}
          </div>
          <div className=Styles.cityFeature>
            <svg
              xmlns="http://www.w3.org/2000/svg" className=Styles.iconSmall viewBox="0 0 512 512">
              <path
                d="M394 480a16 16 0 01-9.39-3L256 383.76 127.39 477a16 16 0 01-24.55-18.08L153 310.35 23 221.2a16 16 0 019-29.2h160.38l48.4-148.95a16 16 0 0130.44 0l48.4 149H480a16 16 0 019.05 29.2L359 310.35l50.13 148.53A16 16 0 01394 480z"
              />
            </svg>
            {"60+ top chefs"->str}
          </div>
          <div className=Styles.cityFeature>
            <svg
              xmlns="http://www.w3.org/2000/svg" className=Styles.iconSmall viewBox="0 0 512 512">
              <path
                d="M496 109.5a201.8 201.8 0 01-56.55 15.3 97.51 97.51 0 0043.33-53.6 197.74 197.74 0 01-62.56 23.5A99.14 99.14 0 00348.31 64c-54.42 0-98.46 43.4-98.46 96.9a93.21 93.21 0 002.54 22.1 280.7 280.7 0 01-203-101.3A95.69 95.69 0 0036 130.4c0 33.6 17.53 63.3 44 80.7A97.5 97.5 0 0135.22 199v1.2c0 47 34 86.1 79 95a100.76 100.76 0 01-25.94 3.4 94.38 94.38 0 01-18.51-1.8c12.51 38.5 48.92 66.5 92.05 67.3A199.59 199.59 0 0139.5 405.6a203 203 0 01-23.5-1.4A278.68 278.68 0 00166.74 448c181.36 0 280.44-147.7 280.44-275.8 0-4.2-.11-8.4-.31-12.5A198.48 198.48 0 00496 109.5z"
              />
            </svg>
            <a href="#" className=Styles.twitterLink> {"@omnifood_lx"->str} </a>
          </div>
        </div>
        <div className=Styles.box>
          <img src="/omnifood/san-francisco.jpg" className=Styles.boxImage alt="San Francisco" />
          <h3 className=Styles.h3> {"San Francisco"->str} </h3>
          <div className=Styles.cityFeature>
            <svg
              xmlns="http://www.w3.org/2000/svg" className=Styles.iconSmall viewBox="0 0 512 512">
              <path
                d="M332.64 64.58C313.18 43.57 286 32 256 32c-30.16 0-57.43 11.5-76.8 32.38-19.58 21.11-29.12 49.8-26.88 80.78C156.76 206.28 203.27 256 256 256s99.16-49.71 103.67-110.82c2.27-30.7-7.33-59.33-27.03-80.6zM432 480H80a31 31 0 01-24.2-11.13c-6.5-7.77-9.12-18.38-7.18-29.11C57.06 392.94 83.4 353.61 124.8 326c36.78-24.51 83.37-38 131.2-38s94.42 13.5 131.2 38c41.4 27.6 67.74 66.93 76.18 113.75 1.94 10.73-.68 21.34-7.18 29.11A31 31 0 01432 480z"
              />
            </svg>
            {"3700+ happy eaters"->str}
          </div>
          <div className=Styles.cityFeature>
            <svg
              xmlns="http://www.w3.org/2000/svg" className=Styles.iconSmall viewBox="0 0 512 512">
              <path
                d="M394 480a16 16 0 01-9.39-3L256 383.76 127.39 477a16 16 0 01-24.55-18.08L153 310.35 23 221.2a16 16 0 019-29.2h160.38l48.4-148.95a16 16 0 0130.44 0l48.4 149H480a16 16 0 019.05 29.2L359 310.35l50.13 148.53A16 16 0 01394 480z"
              />
            </svg>
            {"160+ top chefs"->str}
          </div>
          <div className=Styles.cityFeature>
            <svg
              xmlns="http://www.w3.org/2000/svg" className=Styles.iconSmall viewBox="0 0 512 512">
              <path
                d="M496 109.5a201.8 201.8 0 01-56.55 15.3 97.51 97.51 0 0043.33-53.6 197.74 197.74 0 01-62.56 23.5A99.14 99.14 0 00348.31 64c-54.42 0-98.46 43.4-98.46 96.9a93.21 93.21 0 002.54 22.1 280.7 280.7 0 01-203-101.3A95.69 95.69 0 0036 130.4c0 33.6 17.53 63.3 44 80.7A97.5 97.5 0 0135.22 199v1.2c0 47 34 86.1 79 95a100.76 100.76 0 01-25.94 3.4 94.38 94.38 0 01-18.51-1.8c12.51 38.5 48.92 66.5 92.05 67.3A199.59 199.59 0 0139.5 405.6a203 203 0 01-23.5-1.4A278.68 278.68 0 00166.74 448c181.36 0 280.44-147.7 280.44-275.8 0-4.2-.11-8.4-.31-12.5A198.48 198.48 0 00496 109.5z"
              />
            </svg>
            <a href="#" className=Styles.twitterLink> {"@omnifood_sf"->str} </a>
          </div>
        </div>
        <div className=Styles.box>
          <img src="/omnifood/berlin.jpg" className=Styles.boxImage alt="Berlin" />
          <h3 className=Styles.h3> {"Berlin"->str} </h3>
          <div className=Styles.cityFeature>
            <svg
              xmlns="http://www.w3.org/2000/svg" className=Styles.iconSmall viewBox="0 0 512 512">
              <path
                d="M332.64 64.58C313.18 43.57 286 32 256 32c-30.16 0-57.43 11.5-76.8 32.38-19.58 21.11-29.12 49.8-26.88 80.78C156.76 206.28 203.27 256 256 256s99.16-49.71 103.67-110.82c2.27-30.7-7.33-59.33-27.03-80.6zM432 480H80a31 31 0 01-24.2-11.13c-6.5-7.77-9.12-18.38-7.18-29.11C57.06 392.94 83.4 353.61 124.8 326c36.78-24.51 83.37-38 131.2-38s94.42 13.5 131.2 38c41.4 27.6 67.74 66.93 76.18 113.75 1.94 10.73-.68 21.34-7.18 29.11A31 31 0 01432 480z"
              />
            </svg>
            {"2300+ happy eaters"->str}
          </div>
          <div className=Styles.cityFeature>
            <svg
              xmlns="http://www.w3.org/2000/svg" className=Styles.iconSmall viewBox="0 0 512 512">
              <path
                d="M394 480a16 16 0 01-9.39-3L256 383.76 127.39 477a16 16 0 01-24.55-18.08L153 310.35 23 221.2a16 16 0 019-29.2h160.38l48.4-148.95a16 16 0 0130.44 0l48.4 149H480a16 16 0 019.05 29.2L359 310.35l50.13 148.53A16 16 0 01394 480z"
              />
            </svg>
            {"110+ top chefs"->str}
          </div>
          <div className=Styles.cityFeature>
            <svg
              xmlns="http://www.w3.org/2000/svg" className=Styles.iconSmall viewBox="0 0 512 512">
              <path
                d="M496 109.5a201.8 201.8 0 01-56.55 15.3 97.51 97.51 0 0043.33-53.6 197.74 197.74 0 01-62.56 23.5A99.14 99.14 0 00348.31 64c-54.42 0-98.46 43.4-98.46 96.9a93.21 93.21 0 002.54 22.1 280.7 280.7 0 01-203-101.3A95.69 95.69 0 0036 130.4c0 33.6 17.53 63.3 44 80.7A97.5 97.5 0 0135.22 199v1.2c0 47 34 86.1 79 95a100.76 100.76 0 01-25.94 3.4 94.38 94.38 0 01-18.51-1.8c12.51 38.5 48.92 66.5 92.05 67.3A199.59 199.59 0 0139.5 405.6a203 203 0 01-23.5-1.4A278.68 278.68 0 00166.74 448c181.36 0 280.44-147.7 280.44-275.8 0-4.2-.11-8.4-.31-12.5A198.48 198.48 0 00496 109.5z"
              />
            </svg>
            <a href="#" className=Styles.twitterLink> {"@omnifood_berlin"->str} </a>
          </div>
        </div>
        <div className=Styles.box>
          <img src="/omnifood/london.jpg" className=Styles.boxImage alt="London" />
          <h3 className=Styles.h3> {"London"->str} </h3>
          <div className=Styles.cityFeature>
            <svg
              xmlns="http://www.w3.org/2000/svg" className=Styles.iconSmall viewBox="0 0 512 512">
              <path
                d="M332.64 64.58C313.18 43.57 286 32 256 32c-30.16 0-57.43 11.5-76.8 32.38-19.58 21.11-29.12 49.8-26.88 80.78C156.76 206.28 203.27 256 256 256s99.16-49.71 103.67-110.82c2.27-30.7-7.33-59.33-27.03-80.6zM432 480H80a31 31 0 01-24.2-11.13c-6.5-7.77-9.12-18.38-7.18-29.11C57.06 392.94 83.4 353.61 124.8 326c36.78-24.51 83.37-38 131.2-38s94.42 13.5 131.2 38c41.4 27.6 67.74 66.93 76.18 113.75 1.94 10.73-.68 21.34-7.18 29.11A31 31 0 01432 480z"
              />
            </svg>
            {"1200+ happy eaters"->str}
          </div>
          <div className=Styles.cityFeature>
            <svg
              xmlns="http://www.w3.org/2000/svg" className=Styles.iconSmall viewBox="0 0 512 512">
              <path
                d="M394 480a16 16 0 01-9.39-3L256 383.76 127.39 477a16 16 0 01-24.55-18.08L153 310.35 23 221.2a16 16 0 019-29.2h160.38l48.4-148.95a16 16 0 0130.44 0l48.4 149H480a16 16 0 019.05 29.2L359 310.35l50.13 148.53A16 16 0 01394 480z"
              />
            </svg>
            {"50+ top chefs"->str}
          </div>
          <div className=Styles.cityFeature>
            <svg
              xmlns="http://www.w3.org/2000/svg" className=Styles.iconSmall viewBox="0 0 512 512">
              <path
                d="M496 109.5a201.8 201.8 0 01-56.55 15.3 97.51 97.51 0 0043.33-53.6 197.74 197.74 0 01-62.56 23.5A99.14 99.14 0 00348.31 64c-54.42 0-98.46 43.4-98.46 96.9a93.21 93.21 0 002.54 22.1 280.7 280.7 0 01-203-101.3A95.69 95.69 0 0036 130.4c0 33.6 17.53 63.3 44 80.7A97.5 97.5 0 0135.22 199v1.2c0 47 34 86.1 79 95a100.76 100.76 0 01-25.94 3.4 94.38 94.38 0 01-18.51-1.8c12.51 38.5 48.92 66.5 92.05 67.3A199.59 199.59 0 0139.5 405.6a203 203 0 01-23.5-1.4A278.68 278.68 0 00166.74 448c181.36 0 280.44-147.7 280.44-275.8 0-4.2-.11-8.4-.31-12.5A198.48 198.48 0 00496 109.5z"
              />
            </svg>
            <a href="#" className=Styles.twitterLink> {"@omnifood_london"->str} </a>
          </div>
        </div>
      </div>
    </section>
    <section className=Styles.customerSection>
      <div className=Styles.row>
        <h2 className=Styles.h2> {"Our customers can't live without us"->str} </h2>
      </div>
      <div
        className={CssJs.merge(. [
          Tailwind.twStyle([
            Tailwind.grid,
            Tailwind.gridCols(#v1),
            Tailwind.gap(#v6),
            Styles.omnifoodMd([Tailwind.gridCols(#v3)]),
          ]),
          Styles.row,
        ])}>
        <blockquote className=Styles.blockquote>
          {"Omnifood is just awesome! I just launched a startup which leaves me with no time for cooking, so Omnifood is a life-saver. Now that I got used to it, I couldn't live without my daily meals!
          "->str}
          <cite className=Styles.cite>
            <img className=Styles.customerImage src="/omnifood/customer-1.jpg" alt="" />
            {"Alberto Duncan"->str}
          </cite>
        </blockquote>
        <blockquote className=Styles.blockquote>
          {"Inexpensive, healthy and great-tasting meals, delivered right to my home. We have lots of food delivery here in Lisbon, but no one comes even close to Omifood. Me and my family are so in love!
          "->str}
          <cite className=Styles.cite>
            <img className=Styles.customerImage src="/omnifood/customer-1.jpg" alt="" />
            {"Joana Silva"->str}
          </cite>
        </blockquote>
        <blockquote className=Styles.blockquote>
          {"I was looking for a quick and easy food delivery service in San Franciso. I tried a lot of them and ended up with Omnifood. Best food delivery service in the Bay Area. Keep up the great work!
          "->str}
          <cite className=Styles.cite>
            <img className=Styles.customerImage src="/omnifood/customer-1.jpg" alt="" />
            {"Milton Chapman"->str}
          </cite>
        </blockquote>
      </div>
    </section>
    <section className=Styles.sectionPlans id="pricing">
      <div className=Styles.row>
        <h2 className=Styles.h2> {"Start eating healthy today"->str} </h2>
      </div>
      <div className=Styles.threeColumnsPricing>
        <div className=Styles.planBox>
          <div className=Styles.priceSection>
            <div>
              <h3 className=Styles.h3> {"Premium"->str} </h3>
              <p className=Styles.planPrice>
                {"399$ "->str} <span className=Styles.planPriceSpan> {"per month"->str} </span>
              </p>
              <p className=Styles.planPriceMeal> {"That's only 13.30$ per meal"->str} </p>
            </div>
          </div>
          <div className=Styles.planBoxDiv>
            <ul>
              <li className=Styles.planBoxLi>
                <svg
                  xmlns="http://www.w3.org/2000/svg"
                  className=Styles.iconSmall
                  viewBox="0 0 512 512">
                  <path
                    fill="none"
                    stroke="currentColor"
                    strokeLinecap="round"
                    strokeLinejoin="round"
                    strokeWidth="32"
                    d="M416 128L192 384l-96-96"
                  />
                </svg>
                {"1 meal every day"->str}
              </li>
              <li className=Styles.planBoxLi>
                <svg
                  xmlns="http://www.w3.org/2000/svg"
                  className=Styles.iconSmall
                  viewBox="0 0 512 512">
                  <path
                    fill="none"
                    stroke="currentColor"
                    strokeLinecap="round"
                    strokeLinejoin="round"
                    strokeWidth="32"
                    d="M416 128L192 384l-96-96"
                  />
                </svg>
                {"Order 24/7"->str}
              </li>
              <li className=Styles.planBoxLi>
                <svg
                  xmlns="http://www.w3.org/2000/svg"
                  className=Styles.iconSmall
                  viewBox="0 0 512 512">
                  <path
                    fill="none"
                    stroke="currentColor"
                    strokeLinecap="round"
                    strokeLinejoin="round"
                    strokeWidth="32"
                    d="M416 128L192 384l-96-96"
                  />
                </svg>
                {"Access to newest creations"->str}
              </li>
              <li className=Styles.planBoxLi>
                <svg
                  xmlns="http://www.w3.org/2000/svg"
                  className=Styles.iconSmall
                  viewBox="0 0 512 512">
                  <path
                    fill="none"
                    stroke="currentColor"
                    strokeLinecap="round"
                    strokeLinejoin="round"
                    strokeWidth="32"
                    d="M416 128L192 384l-96-96"
                  />
                </svg>
                {"Free delivery"->str}
              </li>
            </ul>
          </div>
          <div className=Styles.buttonSection>
            <a href="#" className=Styles.btnFull> {"Sign up now"->str} </a>
          </div>
        </div>
        <div className=Styles.planBox>
          <div className=Styles.priceSection>
            <h3 className=Styles.h3> {"Pro"->str} </h3>
            <p className=Styles.planPrice>
              {"149$ "->str} <span className=Styles.planPriceSpan> {"per month"->str} </span>
            </p>
            <p className=Styles.planPriceMeal> {"That's only 14.90$ per meal"->str} </p>
          </div>
          <div className=Styles.planBoxDiv>
            <ul>
              <li className=Styles.planBoxLi>
                <svg
                  xmlns="http://www.w3.org/2000/svg"
                  className=Styles.iconSmall
                  viewBox="0 0 512 512">
                  <path
                    fill="none"
                    stroke="currentColor"
                    strokeLinecap="round"
                    strokeLinejoin="round"
                    strokeWidth="32"
                    d="M416 128L192 384l-96-96"
                  />
                </svg>
                {"1 meal 10 days/month"->str}
              </li>
              <li className=Styles.planBoxLi>
                <svg
                  xmlns="http://www.w3.org/2000/svg"
                  className=Styles.iconSmall
                  viewBox="0 0 512 512">
                  <path
                    fill="none"
                    stroke="currentColor"
                    strokeLinecap="round"
                    strokeLinejoin="round"
                    strokeWidth="32"
                    d="M416 128L192 384l-96-96"
                  />
                </svg>
                {"Order 24/7"->str}
              </li>
              <li className=Styles.planBoxLi>
                <svg
                  xmlns="http://www.w3.org/2000/svg"
                  className=Styles.iconSmall
                  viewBox="0 0 512 512">
                  <path
                    fill="none"
                    stroke="currentColor"
                    strokeLinecap="round"
                    strokeLinejoin="round"
                    strokeWidth="32"
                    d="M416 128L192 384l-96-96"
                  />
                </svg>
                {"Access to newest creations"->str}
              </li>
              <li className=Styles.planBoxLi>
                <svg
                  xmlns="http://www.w3.org/2000/svg"
                  className=Styles.iconSmall
                  viewBox="0 0 512 512">
                  <path
                    fill="none"
                    stroke="currentColor"
                    strokeLinecap="round"
                    strokeLinejoin="round"
                    strokeWidth="32"
                    d="M416 128L192 384l-96-96"
                  />
                </svg>
                {"Free delivery"->str}
              </li>
            </ul>
          </div>
          <div className=Styles.buttonSection>
            <a href="#" className=Styles.btnGhost> {"Sign up now"->str} </a>
          </div>
        </div>
        <div className=Styles.planBox>
          <div className=Styles.priceSection>
            <h3 className=Styles.h3> {"Starter"->str} </h3>
            <p className=Styles.planPrice>
              {"19$ "->str} <span className=Styles.planPriceSpan> {"per meal"->str} </span>
            </p>
            <p className=Styles.planPriceMeal> {nbsp->str} </p>
          </div>
          <div className=Styles.planBoxDiv>
            <ul>
              <li className=Styles.planBoxLi>
                <svg
                  xmlns="http://www.w3.org/2000/svg"
                  className=Styles.iconSmall
                  viewBox="0 0 512 512">
                  <path
                    fill="none"
                    stroke="currentColor"
                    strokeLinecap="round"
                    strokeLinejoin="round"
                    strokeWidth="32"
                    d="M416 128L192 384l-96-96"
                  />
                </svg>
                {"1 meal"->str}
              </li>
              <li className=Styles.planBoxLi>
                <svg
                  xmlns="http://www.w3.org/2000/svg"
                  className=Styles.iconSmall
                  viewBox="0 0 512 512">
                  <path
                    fill="none"
                    stroke="currentColor"
                    strokeLinecap="round"
                    strokeLinejoin="round"
                    strokeWidth="32"
                    d="M416 128L192 384l-96-96"
                  />
                </svg>
                {"Order from 8 am to 12 pm"->str}
              </li>
              <li className=Styles.planBoxLi>
                <svg
                  xmlns="http://www.w3.org/2000/svg"
                  className=Styles.iconSmall
                  viewBox="0 0 512 512">
                  <path
                    fill="none"
                    stroke="currentColor"
                    strokeLinecap="round"
                    strokeLinejoin="round"
                    strokeWidth="32"
                    d="M416 128L192 384l-96-96"
                  />
                </svg>
                <svg
                  xmlns="http://www.w3.org/2000/svg"
                  className=Styles.iconSmall
                  viewBox="0 0 512 512">
                  <path
                    fill="none"
                    stroke="currentColor"
                    strokeLinecap="round"
                    strokeLinejoin="round"
                    strokeWidth="32"
                    d="M368 368L144 144M368 144L144 368"
                  />
                </svg>
              </li>
              <li className=Styles.planBoxLi>
                <svg
                  xmlns="http://www.w3.org/2000/svg"
                  className=Styles.iconSmall
                  viewBox="0 0 512 512">
                  <path
                    fill="none"
                    stroke="currentColor"
                    strokeLinecap="round"
                    strokeLinejoin="round"
                    strokeWidth="32"
                    d="M416 128L192 384l-96-96"
                  />
                </svg>
                {"Free delivery"->str}
              </li>
            </ul>
          </div>
          <div className=Styles.buttonSection>
            <a href="#" className=Styles.btnGhost> {"Sign up now"->str} </a>
          </div>
        </div>
      </div>
    </section>
    <section className=Styles.section>
      <div className=Styles.row>
        <h2 className=Styles.h2> {"We're happy to hear from you"->str} </h2>
      </div>
      <div className=Styles.row>
        <form action="#" method="post" className=Styles.contactForm>
          <div className=Styles.threeColumns>
            <div
              className={Tailwind.merge(. [
                Tailwind.twStyle([Styles.omnifoodSm([Tailwind.col(#1)])]),
              ])}>
              <label
                htmlFor="name"
                className={Tailwind.merge(. [
                  Tailwind.twStyle([
                    Styles.omnifoodMd([Tailwind.flex, Tailwind.h(#full), Tailwind.itemsCenter]),
                  ]),
                ])}>
                {"Name"->str}
              </label>
            </div>
            <div
              className={Tailwind.merge(. [
                Tailwind.twStyle([Tailwind.col(#1), Styles.omnifoodSm([Tailwind.col(#2)])]),
              ])}>
              <input
                type_="text"
                name="name"
                id="name"
                placeholder="Your name"
                className=Styles.inputStyles
                required=true
              />
            </div>
          </div>
          <div className=Styles.threeColumns>
            <div
              className={Tailwind.merge(. [
                Tailwind.twStyle([
                  Tailwind.mt(#v4),
                  Tailwind.col(#1),
                  Styles.omnifoodSm([Tailwind.mt(#v0)]),
                ]),
              ])}>
              <label
                className={Tailwind.merge(. [
                  Tailwind.twStyle([
                    Styles.omnifoodSm([Tailwind.flex, Tailwind.h(#full), Tailwind.itemsCenter]),
                  ]),
                ])}
                htmlFor="email">
                {"Email"->str}
              </label>
            </div>
            <div className={Tailwind.merge(. [Tailwind.twStyle([Tailwind.col(#2)])])}>
              <input
                type_="email"
                name="name"
                id="email"
                placeholder="Your email"
                className=Styles.inputStyles
                required=true
              />
            </div>
          </div>
          <div className=Styles.threeColumns>
            <div
              className={Tailwind.merge(. [
                Tailwind.twStyle([
                  Tailwind.mt(#v4),
                  Tailwind.col(#1),
                  Styles.omnifoodSm([Tailwind.mt(#v0)]),
                ]),
              ])}>
              <label
                className={Tailwind.merge(. [
                  Tailwind.twStyle([
                    Styles.omnifoodSm([Tailwind.flex, Tailwind.h(#full), Tailwind.itemsCenter]),
                  ]),
                ])}
                htmlFor="find-us">
                {"How did you find us"->str}
              </label>
            </div>
            <div className={Tailwind.merge(. [Tailwind.twStyle([Tailwind.col(#2)])])}>
              <select name="find-us" id="find-us" className=Styles.inputStyles>
                <option value="friends" selected=true> {"Friends"->str} </option>
                <option value="search"> {"Search engine"->str} </option>
                <option value="ad"> {"Advertisement"->str} </option>
                <option value="other"> {"Other"->str} </option>
              </select>
            </div>
          </div>
          <div className=Styles.threeColumns>
            <div
              className={Tailwind.merge(. [
                Tailwind.twStyle([
                  Tailwind.col(#1),
                  Tailwind.mt(#v4),
                  Styles.omnifoodSm([Tailwind.mt(#v0)]),
                ]),
              ])}>
              <label
                className={Tailwind.merge(. [
                  Tailwind.twStyle([
                    Styles.omnifoodSm([Tailwind.flex, Tailwind.h(#full), Tailwind.itemsEnd]),
                  ]),
                ])}
                htmlFor="news">
                {"Newsletter"->str}
              </label>
            </div>
            <div className={Tailwind.merge(. [Tailwind.twStyle([Tailwind.col(#2)])])}>
              <input type_="checkbox" name="news" id="news" className=Styles.checkboxStyles />
              {"Yes, please"->str}
            </div>
          </div>
          <div className=Styles.threeColumns>
            <div
              className={Tailwind.merge(. [
                Tailwind.twStyle([
                  Tailwind.col(#1),
                  Tailwind.mt(#v4),
                  Styles.omnifoodSm([Tailwind.mt(#v0)]),
                ]),
              ])}>
              <label
                className={Tailwind.merge(. [
                  Tailwind.twStyle([
                    Styles.omnifoodSm([Tailwind.flex, Tailwind.h(#full), Tailwind.itemsCenter]),
                  ]),
                ])}
                htmlFor="message">
                {"Drop us a line"->str}
              </label>
            </div>
            <div className={Tailwind.merge(. [Tailwind.twStyle([Tailwind.col(#2)])])}>
              <textarea
                name="message"
                id="message"
                className=Styles.textareaStyles
                placeholder="Your message"
              />
            </div>
          </div>
          <div className=Styles.threeColumns>
            <div className={Tailwind.merge(. [Tailwind.twStyle([Tailwind.col(#1)])])}>
              <label htmlFor=""> {nbsp->str} </label>
            </div>
            <div className={Tailwind.merge(. [Tailwind.twStyle([Tailwind.col(#2)])])}>
              <button
                type_="submit"
                className={CssJs.merge(. [Styles.btnFull, Tailwind.twStyle([Tailwind.mt(#v5)])])}>
                {"Send it!"->str}
              </button>
            </div>
          </div>
        </form>
      </div>
    </section>
    <footer className=Styles.footer>
      <div className=Styles.twoColumns>
        <div>
          <ul className=Styles.footerNav>
            <li className=Styles.footerLi>
              <a href="#" className=Styles.navLink> {"About us"->str} </a>
            </li>
            <li className=Styles.footerLi>
              <a href="#" className=Styles.navLink> {"Blog"->str} </a>
            </li>
            <li className=Styles.footerLi>
              <a href="#" className=Styles.navLink> {"Press"->str} </a>
            </li>
            <li className=Styles.footerLi>
              <a href="#" className=Styles.navLink> {"iOS App"->str} </a>
            </li>
            <li className=Styles.footerLi>
              <a href="#" className=Styles.navLink> {"Android App"->str} </a>
            </li>
          </ul>
        </div>
        <div>
          <ul className=Styles.socialLinks>
            <li className=Styles.footerLi>
              <svg
                xmlns="http://www.w3.org/2000/svg" className=Styles.iconNav viewBox="0 0 512 512">
                <path
                  d="M480 257.35c0-123.7-100.3-224-224-224s-224 100.3-224 224c0 111.8 81.9 204.47 189 221.29V322.12h-56.89v-64.77H221V208c0-56.13 33.45-87.16 84.61-87.16 24.51 0 50.15 4.38 50.15 4.38v55.13H327.5c-27.81 0-36.51 17.26-36.51 35v42h62.12l-9.92 64.77H291v156.54c107.1-16.81 189-109.48 189-221.31z"
                  fillRule="evenodd"
                />
              </svg>
            </li>
            <li className=Styles.footerLi>
              <svg
                xmlns="http://www.w3.org/2000/svg" className=Styles.iconNav viewBox="0 0 512 512">
                <path
                  d="M496 109.5a201.8 201.8 0 01-56.55 15.3 97.51 97.51 0 0043.33-53.6 197.74 197.74 0 01-62.56 23.5A99.14 99.14 0 00348.31 64c-54.42 0-98.46 43.4-98.46 96.9a93.21 93.21 0 002.54 22.1 280.7 280.7 0 01-203-101.3A95.69 95.69 0 0036 130.4c0 33.6 17.53 63.3 44 80.7A97.5 97.5 0 0135.22 199v1.2c0 47 34 86.1 79 95a100.76 100.76 0 01-25.94 3.4 94.38 94.38 0 01-18.51-1.8c12.51 38.5 48.92 66.5 92.05 67.3A199.59 199.59 0 0139.5 405.6a203 203 0 01-23.5-1.4A278.68 278.68 0 00166.74 448c181.36 0 280.44-147.7 280.44-275.8 0-4.2-.11-8.4-.31-12.5A198.48 198.48 0 00496 109.5z"
                />
              </svg>
            </li>
            <li className=Styles.footerLi>
              <svg
                xmlns="http://www.w3.org/2000/svg" className=Styles.iconNav viewBox="0 0 512 512">
                <path
                  d="M473.16 221.48l-2.26-9.59H262.46v88.22H387c-12.93 61.4-72.93 93.72-121.94 93.72-35.66 0-73.25-15-98.13-39.11a140.08 140.08 0 01-41.8-98.88c0-37.16 16.7-74.33 41-98.78s61-38.13 97.49-38.13c41.79 0 71.74 22.19 82.94 32.31l62.69-62.36C390.86 72.72 340.34 32 261.6 32c-60.75 0-119 23.27-161.58 65.71C58 139.5 36.25 199.93 36.25 256s20.58 113.48 61.3 155.6c43.51 44.92 105.13 68.4 168.58 68.4 57.73 0 112.45-22.62 151.45-63.66 38.34-40.4 58.17-96.3 58.17-154.9 0-24.67-2.48-39.32-2.59-39.96z"
                />
              </svg>
            </li>
            <li className=Styles.lastLi>
              <svg
                xmlns="http://www.w3.org/2000/svg" className=Styles.iconNav viewBox="0 0 512 512">
                <path
                  d="M349.33 69.33a93.62 93.62 0 0193.34 93.34v186.66a93.62 93.62 0 01-93.34 93.34H162.67a93.62 93.62 0 01-93.34-93.34V162.67a93.62 93.62 0 0193.34-93.34h186.66m0-37.33H162.67C90.8 32 32 90.8 32 162.67v186.66C32 421.2 90.8 480 162.67 480h186.66C421.2 480 480 421.2 480 349.33V162.67C480 90.8 421.2 32 349.33 32z"
                />
                <path
                  d="M377.33 162.67a28 28 0 1128-28 27.94 27.94 0 01-28 28zM256 181.33A74.67 74.67 0 11181.33 256 74.75 74.75 0 01256 181.33m0-37.33a112 112 0 10112 112 112 112 0 00-112-112z"
                />
              </svg>
            </li>
          </ul>
        </div>
      </div>
      <div className=Styles.row>
        <p className=Styles.footerText> {`Copyright ${copySymbol} 2020 by Explorer Lab's`->str} </p>
      </div>
    </footer>
  </div>
}
