open Next
open Utils
open Hooks

/*
// INFO: This is example of how to add event listener to the window object
  React.useEffect0(() => {
    let window = Webapi.Dom.window
    let document = Webapi.Dom.document

    
    let onScroll = _ => {
      let body = Webapi.Dom.DomTokenList.add(Styles.resizeAnimationStopper)
      body->clog
      "scroll"->clog
    }

    Webapi.Dom.Window.addEventListener("resize", onScroll, window)

    // Clean up function
    Some(() => Webapi.Dom.Window.removeEventListener("resize", onScroll, window))
  })
*/

module Styles = {
  open CssJs

  let mq800 = Tailwind.minWBreakpoint(800)
  let max799 = Tailwind.maxWBreakpoint(799)

  let defaultColor = rgba(85, 214, 170, #percent(85.))

  let globalStyles = style(. [backgroundColor(#hex("222")), fontWeight(#num(400))])

  let content = style(. [
    height(#vh(200.)),
    backgrounds([
      linearGradient(
        deg(0.),
        list{
          (zero, #rgba(51, 51, 51, #percent(70.))),
          (#percent(100.), #rgba(51, 51, 51, #percent(70.))),
        },
      ),
      #url("//unsplash.it/1000/1000"),
    ]),
    backgroundSize(#cover),
    display(#grid),
  ])

  let header800 = Tailwind.twStyle([
    mq800([
      Tailwind.grid,
      [gridTemplateColumns([#fr(1.), #auto, #minmax(#px(600), #fr(3.)), #fr(1.)])],
    ]),
  ])

  let header = CssJs.merge(. [
    style(. [
      backgroundColor(defaultColor),
      textAlign(#center),
      position(#fixed),
      width(#percent(100.)),
      zIndex(20),
      padding2(~v=#px(10), ~h=#px(0)),
    ]),
    header800,
  ])

  let logo800 = Tailwind.twStyle([mq800([[gridColumn(2, 3)]])])

  let logo = CssJs.merge(. [logo800])

  let nav800 = Tailwind.twStyle([
    mq800([
      [
        position(#relative),
        gridColumn(3, 4),
        display(#flex),
        justifyContent(#flexEnd),
        alignItems(#center),
      ],
    ]),
  ])

  let max799Nav = Tailwind.twStyle([
    max799([
      [
        position(#absolute),
        textAlign(#left),
        top(#percent(100.)),
        left(#px(0)),
        backgroundColor(defaultColor),
        width(#percent(100.)),
        transform(#scale(1., 0.)),
        transformOrigin(px(0), px(0)),
        // INFO: https://css-tricks.com/stop-animations-during-window-resizing/
        transition("transform", ~duration=400, ~timingFunction=#easeInOut),
      ],
    ]),
  ])

  let nav = CssJs.merge(. [max799Nav, nav800])

  let navUl800 = Tailwind.twStyle([mq800([[display(#flex), justifyContent(#flexEnd)]])])

  let navUl = navUl800

  let navLi800 = Tailwind.twStyle([mq800([[marginBottom(#rem(0.)), marginLeft(#rem(3.))]])])

  let navLi = CssJs.merge(. [style(. [marginBottom(#rem(1.)), marginLeft(#rem(1.))]), navLi800])

  let navAHover = style(. [hover([color(#hex("000"))])])

  let navA800 = Tailwind.twStyle([
    mq800([
      [
        opacity(1.),
        position(#relative),
        before([
          contentRule(#text("")),
          height(#px(5)),
          backgroundColor(#hex("000")),
          display(#block),
          position(#absolute),
          // NOTE: If you want animation to start at the bottom
          // bottom(#rem(-0.5)),
          top(#rem(-0.5)),
          left(#px(0)),
          right(#px(0)),
          transform(#scale(0., 1.)),
          // NOTE: If you want animation to start from left for example
          // transformOrigin(#px(0), #px(0)),
          //  transformOrigin(#px(0), #percent(100.)),
          transition("transform", ~timingFunction=#easeInOut, ~duration=250),
        ]),
        hover([before([transform(#scale(1., 1.))])]),
      ],
    ]),
  ])

  let navA = CssJs.merge(. [
    style(. [
      color(#hex("fff")),
      fontSize(#rem(1.2)),
      textTransform(#uppercase),
      opacity(0.),
      // NOTE: This transition fires when you close navigation
      transition("opacity", ~duration=150, ~timingFunction=#easeInOut),
    ]),
    navAHover,
    navA800,
  ])

  let toggleNav = style(. [
    checked([
      selector("~ nav", [transform(#scale(1., 1.))]),
      selector(
        "~ nav a",
        // NOTE: This transition fires when you open navigation
        [opacity(1.), transition("opacity", ~duration=250, ~timingFunction=#easeInOut, ~delay=250)],
      ),
    ]),
  ])

  let navToggle = CssJs.merge(. [style(. [display(#none)]), toggleNav])

  let toggleLabel800 = Tailwind.twStyle([mq800([[display(#none)]])])

  let toggleLabel = CssJs.merge(. [
    style(. [
      position(#absolute),
      top(#px(0)),
      left(#px(0)),
      marginLeft(#rem(1.)),
      height(#percent(100.)),
      display(#flex),
      alignItems(#center),
    ]),
    toggleLabel800,
  ])

  let whiteBar = [
    width(#rem(2.)),
    display(#block),
    backgroundColor(#hex("fff")),
    height(#px(2)),
    borderRadius(#px(2)),
  ]

  let beforeAndAfterStyles = Belt.Array.concat(
    whiteBar,
    [contentRule(#text("")), position(#absolute)],
  )

  let beforeStyles = Belt.Array.concat(beforeAndAfterStyles, [bottom(#px(10))])

  let afterStyles = Belt.Array.concat(beforeAndAfterStyles, [top(#px(10))])

  let beforeAndAfterSpan = style(. [after(afterStyles), before(beforeStyles)])

  let toggleLabelSpan = CssJs.merge(. [style(. whiteBar), beforeAndAfterSpan])

  // TODO: Add hamburger icon toggle animation
}

let default = () => {
  // TODO: Stop animation when mouse leaves window. Use onMouseLeave and onMouseEnter
  useStopAnimationJank()

  <div>
    <Head>
      <title> {"Development"->React.string} </title> <link rel="icon" href="/favicon.ico" />
    </Head>
    <main className=Styles.globalStyles>
      <header className=Styles.header>
        <h1 className=Styles.logo> {"Logo"->str} </h1>
        // Order is important !
        <input type_="checkbox" className=Styles.navToggle name="nav-toggle" id="nav-toggle" />
        <label htmlFor="nav-toggle" className=Styles.toggleLabel>
          <span className=Styles.toggleLabelSpan />
        </label>
        <nav className={CssJs.merge(. [Styles.nav])}>
          <ul className=Styles.navUl>
            <li className=Styles.navLi> <a className=Styles.navA href="#"> {"Home"->str} </a> </li>
            <li className=Styles.navLi> <a className=Styles.navA href="#"> {"About"->str} </a> </li>
            <li className=Styles.navLi> <a className=Styles.navA href="#"> {"Blog"->str} </a> </li>
            <li className=Styles.navLi>
              <a className=Styles.navA href="#"> {"Contact"->str} </a>
            </li>
          </ul>
        </nav>
      </header>
      <div
        className={CssJs.merge(. [Styles.content, Tailwind.twStyle([Tailwind.placeItemsCenter])])}>
        <h2> {"Your content would go here"->str} </h2>
      </div>
    </main>
  </div>
}
