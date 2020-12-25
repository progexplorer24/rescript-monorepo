open Next
open Utils

module Styles = {
  open CssJs

  let mainOrange = "e67e22"

  let globalStyles = style(.[
    backgroundColor(hex("fff")),
    color(hex("555")),
    fontSize(px(20)),
    fontWeight(#num(300)),
  ])

  let row = style(.[maxWidth(px(1140)), margin2(~v=#zero, ~h=#auto)])

  let headerStyles = style(.[
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
  ])

  let textBox = style(.[
    position(#absolute),
    width(px(1140)),
    top(#percent(Belt.Int.toFloat(50))),
    left(#percent(Belt.Int.toFloat(50))),
    transform(#translate(#percent(Belt.Int.toFloat(-50)), #percent(Belt.Int.toFloat(-50)))),
  ])

  let h1 = style(.[
    margin(#zero),
    color(hex("fff")),
    fontSize(#percent(240.)),
    fontWeight(#num(300)),
    textTransform(#uppercase),
    letterSpacing(#px(1)),
    marginBottom(px(20)),
  ])

  let btn = style(.[
    display(#inlineBlock),
    padding2(~v=px(10), ~h=px(30)),
    fontWeight(#num(300)),
    borderRadius(#px(200)),
    transition("background-color, color, border", ~duration=200),
  ])

  let btnHover = style(.[hover([backgroundColor(hex("cf6d17"))])])

  let hoverStyles2 = style(.[hover([color(hex("fff")), border(px(1), solid, #hex("cf6d17"))])])

  let btnFull = merge(.[
    btn,
    btnHover,
    style(.[backgroundColor(hex("e67e22")), color(#hex("fff")), marginRight(px(15))]),
  ])

  let btnGhost = merge(.[
    btn,
    btnHover,
    hoverStyles2,
    style(.[border(px(1), solid, #hex("e67e22")), color(#hex("e67e22"))]),
  ])

  let logo = style(.[height(px(100)), width(#auto), float(#left), marginTop(px(20))])

  let mainNav = style(.[float(#right), marginTop(px(60))])

  let liNav = style(.[display(#inlineBlock), marginLeft(#px(40))])

  let linkBase = style(.[
    color(hex("fff")),
    textTransform(#uppercase),
    fontSize(#percent(90.)),
    borderBottom(#px(2), #solid, #transparent),
    transition("border-bottom", ~duration=200),
    padding2(~v=px(8), ~h=#zero),
  ])

  let linkHover = style(.[hover([borderBottom(#px(2), #solid, #hex(mainOrange))])])

  let link = merge(.[linkBase, linkHover])
}

let default = () =>
  <div className=Styles.globalStyles>
    <Head> <title> {"Omnifood"->str} </title> </Head>
    <header className=Styles.headerStyles>
      <nav>
        <div className=Styles.row>
          <img src="/omnifood/logo-white.png" alt="Omnifood logo" className=Styles.logo />
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
        <a href="#" className=Styles.btnFull> {"I'm hungry"->str} </a>
        <a href="#" className=Styles.btnGhost> {"Show me more"->str} </a>
      </div>
    </header>
  </div>
