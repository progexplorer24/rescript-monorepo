module Styles = {
  open Tailwind
  let wrapper = merge(.[twStyle([maxW(#xl6), mx(#auto), mt(#v6)])])
  let h1Title = twStyle([text(#xl2), p(#v6), textCenter])
  let h1 = twStyle([text(#xl), p(#v6)])
  let h2 = twStyle([text(#base), p(#v2)])

  // Grid Breakpoints
  let min830 = minWBreakpoint(830)
  let min450 = minWBreakpoint(450)

  // Icon & H2 Design
  let block = twStyle([
    flex,
    flexCol,
    justifyCenter,
    itemsCenter,
    textCenter,
    p(#v4),
    hover([shadow(#xl2), rounded(#xl)]),
  ])

  // Grid Responsive Design
  let grid = twStyle([grid, gridCols(#v2)])
  let gridBreakpoints830 = twStyle([min830([gridCols(#v6)])])
  let gridBreakpoints450 = twStyle([min450([gridCols(#v3)])])

  let svgString = "<svg xmlns='http://www.w3.org/2000/svg' class='ionicon' viewBox='0 0 512 512'><title>Magnet</title><path d='M421.83 293.82A144 144 0 00218.18 90.17M353.94 225.94a48 48 0 00-67.88-67.88' fill='none' stroke='currentColor' stroke-miterlimit='10' stroke-width='32'/><path stroke='currentColor' stroke-linecap='round' stroke-miterlimit='10' stroke-width='32' d='M192 464v-48M90.18 421.82l33.94-33.94M48 320h48'/><path d='M286.06 158.06L172.92 271.19a32 32 0 01-45.25 0L105 248.57a32 32 0 010-45.26L218.18 90.17M421.83 293.82L308.69 407a32 32 0 01-45.26 0l-22.62-22.63a32 32 0 010-45.26l113.13-113.17M139.6 169.98l67.88 67.89M275.36 305.75l67.89 67.88' fill='none' stroke='currentColor' stroke-linejoin='round' stroke-width='32'/></svg>"
  let strokeLinecap = Js.String2.replaceByRe(
    svgString,
    %re("/stroke-linecap='round'/g"),
    "strokeLinecap",
  )
  let strokeMiterlimit = Js.String2.replaceByRe(
    strokeLinecap,
    %re("/stroke-miterlimit='10'/g"),
    "strokeMiterlimit",
  )

  let stroke = Js.String2.replaceByRe(strokeMiterlimit, %re("/stroke='currentColor'/g"), "stroke")
  let fill = Js.String2.replaceByRe(stroke, %re("/fill='none'/g"), "fill")
  let removeTitle = Js.String2.replaceByRe(fill, %re("/(?<=\<title\>)(.*)(?=<\/title\>)/g"), "")
  let removeTitleTag1 = Js.String2.replaceByRe(removeTitle, %re("/\<title\>/g"), "")
  let removeTitleTag2 = Js.String2.replaceByRe(removeTitleTag1, %re("/\<\/title\>/g"), "")
  let strokeLineJoin = Js.String2.replaceByRe(
    removeTitleTag2,
    %re("/stroke-linejoin='round'/g"),
    "strokeLinejoin",
  )
  let strokeWidth = Js.String2.replaceByRe(
    strokeLineJoin,
    %re("/stroke-width='32'/g"),
    "strokeWidth",
  )
  let classType = Js.String2.replaceByRe(
    strokeWidth,
    %re("/class='ionicon'/g"),
    "className={merge(.[defaultSize, className])}",
  )
  let apostrophe = Js.String2.replaceByRe(classType, %re("/'/g"), "\"")
  Js.log(apostrophe)
}

let default = () => {
  <div className=Styles.wrapper>
    <h1 className=Styles.h1Title> {"Welcome to IonIcons Component"->Utils.str} </h1>
    <h1 className=Styles.h1> {"Outline Icons"->Utils.str} </h1>
    <div
      className={Tailwind.merge(.[
        Styles.grid,
        Styles.gridBreakpoints450,
        Styles.gridBreakpoints830,
      ])}>
      <div className={Tailwind.merge(.[Styles.block])}>
        <IonIcons.Outline.accessibility />
        <h2 className={Tailwind.merge(.[Styles.h2])}> {"accessibility"->Utils.str} </h2>
      </div>
      <div className={Tailwind.merge(.[Styles.block])}>
        <IonIcons.Outline.add />
        <h2 className={Tailwind.merge(.[Styles.h2])}> {"add"->Utils.str} </h2>
      </div>
      <div className={Tailwind.merge(.[Styles.block])}>
        <IonIcons.Outline.addCircle strokeWidth="44" />
        <h2 className={Tailwind.merge(.[Styles.h2])}> {"addCircle"->Utils.str} </h2>
      </div>
      <div className={Tailwind.merge(.[Styles.block])}>
        <IonIcons.Outline.airplane />
        <h2 className={Tailwind.merge(.[Styles.h2])}> {"airplane"->Utils.str} </h2>
      </div>
      <div className={Tailwind.merge(.[Styles.block])}>
        <IonIcons.Outline.alarm />
        <h2 className={Tailwind.merge(.[Styles.h2])}> {"alarm"->Utils.str} </h2>
      </div>
      <div className={Tailwind.merge(.[Styles.block])}>
        <IonIcons.Outline.album />
        <h2 className={Tailwind.merge(.[Styles.h2])}> {"album"->Utils.str} </h2>
      </div>
      <div className={Tailwind.merge(.[Styles.block])}>
        <IonIcons.Outline.alert />
        <h2 className={Tailwind.merge(.[Styles.h2])}> {"alert"->Utils.str} </h2>
      </div>
      <div className={Tailwind.merge(.[Styles.block])}>
        <IonIcons.Outline.alertCircle />
        <h2 className={Tailwind.merge(.[Styles.h2])}> {"alertCircle"->Utils.str} </h2>
      </div>
      <div className={Tailwind.merge(.[Styles.block])}>
        <IonIcons.Outline.americanFootball />
        <h2 className={Tailwind.merge(.[Styles.h2])}> {"americanFootball"->Utils.str} </h2>
      </div>
      <div className={Tailwind.merge(.[Styles.block])}>
        <IonIcons.Outline.analytics />
        <h2 className={Tailwind.merge(.[Styles.h2])}> {"analytics"->Utils.str} </h2>
      </div>
      <div className={Tailwind.merge(.[Styles.block])}>
        <IonIcons.Outline.aperture />
        <h2 className={Tailwind.merge(.[Styles.h2])}> {"aperture"->Utils.str} </h2>
      </div>
      <div className={Tailwind.merge(.[Styles.block])}>
        <IonIcons.Outline.apps />
        <h2 className={Tailwind.merge(.[Styles.h2])}> {"apps"->Utils.str} </h2>
      </div>
      <div className={Tailwind.merge(.[Styles.block])}>
        <IonIcons.Outline.archive />
        <h2 className={Tailwind.merge(.[Styles.h2])}> {"archive"->Utils.str} </h2>
      </div>
      <div className={Tailwind.merge(.[Styles.block])}>
        <IonIcons.Outline.arrowBack />
        <h2 className={Tailwind.merge(.[Styles.h2])}> {"arrowBack"->Utils.str} </h2>
      </div>
      <div className={Tailwind.merge(.[Styles.block])}>
        <IonIcons.Outline.arrowBackCircle />
        <h2 className={Tailwind.merge(.[Styles.h2])}> {"arrowBackCircle"->Utils.str} </h2>
      </div>
      <div className={Tailwind.merge(.[Styles.block])}>
        <IonIcons.Outline.arrowDown />
        <h2 className={Tailwind.merge(.[Styles.h2])}> {"arrowDown"->Utils.str} </h2>
      </div>
      <div className={Tailwind.merge(.[Styles.block])}>
        <IonIcons.Outline.arrowDownCircle />
        <h2 className={Tailwind.merge(.[Styles.h2])}> {"arrowDownCircle"->Utils.str} </h2>
      </div>
      <div className={Tailwind.merge(.[Styles.block])}>
        <IonIcons.Outline.arrowForward />
        <h2 className={Tailwind.merge(.[Styles.h2])}> {"arrowForward"->Utils.str} </h2>
      </div>
      <div className={Tailwind.merge(.[Styles.block])}>
        <IonIcons.Outline.arrowForwardCircle />
        <h2 className={Tailwind.merge(.[Styles.h2])}> {"arrowForwardCircle"->Utils.str} </h2>
      </div>
      <div className={Tailwind.merge(.[Styles.block])}>
        <IonIcons.Outline.arrowRedo />
        <h2 className={Tailwind.merge(.[Styles.h2])}> {"arrowRedo"->Utils.str} </h2>
      </div>
      <div className={Tailwind.merge(.[Styles.block])}>
        <IonIcons.Outline.arrowRedoCircle />
        <h2 className={Tailwind.merge(.[Styles.h2])}> {"arrowRedoCircle"->Utils.str} </h2>
      </div>
      <div className={Tailwind.merge(.[Styles.block])}>
        <IonIcons.Outline.arrowUndo />
        <h2 className={Tailwind.merge(.[Styles.h2])}> {"arrowUndo"->Utils.str} </h2>
      </div>
      <div className={Tailwind.merge(.[Styles.block])}>
        <IonIcons.Outline.arrowUndoCircle />
        <h2 className={Tailwind.merge(.[Styles.h2])}> {"arrowUndoCircle"->Utils.str} </h2>
      </div>
      <div className={Tailwind.merge(.[Styles.block])}>
        <IonIcons.Outline.arrowUp />
        <h2 className={Tailwind.merge(.[Styles.h2])}> {"arrowUp"->Utils.str} </h2>
      </div>
      <div className={Tailwind.merge(.[Styles.block])}>
        <IonIcons.Outline.arrowUpCircle />
        <h2 className={Tailwind.merge(.[Styles.h2])}> {"arrowUpCircle"->Utils.str} </h2>
      </div>
      <div className={Tailwind.merge(.[Styles.block])}>
        <IonIcons.Outline.at />
        <h2 className={Tailwind.merge(.[Styles.h2])}> {"at"->Utils.str} </h2>
      </div>
      <div className={Tailwind.merge(.[Styles.block])}>
        <IonIcons.Outline.atCircle />
        <h2 className={Tailwind.merge(.[Styles.h2])}> {"atCircle"->Utils.str} </h2>
      </div>
      <div className={Tailwind.merge(.[Styles.block])}>
        <IonIcons.Outline.attach />
        <h2 className={Tailwind.merge(.[Styles.h2])}> {"attach"->Utils.str} </h2>
      </div>
      <div className={Tailwind.merge(.[Styles.block])}>
        <IonIcons.Outline.backspace />
        <h2 className={Tailwind.merge(.[Styles.h2])}> {"backspace"->Utils.str} </h2>
      </div>
      <div className={Tailwind.merge(.[Styles.block])}>
        <IonIcons.Outline.bag />
        <h2 className={Tailwind.merge(.[Styles.h2])}> {"bag"->Utils.str} </h2>
      </div>
      <div className={Tailwind.merge(.[Styles.block])}>
        <IonIcons.Outline.bagAdd />
        <h2 className={Tailwind.merge(.[Styles.h2])}> {"bagAdd"->Utils.str} </h2>
      </div>
      <div className={Tailwind.merge(.[Styles.block])}>
        <IonIcons.Outline.bagCheck />
        <h2 className={Tailwind.merge(.[Styles.h2])}> {"bagCheck"->Utils.str} </h2>
      </div>
      <div className={Tailwind.merge(.[Styles.block])}>
        <IonIcons.Outline.bagHandle />
        <h2 className={Tailwind.merge(.[Styles.h2])}> {"bagHandle"->Utils.str} </h2>
      </div>
      <div className={Tailwind.merge(.[Styles.block])}>
        <IonIcons.Outline.bagRemove />
        <h2 className={Tailwind.merge(.[Styles.h2])}> {"bagRemove"->Utils.str} </h2>
      </div>
      <div className={Tailwind.merge(.[Styles.block])}>
        <IonIcons.Outline.baloon />
        <h2 className={Tailwind.merge(.[Styles.h2])}> {"baloon"->Utils.str} </h2>
      </div>
      <div className={Tailwind.merge(.[Styles.block])}>
        <IonIcons.Outline.ban />
        <h2 className={Tailwind.merge(.[Styles.h2])}> {"ban"->Utils.str} </h2>
      </div>
      <div className={Tailwind.merge(.[Styles.block])}>
        <IonIcons.Outline.bandage />
        <h2 className={Tailwind.merge(.[Styles.h2])}> {"bandage"->Utils.str} </h2>
      </div>
      <div className={Tailwind.merge(.[Styles.block])}>
        <IonIcons.Outline.barChart />
        <h2 className={Tailwind.merge(.[Styles.h2])}> {"barChart"->Utils.str} </h2>
      </div>
      <div className={Tailwind.merge(.[Styles.block])}>
        <IonIcons.Outline.barbell />
        <h2 className={Tailwind.merge(.[Styles.h2])}> {"barbell"->Utils.str} </h2>
      </div>
      <div className={Tailwind.merge(.[Styles.block])}>
        <IonIcons.Outline.barcode />
        <h2 className={Tailwind.merge(.[Styles.h2])}> {"barcode"->Utils.str} </h2>
      </div>
      <div className={Tailwind.merge(.[Styles.block])}>
        <IonIcons.Outline.baseball />
        <h2 className={Tailwind.merge(.[Styles.h2])}> {"baseball"->Utils.str} </h2>
      </div>
      <div className={Tailwind.merge(.[Styles.block])}>
        <IonIcons.Outline.basket />
        <h2 className={Tailwind.merge(.[Styles.h2])}> {"basket"->Utils.str} </h2>
      </div>
      <div className={Tailwind.merge(.[Styles.block])}>
        <IonIcons.Outline.basketball />
        <h2 className={Tailwind.merge(.[Styles.h2])}> {"basketball"->Utils.str} </h2>
      </div>
      <div className={Tailwind.merge(.[Styles.block])}>
        <IonIcons.Outline.batteryCharging />
        <h2 className={Tailwind.merge(.[Styles.h2])}> {"batteryCharging"->Utils.str} </h2>
      </div>
      <div className={Tailwind.merge(.[Styles.block])}>
        <IonIcons.Outline.batteryDead />
        <h2 className={Tailwind.merge(.[Styles.h2])}> {"batteryDead"->Utils.str} </h2>
      </div>
      <div className={Tailwind.merge(.[Styles.block])}>
        <IonIcons.Outline.batteryFull />
        <h2 className={Tailwind.merge(.[Styles.h2])}> {"batteryFull"->Utils.str} </h2>
      </div>
      <div className={Tailwind.merge(.[Styles.block])}>
        <IonIcons.Outline.batteryHalf />
        <h2 className={Tailwind.merge(.[Styles.h2])}> {"batteryHalf"->Utils.str} </h2>
      </div>
      <div className={Tailwind.merge(.[Styles.block])}>
        <IonIcons.Outline.beaker />
        <h2 className={Tailwind.merge(.[Styles.h2])}> {"beaker"->Utils.str} </h2>
      </div>
      <div className={Tailwind.merge(.[Styles.block])}>
        <IonIcons.Outline.bed />
        <h2 className={Tailwind.merge(.[Styles.h2])}> {"bed"->Utils.str} </h2>
      </div>
      <div className={Tailwind.merge(.[Styles.block])}>
        <IonIcons.Outline.beer />
        <h2 className={Tailwind.merge(.[Styles.h2])}> {"beer"->Utils.str} </h2>
      </div>
      <div className={Tailwind.merge(.[Styles.block])}>
        <IonIcons.Outline.bicycle />
        <h2 className={Tailwind.merge(.[Styles.h2])}> {"bicycle"->Utils.str} </h2>
      </div>
      <div className={Tailwind.merge(.[Styles.block])}>
        <IonIcons.Outline.bluetooth />
        <h2 className={Tailwind.merge(.[Styles.h2])}> {"bluetooth"->Utils.str} </h2>
      </div>
      <div className={Tailwind.merge(.[Styles.block])}>
        <IonIcons.Outline.boat />
        <h2 className={Tailwind.merge(.[Styles.h2])}> {"boat"->Utils.str} </h2>
      </div>
      <div className={Tailwind.merge(.[Styles.block])}>
        <IonIcons.Outline.body />
        <h2 className={Tailwind.merge(.[Styles.h2])}> {"body"->Utils.str} </h2>
      </div>
      <div className={Tailwind.merge(.[Styles.block])}>
        <IonIcons.Outline.bonfire />
        <h2 className={Tailwind.merge(.[Styles.h2])}> {"bonfire"->Utils.str} </h2>
      </div>
      <div className={Tailwind.merge(.[Styles.block])}>
        <IonIcons.Outline.book />
        <h2 className={Tailwind.merge(.[Styles.h2])}> {"book"->Utils.str} </h2>
      </div>
      <div className={Tailwind.merge(.[Styles.block])}>
        <IonIcons.Outline.bookmark />
        <h2 className={Tailwind.merge(.[Styles.h2])}> {"bookmark"->Utils.str} </h2>
      </div>
      <div className={Tailwind.merge(.[Styles.block])}>
        <IonIcons.Outline.bookmarks />
        <h2 className={Tailwind.merge(.[Styles.h2])}> {"bookmarks"->Utils.str} </h2>
      </div>
      <div className={Tailwind.merge(.[Styles.block])}>
        <IonIcons.Outline.bowlingBall />
        <h2 className={Tailwind.merge(.[Styles.h2])}> {"bowlingBall"->Utils.str} </h2>
      </div>
      <div className={Tailwind.merge(.[Styles.block])}>
        <IonIcons.Outline.briefcase />
        <h2 className={Tailwind.merge(.[Styles.h2])}> {"briefcase"->Utils.str} </h2>
      </div>
      <div className={Tailwind.merge(.[Styles.block])}>
        <IonIcons.Outline.browsers />
        <h2 className={Tailwind.merge(.[Styles.h2])}> {"browsers"->Utils.str} </h2>
      </div>
      <div className={Tailwind.merge(.[Styles.block])}>
        <IonIcons.Outline.brush />
        <h2 className={Tailwind.merge(.[Styles.h2])}> {"brush"->Utils.str} </h2>
      </div>
      <div className={Tailwind.merge(.[Styles.block])}>
        <IonIcons.Outline.bug />
        <h2 className={Tailwind.merge(.[Styles.h2])}> {"bug"->Utils.str} </h2>
      </div>
      <div className={Tailwind.merge(.[Styles.block])}>
        <IonIcons.Outline.build />
        <h2 className={Tailwind.merge(.[Styles.h2])}> {"build"->Utils.str} </h2>
      </div>
      <div className={Tailwind.merge(.[Styles.block])}>
        <IonIcons.Outline.bulb />
        <h2 className={Tailwind.merge(.[Styles.h2])}> {"bulb"->Utils.str} </h2>
      </div>
      <div className={Tailwind.merge(.[Styles.block])}>
        <IonIcons.Outline.bus />
        <h2 className={Tailwind.merge(.[Styles.h2])}> {"bus"->Utils.str} </h2>
      </div>
      <div className={Tailwind.merge(.[Styles.block])}>
        <IonIcons.Outline.business />
        <h2 className={Tailwind.merge(.[Styles.h2])}> {"business"->Utils.str} </h2>
      </div>
      <div className={Tailwind.merge(.[Styles.block])}>
        <IonIcons.Outline.cafe />
        <h2 className={Tailwind.merge(.[Styles.h2])}> {"cafe"->Utils.str} </h2>
      </div>
      <div className={Tailwind.merge(.[Styles.block])}>
        <IonIcons.Outline.calculator />
        <h2 className={Tailwind.merge(.[Styles.h2])}> {"calculator"->Utils.str} </h2>
      </div>
      <div className={Tailwind.merge(.[Styles.block])}>
        <IonIcons.Outline.calendar />
        <h2 className={Tailwind.merge(.[Styles.h2])}> {"calendar"->Utils.str} </h2>
      </div>
      <div className={Tailwind.merge(.[Styles.block])}>
        <IonIcons.Outline.calendarClear />
        <h2 className={Tailwind.merge(.[Styles.h2])}> {"calendarClear"->Utils.str} </h2>
      </div>
      <div className={Tailwind.merge(.[Styles.block])}>
        <IonIcons.Outline.calendarNumber />
        <h2 className={Tailwind.merge(.[Styles.h2])}> {"calendarNumber"->Utils.str} </h2>
      </div>
      <div className={Tailwind.merge(.[Styles.block])}>
        <IonIcons.Outline.call />
        <h2 className={Tailwind.merge(.[Styles.h2])}> {"call"->Utils.str} </h2>
      </div>
      <div className={Tailwind.merge(.[Styles.block])}>
        <IonIcons.Outline.camera />
        <h2 className={Tailwind.merge(.[Styles.h2])}> {"camera"->Utils.str} </h2>
      </div>
      <div className={Tailwind.merge(.[Styles.block])}>
        <IonIcons.Outline.cameraReverse />
        <h2 className={Tailwind.merge(.[Styles.h2])}> {"cameraReverse"->Utils.str} </h2>
      </div>
      <div className={Tailwind.merge(.[Styles.block])}>
        <IonIcons.Outline.car />
        <h2 className={Tailwind.merge(.[Styles.h2])}> {"car"->Utils.str} </h2>
      </div>
      <div className={Tailwind.merge(.[Styles.block])}>
        <IonIcons.Outline.carSport />
        <h2 className={Tailwind.merge(.[Styles.h2])}> {"carSport"->Utils.str} </h2>
      </div>
      <div className={Tailwind.merge(.[Styles.block])}>
        <IonIcons.Outline.card />
        <h2 className={Tailwind.merge(.[Styles.h2])}> {"card"->Utils.str} </h2>
      </div>
      <div className={Tailwind.merge(.[Styles.block])}>
        <IonIcons.Outline.caretBack />
        <h2 className={Tailwind.merge(.[Styles.h2])}> {"caretBack"->Utils.str} </h2>
      </div>
      <div className={Tailwind.merge(.[Styles.block])}>
        <IonIcons.Outline.caretBackCircle />
        <h2 className={Tailwind.merge(.[Styles.h2])}> {"caretBackCircle"->Utils.str} </h2>
      </div>
      <div className={Tailwind.merge(.[Styles.block])}>
        <IonIcons.Outline.caretDown />
        <h2 className={Tailwind.merge(.[Styles.h2])}> {"caretDown"->Utils.str} </h2>
      </div>
      <div className={Tailwind.merge(.[Styles.block])}>
        <IonIcons.Outline.caretDownCircle />
        <h2 className={Tailwind.merge(.[Styles.h2])}> {"caretDownCircle"->Utils.str} </h2>
      </div>
      <div className={Tailwind.merge(.[Styles.block])}>
        <IonIcons.Outline.caretForward />
        <h2 className={Tailwind.merge(.[Styles.h2])}> {"caretForward"->Utils.str} </h2>
      </div>
      <div className={Tailwind.merge(.[Styles.block])}>
        <IonIcons.Outline.caretForwardCircle />
        <h2 className={Tailwind.merge(.[Styles.h2])}> {"caretForwardCircle"->Utils.str} </h2>
      </div>
      <div className={Tailwind.merge(.[Styles.block])}>
        <IonIcons.Outline.caretUp />
        <h2 className={Tailwind.merge(.[Styles.h2])}> {"caretUp"->Utils.str} </h2>
      </div>
      <div className={Tailwind.merge(.[Styles.block])}>
        <IonIcons.Outline.caretUpCircle />
        <h2 className={Tailwind.merge(.[Styles.h2])}> {"caretUpCircle"->Utils.str} </h2>
      </div>
      <div className={Tailwind.merge(.[Styles.block])}>
        <IonIcons.Outline.cart />
        <h2 className={Tailwind.merge(.[Styles.h2])}> {"cart"->Utils.str} </h2>
      </div>
      <div className={Tailwind.merge(.[Styles.block])}>
        <IonIcons.Outline.cash />
        <h2 className={Tailwind.merge(.[Styles.h2])}> {"cash"->Utils.str} </h2>
      </div>
      <div className={Tailwind.merge(.[Styles.block])}>
        <IonIcons.Outline.cellular />
        <h2 className={Tailwind.merge(.[Styles.h2])}> {"cellular"->Utils.str} </h2>
      </div>
      <div className={Tailwind.merge(.[Styles.block])}>
        <IonIcons.Outline.chatbox />
        <h2 className={Tailwind.merge(.[Styles.h2])}> {"chatbox"->Utils.str} </h2>
      </div>
      <div className={Tailwind.merge(.[Styles.block])}>
        <IonIcons.Outline.chatboxEllipses />
        <h2 className={Tailwind.merge(.[Styles.h2])}> {"chatboxEllipses"->Utils.str} </h2>
      </div>
      <div className={Tailwind.merge(.[Styles.block])}>
        <IonIcons.Outline.chatbubble />
        <h2 className={Tailwind.merge(.[Styles.h2])}> {"chatbubble"->Utils.str} </h2>
      </div>
      <div className={Tailwind.merge(.[Styles.block])}>
        <IonIcons.Outline.chatbubbleEllipses />
        <h2 className={Tailwind.merge(.[Styles.h2])}> {"chatbubbleEllipses"->Utils.str} </h2>
      </div>
      <div className={Tailwind.merge(.[Styles.block])}>
        <IonIcons.Outline.chatbubbles />
        <h2 className={Tailwind.merge(.[Styles.h2])}> {"chatbubbles"->Utils.str} </h2>
      </div>
      <div className={Tailwind.merge(.[Styles.block])}>
        <IonIcons.Outline.checkbox />
        <h2 className={Tailwind.merge(.[Styles.h2])}> {"checkbox"->Utils.str} </h2>
      </div>
      <div className={Tailwind.merge(.[Styles.block])}>
        <IonIcons.Outline.checkmark />
        <h2 className={Tailwind.merge(.[Styles.h2])}> {"checkmark"->Utils.str} </h2>
      </div>
      <div className={Tailwind.merge(.[Styles.block])}>
        <IonIcons.Outline.checkmarkCircle />
        <h2 className={Tailwind.merge(.[Styles.h2])}> {"checkmarkCircle"->Utils.str} </h2>
      </div>
      <div className={Tailwind.merge(.[Styles.block])}>
        <IonIcons.Outline.checkmarkDone />
        <h2 className={Tailwind.merge(.[Styles.h2])}> {"checkmarkDone"->Utils.str} </h2>
      </div>
      <div className={Tailwind.merge(.[Styles.block])}>
        <IonIcons.Outline.checkmarkDoneCircle />
        <h2 className={Tailwind.merge(.[Styles.h2])}> {"checkmarkDoneCircle"->Utils.str} </h2>
      </div>
      <div className={Tailwind.merge(.[Styles.block])}>
        <IonIcons.Outline.chevronBack />
        <h2 className={Tailwind.merge(.[Styles.h2])}> {"chevronBack"->Utils.str} </h2>
      </div>
      <div className={Tailwind.merge(.[Styles.block])}>
        <IonIcons.Outline.chevronBackCircle />
        <h2 className={Tailwind.merge(.[Styles.h2])}> {"chevronBackCircle"->Utils.str} </h2>
      </div>
      <div className={Tailwind.merge(.[Styles.block])}>
        <IonIcons.Outline.chevronDown />
        <h2 className={Tailwind.merge(.[Styles.h2])}> {"chevronDown"->Utils.str} </h2>
      </div>
      <div className={Tailwind.merge(.[Styles.block])}>
        <IonIcons.Outline.chevronDownCircle />
        <h2 className={Tailwind.merge(.[Styles.h2])}> {"chevronDownCircle"->Utils.str} </h2>
      </div>
      <div className={Tailwind.merge(.[Styles.block])}>
        <IonIcons.Outline.chevronForward />
        <h2 className={Tailwind.merge(.[Styles.h2])}> {"chevronForward"->Utils.str} </h2>
      </div>
      <div className={Tailwind.merge(.[Styles.block])}>
        <IonIcons.Outline.chevronForwardCircle />
        <h2 className={Tailwind.merge(.[Styles.h2])}> {"chevronForwardCircle"->Utils.str} </h2>
      </div>
      <div className={Tailwind.merge(.[Styles.block])}>
        <IonIcons.Outline.chevronUp />
        <h2 className={Tailwind.merge(.[Styles.h2])}> {"chevronUp"->Utils.str} </h2>
      </div>
      <div className={Tailwind.merge(.[Styles.block])}>
        <IonIcons.Outline.chevronUpCircle />
        <h2 className={Tailwind.merge(.[Styles.h2])}> {"chevronUpCircle"->Utils.str} </h2>
      </div>
      <div className={Tailwind.merge(.[Styles.block])}>
        <IonIcons.Outline.clipboard />
        <h2 className={Tailwind.merge(.[Styles.h2])}> {"clipboard"->Utils.str} </h2>
      </div>
      <div className={Tailwind.merge(.[Styles.block])}>
        <IonIcons.Outline.close />
        <h2 className={Tailwind.merge(.[Styles.h2])}> {"close"->Utils.str} </h2>
      </div>
      <div className={Tailwind.merge(.[Styles.block])}>
        <IonIcons.Outline.closeCircle />
        <h2 className={Tailwind.merge(.[Styles.h2])}> {"closeCircle"->Utils.str} </h2>
      </div>
      <div className={Tailwind.merge(.[Styles.block])}>
        <IonIcons.Outline.cloud />
        <h2 className={Tailwind.merge(.[Styles.h2])}> {"cloud"->Utils.str} </h2>
      </div>
      <div className={Tailwind.merge(.[Styles.block])}>
        <IonIcons.Outline.cloudCircle />
        <h2 className={Tailwind.merge(.[Styles.h2])}> {"cloudCircle"->Utils.str} </h2>
      </div>
      <div className={Tailwind.merge(.[Styles.block])}>
        <IonIcons.Outline.cloudDone />
        <h2 className={Tailwind.merge(.[Styles.h2])}> {"cloudDone"->Utils.str} </h2>
      </div>
      <div className={Tailwind.merge(.[Styles.block])}>
        <IonIcons.Outline.cloudDownload />
        <h2 className={Tailwind.merge(.[Styles.h2])}> {"cloudDownload"->Utils.str} </h2>
      </div>
      <div className={Tailwind.merge(.[Styles.block])}>
        <IonIcons.Outline.cloudOffline />
        <h2 className={Tailwind.merge(.[Styles.h2])}> {"cloudOffline"->Utils.str} </h2>
      </div>
      <div className={Tailwind.merge(.[Styles.block])}>
        <IonIcons.Outline.cloudUpload />
        <h2 className={Tailwind.merge(.[Styles.h2])}> {"cloudUpload"->Utils.str} </h2>
      </div>
      <div className={Tailwind.merge(.[Styles.block])}>
        <IonIcons.Outline.cloudy />
        <h2 className={Tailwind.merge(.[Styles.h2])}> {"cloudy"->Utils.str} </h2>
      </div>
      <div className={Tailwind.merge(.[Styles.block])}>
        <IonIcons.Outline.cloudyNight />
        <h2 className={Tailwind.merge(.[Styles.h2])}> {"cloudyNight"->Utils.str} </h2>
      </div>
      <div className={Tailwind.merge(.[Styles.block])}>
        <IonIcons.Outline.code />
        <h2 className={Tailwind.merge(.[Styles.h2])}> {"code"->Utils.str} </h2>
      </div>
      <div className={Tailwind.merge(.[Styles.block])}>
        <IonIcons.Outline.codeDownload />
        <h2 className={Tailwind.merge(.[Styles.h2])}> {"codeDownload"->Utils.str} </h2>
      </div>
      <div className={Tailwind.merge(.[Styles.block])}>
        <IonIcons.Outline.codeSlash />
        <h2 className={Tailwind.merge(.[Styles.h2])}> {"codeSlash"->Utils.str} </h2>
      </div>
      <div className={Tailwind.merge(.[Styles.block])}>
        <IonIcons.Outline.codeWorking />
        <h2 className={Tailwind.merge(.[Styles.h2])}> {"codeWorking"->Utils.str} </h2>
      </div>
      <div className={Tailwind.merge(.[Styles.block])}>
        <IonIcons.Outline.cog />
        <h2 className={Tailwind.merge(.[Styles.h2])}> {"cog"->Utils.str} </h2>
      </div>
      <div className={Tailwind.merge(.[Styles.block])}>
        <IonIcons.Outline.colorFill />
        <h2 className={Tailwind.merge(.[Styles.h2])}> {"colorFill"->Utils.str} </h2>
      </div>
      <div className={Tailwind.merge(.[Styles.block])}>
        <IonIcons.Outline.colorFilter />
        <h2 className={Tailwind.merge(.[Styles.h2])}> {"colorFilter"->Utils.str} </h2>
      </div>
      <div className={Tailwind.merge(.[Styles.block])}>
        <IonIcons.Outline.colorPalette />
        <h2 className={Tailwind.merge(.[Styles.h2])}> {"colorPalette"->Utils.str} </h2>
      </div>
      <div className={Tailwind.merge(.[Styles.block])}>
        <IonIcons.Outline.colorWand />
        <h2 className={Tailwind.merge(.[Styles.h2])}> {"colorWand"->Utils.str} </h2>
      </div>
      <div className={Tailwind.merge(.[Styles.block])}>
        <IonIcons.Outline.compass />
        <h2 className={Tailwind.merge(.[Styles.h2])}> {"compass"->Utils.str} </h2>
      </div>
      <div className={Tailwind.merge(.[Styles.block])}>
        <IonIcons.Outline.construct />
        <h2 className={Tailwind.merge(.[Styles.h2])}> {"construct"->Utils.str} </h2>
      </div>
      <div className={Tailwind.merge(.[Styles.block])}>
        <IonIcons.Outline.contract />
        <h2 className={Tailwind.merge(.[Styles.h2])}> {"contract"->Utils.str} </h2>
      </div>
      <div className={Tailwind.merge(.[Styles.block])}>
        <IonIcons.Outline.contrast />
        <h2 className={Tailwind.merge(.[Styles.h2])}> {"contrast"->Utils.str} </h2>
      </div>
      <div className={Tailwind.merge(.[Styles.block])}>
        <IonIcons.Outline.copy />
        <h2 className={Tailwind.merge(.[Styles.h2])}> {"copy"->Utils.str} </h2>
      </div>
      <div className={Tailwind.merge(.[Styles.block])}>
        <IonIcons.Outline.create />
        <h2 className={Tailwind.merge(.[Styles.h2])}> {"create"->Utils.str} </h2>
      </div>
      <div className={Tailwind.merge(.[Styles.block])}>
        <IonIcons.Outline.crop />
        <h2 className={Tailwind.merge(.[Styles.h2])}> {"crop"->Utils.str} </h2>
      </div>
      <div className={Tailwind.merge(.[Styles.block])}>
        <IonIcons.Outline.cube />
        <h2 className={Tailwind.merge(.[Styles.h2])}> {"cube"->Utils.str} </h2>
      </div>
      <div className={Tailwind.merge(.[Styles.block])}>
        <IonIcons.Outline.cut />
        <h2 className={Tailwind.merge(.[Styles.h2])}> {"cut"->Utils.str} </h2>
      </div>
      <div className={Tailwind.merge(.[Styles.block])}>
        <IonIcons.Outline.desktop />
        <h2 className={Tailwind.merge(.[Styles.h2])}> {"desktop"->Utils.str} </h2>
      </div>
      <div className={Tailwind.merge(.[Styles.block])}>
        <IonIcons.Outline.diamond />
        <h2 className={Tailwind.merge(.[Styles.h2])}> {"diamond"->Utils.str} </h2>
      </div>
      <div className={Tailwind.merge(.[Styles.block])}>
        <IonIcons.Outline.dice />
        <h2 className={Tailwind.merge(.[Styles.h2])}> {"dice"->Utils.str} </h2>
      </div>
      <div className={Tailwind.merge(.[Styles.block])}>
        <IonIcons.Outline.disc />
        <h2 className={Tailwind.merge(.[Styles.h2])}> {"disc"->Utils.str} </h2>
      </div>
      <div className={Tailwind.merge(.[Styles.block])}>
        <IonIcons.Outline.document />
        <h2 className={Tailwind.merge(.[Styles.h2])}> {"document"->Utils.str} </h2>
      </div>
      <div className={Tailwind.merge(.[Styles.block])}>
        <IonIcons.Outline.documentAttach />
        <h2 className={Tailwind.merge(.[Styles.h2])}> {"documentAttach"->Utils.str} </h2>
      </div>
      <div className={Tailwind.merge(.[Styles.block])}>
        <IonIcons.Outline.documentLock />
        <h2 className={Tailwind.merge(.[Styles.h2])}> {"documentLock"->Utils.str} </h2>
      </div>
      <div className={Tailwind.merge(.[Styles.block])}>
        <IonIcons.Outline.documentText />
        <h2 className={Tailwind.merge(.[Styles.h2])}> {"documentText"->Utils.str} </h2>
      </div>
      <div className={Tailwind.merge(.[Styles.block])}>
        <IonIcons.Outline.documents />
        <h2 className={Tailwind.merge(.[Styles.h2])}> {"documents"->Utils.str} </h2>
      </div>
      <div className={Tailwind.merge(.[Styles.block])}>
        <IonIcons.Outline.download />
        <h2 className={Tailwind.merge(.[Styles.h2])}> {"download"->Utils.str} </h2>
      </div>
      <div className={Tailwind.merge(.[Styles.block])}>
        <IonIcons.Outline.duplicate />
        <h2 className={Tailwind.merge(.[Styles.h2])}> {"duplicate"->Utils.str} </h2>
      </div>
      <div className={Tailwind.merge(.[Styles.block])}>
        <IonIcons.Outline.ear />
        <h2 className={Tailwind.merge(.[Styles.h2])}> {"ear"->Utils.str} </h2>
      </div>
      <div className={Tailwind.merge(.[Styles.block])}>
        <IonIcons.Outline.earth />
        <h2 className={Tailwind.merge(.[Styles.h2])}> {"earth"->Utils.str} </h2>
      </div>
      <div className={Tailwind.merge(.[Styles.block])}>
        <IonIcons.Outline.easel />
        <h2 className={Tailwind.merge(.[Styles.h2])}> {"easel"->Utils.str} </h2>
      </div>
      <div className={Tailwind.merge(.[Styles.block])}>
        <IonIcons.Outline.egg />
        <h2 className={Tailwind.merge(.[Styles.h2])}> {"egg"->Utils.str} </h2>
      </div>
      <div className={Tailwind.merge(.[Styles.block])}>
        <IonIcons.Outline.ellipse />
        <h2 className={Tailwind.merge(.[Styles.h2])}> {"ellipse"->Utils.str} </h2>
      </div>
      <div className={Tailwind.merge(.[Styles.block])}>
        <IonIcons.Outline.ellipsisHorizontal />
        <h2 className={Tailwind.merge(.[Styles.h2])}> {"ellipsisHorizontal"->Utils.str} </h2>
      </div>
      <div className={Tailwind.merge(.[Styles.block])}>
        <IonIcons.Outline.ellipsisHorizontalCircle />
        <h2 className={Tailwind.merge(.[Styles.h2])}> {"ellipsisHorizontalCircle"->Utils.str} </h2>
      </div>
      <div className={Tailwind.merge(.[Styles.block])}>
        <IonIcons.Outline.ellipsisVertical />
        <h2 className={Tailwind.merge(.[Styles.h2])}> {"ellipsisVertical"->Utils.str} </h2>
      </div>
      <div className={Tailwind.merge(.[Styles.block])}>
        <IonIcons.Outline.ellipsisVerticalCircle />
        <h2 className={Tailwind.merge(.[Styles.h2])}> {"ellipsisVerticalCircle"->Utils.str} </h2>
      </div>
      <div className={Tailwind.merge(.[Styles.block])}>
        <IonIcons.Outline.enter />
        <h2 className={Tailwind.merge(.[Styles.h2])}> {"enter"->Utils.str} </h2>
      </div>
      <div className={Tailwind.merge(.[Styles.block])}>
        <IonIcons.Outline.exit />
        <h2 className={Tailwind.merge(.[Styles.h2])}> {"exit"->Utils.str} </h2>
      </div>
      <div className={Tailwind.merge(.[Styles.block])}>
        <IonIcons.Outline.expand />
        <h2 className={Tailwind.merge(.[Styles.h2])}> {"expand"->Utils.str} </h2>
      </div>
      <div className={Tailwind.merge(.[Styles.block])}>
        <IonIcons.Outline.extensionPuzzle />
        <h2 className={Tailwind.merge(.[Styles.h2])}> {"extensionPuzzle"->Utils.str} </h2>
      </div>
      <div className={Tailwind.merge(.[Styles.block])}>
        <IonIcons.Outline.eye />
        <h2 className={Tailwind.merge(.[Styles.h2])}> {"eye"->Utils.str} </h2>
      </div>
      <div className={Tailwind.merge(.[Styles.block])}>
        <IonIcons.Outline.eyeOff />
        <h2 className={Tailwind.merge(.[Styles.h2])}> {"eyeOff"->Utils.str} </h2>
      </div>
      <div className={Tailwind.merge(.[Styles.block])}>
        <IonIcons.Outline.eyedrop />
        <h2 className={Tailwind.merge(.[Styles.h2])}> {"eyedrop"->Utils.str} </h2>
      </div>
      <div className={Tailwind.merge(.[Styles.block])}>
        <IonIcons.Outline.fastFood />
        <h2 className={Tailwind.merge(.[Styles.h2])}> {"fastFood"->Utils.str} </h2>
      </div>
      <div className={Tailwind.merge(.[Styles.block])}>
        <IonIcons.Outline.female />
        <h2 className={Tailwind.merge(.[Styles.h2])}> {"female"->Utils.str} </h2>
      </div>
      <div className={Tailwind.merge(.[Styles.block])}>
        <IonIcons.Outline.fileTray />
        <h2 className={Tailwind.merge(.[Styles.h2])}> {"fileTray"->Utils.str} </h2>
      </div>
      <div className={Tailwind.merge(.[Styles.block])}>
        <IonIcons.Outline.fileTrayFull />
        <h2 className={Tailwind.merge(.[Styles.h2])}> {"fileTrayFull"->Utils.str} </h2>
      </div>
      <div className={Tailwind.merge(.[Styles.block])}>
        <IonIcons.Outline.fileTrayStacked />
        <h2 className={Tailwind.merge(.[Styles.h2])}> {"fileTrayStacked"->Utils.str} </h2>
      </div>
      <div className={Tailwind.merge(.[Styles.block])}>
        <IonIcons.Outline.film />
        <h2 className={Tailwind.merge(.[Styles.h2])}> {"film"->Utils.str} </h2>
      </div>
      <div className={Tailwind.merge(.[Styles.block])}>
        <IonIcons.Outline.filter />
        <h2 className={Tailwind.merge(.[Styles.h2])}> {"filter"->Utils.str} </h2>
      </div>
      <div className={Tailwind.merge(.[Styles.block])}>
        <IonIcons.Outline.filterCircle />
        <h2 className={Tailwind.merge(.[Styles.h2])}> {"filterCircle"->Utils.str} </h2>
      </div>
      <div className={Tailwind.merge(.[Styles.block])}>
        <IonIcons.Outline.fingerPrint />
        <h2 className={Tailwind.merge(.[Styles.h2])}> {"fingerPrint"->Utils.str} </h2>
      </div>
      <div className={Tailwind.merge(.[Styles.block])}>
        <IonIcons.Outline.fish />
        <h2 className={Tailwind.merge(.[Styles.h2])}> {"fish"->Utils.str} </h2>
      </div>
      <div className={Tailwind.merge(.[Styles.block])}>
        <IonIcons.Outline.fitness />
        <h2 className={Tailwind.merge(.[Styles.h2])}> {"fitness"->Utils.str} </h2>
      </div>
      <div className={Tailwind.merge(.[Styles.block])}>
        <IonIcons.Outline.flag />
        <h2 className={Tailwind.merge(.[Styles.h2])}> {"flag"->Utils.str} </h2>
      </div>
      <div className={Tailwind.merge(.[Styles.block])}>
        <IonIcons.Outline.flame />
        <h2 className={Tailwind.merge(.[Styles.h2])}> {"flame"->Utils.str} </h2>
      </div>
      <div className={Tailwind.merge(.[Styles.block])}>
        <IonIcons.Outline.flash />
        <h2 className={Tailwind.merge(.[Styles.h2])}> {"flash"->Utils.str} </h2>
      </div>
      <div className={Tailwind.merge(.[Styles.block])}>
        <IonIcons.Outline.flashOff />
        <h2 className={Tailwind.merge(.[Styles.h2])}> {"flashOff"->Utils.str} </h2>
      </div>
      <div className={Tailwind.merge(.[Styles.block])}>
        <IonIcons.Outline.flashlight />
        <h2 className={Tailwind.merge(.[Styles.h2])}> {"flashlight"->Utils.str} </h2>
      </div>
      <div className={Tailwind.merge(.[Styles.block])}>
        <IonIcons.Outline.flask />
        <h2 className={Tailwind.merge(.[Styles.h2])}> {"flask"->Utils.str} </h2>
      </div>
      <div className={Tailwind.merge(.[Styles.block])}>
        <IonIcons.Outline.flower />
        <h2 className={Tailwind.merge(.[Styles.h2])}> {"flower"->Utils.str} </h2>
      </div>
      <div className={Tailwind.merge(.[Styles.block])}>
        <IonIcons.Outline.folder />
        <h2 className={Tailwind.merge(.[Styles.h2])}> {"folder"->Utils.str} </h2>
      </div>
      <div className={Tailwind.merge(.[Styles.block])}>
        <IonIcons.Outline.folderOpen />
        <h2 className={Tailwind.merge(.[Styles.h2])}> {"folderOpen"->Utils.str} </h2>
      </div>
      <div className={Tailwind.merge(.[Styles.block])}>
        <IonIcons.Outline.football />
        <h2 className={Tailwind.merge(.[Styles.h2])}> {"football"->Utils.str} </h2>
      </div>
      <div className={Tailwind.merge(.[Styles.block])}>
        <IonIcons.Outline.footsteps />
        <h2 className={Tailwind.merge(.[Styles.h2])}> {"footsteps"->Utils.str} </h2>
      </div>
      <div className={Tailwind.merge(.[Styles.block])}>
        <IonIcons.Outline.funnel />
        <h2 className={Tailwind.merge(.[Styles.h2])}> {"funnel"->Utils.str} </h2>
      </div>
      <div className={Tailwind.merge(.[Styles.block])}>
        <IonIcons.Outline.gameController />
        <h2 className={Tailwind.merge(.[Styles.h2])}> {"gameController"->Utils.str} </h2>
      </div>
      <div className={Tailwind.merge(.[Styles.block])}>
        <IonIcons.Outline.gift />
        <h2 className={Tailwind.merge(.[Styles.h2])}> {"gift"->Utils.str} </h2>
      </div>
      <div className={Tailwind.merge(.[Styles.block])}>
        <IonIcons.Outline.gitBranch />
        <h2 className={Tailwind.merge(.[Styles.h2])}> {"gitBranch"->Utils.str} </h2>
      </div>
      <div className={Tailwind.merge(.[Styles.block])}>
        <IonIcons.Outline.gitCommit />
        <h2 className={Tailwind.merge(.[Styles.h2])}> {"gitCommit"->Utils.str} </h2>
      </div>
      <div className={Tailwind.merge(.[Styles.block])}>
        <IonIcons.Outline.gitCompare />
        <h2 className={Tailwind.merge(.[Styles.h2])}> {"gitCompare"->Utils.str} </h2>
      </div>
      <div className={Tailwind.merge(.[Styles.block])}>
        <IonIcons.Outline.gitMerge />
        <h2 className={Tailwind.merge(.[Styles.h2])}> {"gitMerge"->Utils.str} </h2>
      </div>
      <div className={Tailwind.merge(.[Styles.block])}>
        <IonIcons.Outline.gitNetwork />
        <h2 className={Tailwind.merge(.[Styles.h2])}> {"gitNetwork"->Utils.str} </h2>
      </div>
      <div className={Tailwind.merge(.[Styles.block])}>
        <IonIcons.Outline.gitPullRequest />
        <h2 className={Tailwind.merge(.[Styles.h2])}> {"gitPullRequest"->Utils.str} </h2>
      </div>
      <div className={Tailwind.merge(.[Styles.block])}>
        <IonIcons.Outline.glasses />
        <h2 className={Tailwind.merge(.[Styles.h2])}> {"glasses"->Utils.str} </h2>
      </div>
      <div className={Tailwind.merge(.[Styles.block])}>
        <IonIcons.Outline.globe />
        <h2 className={Tailwind.merge(.[Styles.h2])}> {"globe"->Utils.str} </h2>
      </div>
      <div className={Tailwind.merge(.[Styles.block])}>
        <IonIcons.Outline.golf />
        <h2 className={Tailwind.merge(.[Styles.h2])}> {"golf"->Utils.str} </h2>
      </div>
      <div className={Tailwind.merge(.[Styles.block])}>
        <IonIcons.Outline.grid />
        <h2 className={Tailwind.merge(.[Styles.h2])}> {"grid"->Utils.str} </h2>
      </div>
      <div className={Tailwind.merge(.[Styles.block])}>
        <IonIcons.Outline.hammer />
        <h2 className={Tailwind.merge(.[Styles.h2])}> {"hammer"->Utils.str} </h2>
      </div>
      <div className={Tailwind.merge(.[Styles.block])}>
        <IonIcons.Outline.handLeft />
        <h2 className={Tailwind.merge(.[Styles.h2])}> {"handLeft"->Utils.str} </h2>
      </div>
      <div className={Tailwind.merge(.[Styles.block])}>
        <IonIcons.Outline.handRight />
        <h2 className={Tailwind.merge(.[Styles.h2])}> {"flame"->Utils.str} </h2>
      </div>
      <div className={Tailwind.merge(.[Styles.block])}>
        <IonIcons.Outline.happy />
        <h2 className={Tailwind.merge(.[Styles.h2])}> {"happy"->Utils.str} </h2>
      </div>
      <div className={Tailwind.merge(.[Styles.block])}>
        <IonIcons.Outline.hardwareChip />
        <h2 className={Tailwind.merge(.[Styles.h2])}> {"flame"->Utils.str} </h2>
      </div>
      <div className={Tailwind.merge(.[Styles.block])}>
        <IonIcons.Outline.headset />
        <h2 className={Tailwind.merge(.[Styles.h2])}> {"headset"->Utils.str} </h2>
      </div>
      <div className={Tailwind.merge(.[Styles.block])}>
        <IonIcons.Outline.heart />
        <h2 className={Tailwind.merge(.[Styles.h2])}> {"heart"->Utils.str} </h2>
      </div>
      <div className={Tailwind.merge(.[Styles.block])}>
        <IonIcons.Outline.heartCircle />
        <h2 className={Tailwind.merge(.[Styles.h2])}> {"heartCircle"->Utils.str} </h2>
      </div>
      <div className={Tailwind.merge(.[Styles.block])}>
        <IonIcons.Outline.heartDislike />
        <h2 className={Tailwind.merge(.[Styles.h2])}> {"heartDislike"->Utils.str} </h2>
      </div>
      <div className={Tailwind.merge(.[Styles.block])}>
        <IonIcons.Outline.heartDislikeCircle />
        <h2 className={Tailwind.merge(.[Styles.h2])}> {"heartDislikeCircle"->Utils.str} </h2>
      </div>
      <div className={Tailwind.merge(.[Styles.block])}>
        <IonIcons.Outline.heartHalf />
        <h2 className={Tailwind.merge(.[Styles.h2])}> {"heartHalf"->Utils.str} </h2>
      </div>
      <div className={Tailwind.merge(.[Styles.block])}>
        <IonIcons.Outline.help />
        <h2 className={Tailwind.merge(.[Styles.h2])}> {"help"->Utils.str} </h2>
      </div>
      <div className={Tailwind.merge(.[Styles.block])}>
        <IonIcons.Outline.helpBuoy />
        <h2 className={Tailwind.merge(.[Styles.h2])}> {"helpBuoy"->Utils.str} </h2>
      </div>
      <div className={Tailwind.merge(.[Styles.block])}>
        <IonIcons.Outline.helpCircle />
        <h2 className={Tailwind.merge(.[Styles.h2])}> {"helpCircle"->Utils.str} </h2>
      </div>
      <div className={Tailwind.merge(.[Styles.block])}>
        <IonIcons.Outline.home />
        <h2 className={Tailwind.merge(.[Styles.h2])}> {"home"->Utils.str} </h2>
      </div>
      <div className={Tailwind.merge(.[Styles.block])}>
        <IonIcons.Outline.hourglass />
        <h2 className={Tailwind.merge(.[Styles.h2])}> {"hourglass"->Utils.str} </h2>
      </div>
      <div className={Tailwind.merge(.[Styles.block])}>
        <IonIcons.Outline.iceCream />
        <h2 className={Tailwind.merge(.[Styles.h2])}> {"iceCream"->Utils.str} </h2>
      </div>
      <div className={Tailwind.merge(.[Styles.block])}>
        <IonIcons.Outline.idCard />
        <h2 className={Tailwind.merge(.[Styles.h2])}> {"idCard"->Utils.str} </h2>
      </div>
      <div className={Tailwind.merge(.[Styles.block])}>
        <IonIcons.Outline.image />
        <h2 className={Tailwind.merge(.[Styles.h2])}> {"image"->Utils.str} </h2>
      </div>
      <div className={Tailwind.merge(.[Styles.block])}>
        <IonIcons.Outline.images />
        <h2 className={Tailwind.merge(.[Styles.h2])}> {"images"->Utils.str} </h2>
      </div>
      <div className={Tailwind.merge(.[Styles.block])}>
        <IonIcons.Outline.infinite />
        <h2 className={Tailwind.merge(.[Styles.h2])}> {"infinite"->Utils.str} </h2>
      </div>
      <div className={Tailwind.merge(.[Styles.block])}>
        <IonIcons.Outline.information />
        <h2 className={Tailwind.merge(.[Styles.h2])}> {"information"->Utils.str} </h2>
      </div>
      <div className={Tailwind.merge(.[Styles.block])}>
        <IonIcons.Outline.informationCircle />
        <h2 className={Tailwind.merge(.[Styles.h2])}> {"informationCircle"->Utils.str} </h2>
      </div>
      <div className={Tailwind.merge(.[Styles.block])}>
        <IonIcons.Outline.invertMode />
        <h2 className={Tailwind.merge(.[Styles.h2])}> {"invertMode"->Utils.str} </h2>
      </div>
      <div className={Tailwind.merge(.[Styles.block])}>
        <IonIcons.Outline.journal />
        <h2 className={Tailwind.merge(.[Styles.h2])}> {"journal"->Utils.str} </h2>
      </div>
      <div className={Tailwind.merge(.[Styles.block])}>
        <IonIcons.Outline.key />
        <h2 className={Tailwind.merge(.[Styles.h2])}> {"key"->Utils.str} </h2>
      </div>
      <div className={Tailwind.merge(.[Styles.block])}>
        <IonIcons.Outline.keypad />
        <h2 className={Tailwind.merge(.[Styles.h2])}> {"keypad"->Utils.str} </h2>
      </div>
      <div className={Tailwind.merge(.[Styles.block])}>
        <IonIcons.Outline.language />
        <h2 className={Tailwind.merge(.[Styles.h2])}> {"language"->Utils.str} </h2>
      </div>
      <div className={Tailwind.merge(.[Styles.block])}>
        <IonIcons.Outline.laptop />
        <h2 className={Tailwind.merge(.[Styles.h2])}> {"laptop"->Utils.str} </h2>
      </div>
      <div className={Tailwind.merge(.[Styles.block])}>
        <IonIcons.Outline.layers />
        <h2 className={Tailwind.merge(.[Styles.h2])}> {"layers"->Utils.str} </h2>
      </div>
      <div className={Tailwind.merge(.[Styles.block])}>
        <IonIcons.Outline.leaf />
        <h2 className={Tailwind.merge(.[Styles.h2])}> {"leaf"->Utils.str} </h2>
      </div>
      <div className={Tailwind.merge(.[Styles.block])}>
        <IonIcons.Outline.library />
        <h2 className={Tailwind.merge(.[Styles.h2])}> {"library"->Utils.str} </h2>
      </div>
      <div className={Tailwind.merge(.[Styles.block])}>
        <IonIcons.Outline.link />
        <h2 className={Tailwind.merge(.[Styles.h2])}> {"link"->Utils.str} </h2>
      </div>
      <div className={Tailwind.merge(.[Styles.block])}>
        <IonIcons.Outline.list />
        <h2 className={Tailwind.merge(.[Styles.h2])}> {"list"->Utils.str} </h2>
      </div>
      <div className={Tailwind.merge(.[Styles.block])}>
        <IonIcons.Outline.listCircle />
        <h2 className={Tailwind.merge(.[Styles.h2])}> {"listCircle"->Utils.str} </h2>
      </div>
      <div className={Tailwind.merge(.[Styles.block])}>
        <IonIcons.Outline.locate />
        <h2 className={Tailwind.merge(.[Styles.h2])}> {"locate"->Utils.str} </h2>
      </div>
      <div className={Tailwind.merge(.[Styles.block])}>
        <IonIcons.Outline.location />
        <h2 className={Tailwind.merge(.[Styles.h2])}> {"location"->Utils.str} </h2>
      </div>
      <div className={Tailwind.merge(.[Styles.block])}>
        <IonIcons.Outline.lockClosed />
        <h2 className={Tailwind.merge(.[Styles.h2])}> {"lockClosed"->Utils.str} </h2>
      </div>
      <div className={Tailwind.merge(.[Styles.block])}>
        <IonIcons.Outline.lockOpen />
        <h2 className={Tailwind.merge(.[Styles.h2])}> {"lockOpen"->Utils.str} </h2>
      </div>
      <div className={Tailwind.merge(.[Styles.block])}>
        <IonIcons.Outline.logIn />
        <h2 className={Tailwind.merge(.[Styles.h2])}> {"logIn"->Utils.str} </h2>
      </div>
      <div className={Tailwind.merge(.[Styles.block])}>
        <IonIcons.Outline.logOut />
        <h2 className={Tailwind.merge(.[Styles.h2])}> {"logOut"->Utils.str} </h2>
      </div>
      <div className={Tailwind.merge(.[Styles.block])}>
        <IonIcons.Outline.magnet />
        <h2 className={Tailwind.merge(.[Styles.h2])}> {"magnet"->Utils.str} </h2>
      </div>
    </div>
    <h1 className=Styles.h1> {"Filled Icons"->Utils.str} </h1>
    <div
      className={Tailwind.merge(.[
        Styles.grid,
        Styles.gridBreakpoints450,
        Styles.gridBreakpoints830,
      ])}>
      <div className={Tailwind.merge(.[Styles.block])}>
        <IonIcons.Filled.accessibility />
        <h2 className={Tailwind.merge(.[Styles.h2])}> {"accessibility"->Utils.str} </h2>
      </div>
      <div className={Tailwind.merge(.[Styles.block])}>
        <IonIcons.Filled.add />
        <h2 className={Tailwind.merge(.[Styles.h2])}> {"add"->Utils.str} </h2>
      </div>
      <div className={Tailwind.merge(.[Styles.block])}>
        <IonIcons.Filled.addCircle />
        <h2 className={Tailwind.merge(.[Styles.h2])}> {"addCircle"->Utils.str} </h2>
      </div>
      <div className={Tailwind.merge(.[Styles.block])}>
        <IonIcons.Filled.airplane />
        <h2 className={Tailwind.merge(.[Styles.h2])}> {"airplane"->Utils.str} </h2>
      </div>
      <div className={Tailwind.merge(.[Styles.block])}>
        <IonIcons.Filled.alarm />
        <h2 className={Tailwind.merge(.[Styles.h2])}> {"alarm"->Utils.str} </h2>
      </div>
    </div>
    <h1 className=Styles.h1> {"Sharp Icons"->Utils.str} </h1>
    <div
      className={Tailwind.merge(.[
        Styles.grid,
        Styles.gridBreakpoints450,
        Styles.gridBreakpoints830,
      ])}>
      <div className={Tailwind.merge(.[Styles.block])}>
        <IonIcons.Sharp.accessibility />
        <h2 className={Tailwind.merge(.[Styles.h2])}> {"accessibility"->Utils.str} </h2>
      </div>
      <div className={Tailwind.merge(.[Styles.block])}>
        <IonIcons.Sharp.add />
        <h2 className={Tailwind.merge(.[Styles.h2])}> {"add"->Utils.str} </h2>
      </div>
      <div className={Tailwind.merge(.[Styles.block])}>
        <IonIcons.Sharp.addCircle />
        <h2 className={Tailwind.merge(.[Styles.h2])}> {"addCircle"->Utils.str} </h2>
      </div>
      <div className={Tailwind.merge(.[Styles.block])}>
        <IonIcons.Sharp.airPlane />
        <h2 className={Tailwind.merge(.[Styles.h2])}> {"airPlane"->Utils.str} </h2>
      </div>
      <div className={Tailwind.merge(.[Styles.block])}>
        <IonIcons.Sharp.alarm />
        <h2 className={Tailwind.merge(.[Styles.h2])}> {"alarm"->Utils.str} </h2>
      </div>
      <div className={Tailwind.merge(.[Styles.block])}>
        <IonIcons.Sharp.albums />
        <h2 className={Tailwind.merge(.[Styles.h2])}> {"albums"->Utils.str} </h2>
      </div>
      <div className={Tailwind.merge(.[Styles.block])}>
        <IonIcons.Sharp.alert />
        <h2 className={Tailwind.merge(.[Styles.h2])}> {"alart"->Utils.str} </h2>
      </div>
      <div className={Tailwind.merge(.[Styles.block])}>
        <IonIcons.Sharp.alertCircle />
        <h2 className={Tailwind.merge(.[Styles.h2])}> {"alartCircle"->Utils.str} </h2>
      </div>
      <div className={Tailwind.merge(.[Styles.block])}>
        <IonIcons.Sharp.americanFootball />
        <h2 className={Tailwind.merge(.[Styles.h2])}> {"americanFootball"->Utils.str} </h2>
      </div>
      <div className={Tailwind.merge(.[Styles.block])}>
        <IonIcons.Sharp.analyticsSharp />
        <h2 className={Tailwind.merge(.[Styles.h2])}> {"analyticsSharp"->Utils.str} </h2>
      </div>
      <div className={Tailwind.merge(.[Styles.block])}>
        <IonIcons.Sharp.apetureSharp />
        <h2 className={Tailwind.merge(.[Styles.h2])}> {"apetureSharp"->Utils.str} </h2>
      </div>
      <div className={Tailwind.merge(.[Styles.block])}>
        <IonIcons.Sharp.appsSharp />
        <h2 className={Tailwind.merge(.[Styles.h2])}> {"appsSharp"->Utils.str} </h2>
      </div>
      <div className={Tailwind.merge(.[Styles.block])}>
        <IonIcons.Sharp.archiveSharp />
        <h2 className={Tailwind.merge(.[Styles.h2])}> {"archiveSharp"->Utils.str} </h2>
      </div>
      <div className={Tailwind.merge(.[Styles.block])}>
        <IonIcons.Sharp.arrowBackSharp />
        <h2 className={Tailwind.merge(.[Styles.h2])}> {"arrowBackSharp"->Utils.str} </h2>
      </div>
      <div className={Tailwind.merge(.[Styles.block])}>
        <IonIcons.Sharp.arrowBackCircleSharp />
        <h2 className={Tailwind.merge(.[Styles.h2])}> {"arrowBackCircleSharp"->Utils.str} </h2>
      </div>
      <div className={Tailwind.merge(.[Styles.block])}>
        <IonIcons.Sharp.arrowDownSharp />
        <h2 className={Tailwind.merge(.[Styles.h2])}> {"arrowDownSharp"->Utils.str} </h2>
      </div>
      <div className={Tailwind.merge(.[Styles.block])}>
        <IonIcons.Sharp.arrowDownCircleSharp />
        <h2 className={Tailwind.merge(.[Styles.h2])}> {"arrowDownCircleSharp"->Utils.str} </h2>
      </div>
      <div className={Tailwind.merge(.[Styles.block])}>
        <IonIcons.Sharp.arrowForwardSharp />
        <h2 className={Tailwind.merge(.[Styles.h2])}> {"arrowForwardSharp"->Utils.str} </h2>
      </div>
      <div className={Tailwind.merge(.[Styles.block])}>
        <IonIcons.Sharp.arrowForwardCircleSharp />
        <h2 className={Tailwind.merge(.[Styles.h2])}> {"arrowForwardCircleSharp"->Utils.str} </h2>
      </div>
      <div className={Tailwind.merge(.[Styles.block])}>
        <IonIcons.Sharp.arrowRedoSharp />
        <h2 className={Tailwind.merge(.[Styles.h2])}> {"arrowRedoSharp"->Utils.str} </h2>
      </div>
      <div className={Tailwind.merge(.[Styles.block])}>
        <IonIcons.Sharp.arrowRedoCircleSharp />
        <h2 className={Tailwind.merge(.[Styles.h2])}> {"arrowRedoCircleSharp"->Utils.str} </h2>
      </div>
      <div className={Tailwind.merge(.[Styles.block])}>
        <IonIcons.Sharp.arrowUndoSharp />
        <h2 className={Tailwind.merge(.[Styles.h2])}> {"arrowUndoSharp"->Utils.str} </h2>
      </div>
      <div className={Tailwind.merge(.[Styles.block])}>
        <IonIcons.Sharp.arrowUndoCircleSharp />
        <h2 className={Tailwind.merge(.[Styles.h2])}> {"arrowUndoCircleSharp"->Utils.str} </h2>
      </div>
      <div className={Tailwind.merge(.[Styles.block])}>
        <IonIcons.Sharp.arrowUpSharp />
        <h2 className={Tailwind.merge(.[Styles.h2])}> {"arrowUpSharp"->Utils.str} </h2>
      </div>
      <div className={Tailwind.merge(.[Styles.block])}>
        <IonIcons.Sharp.arrowUpCircleSharp />
        <h2 className={Tailwind.merge(.[Styles.h2])}> {"arrowUpCircleSharp"->Utils.str} </h2>
      </div>
      <div className={Tailwind.merge(.[Styles.block])}>
        <IonIcons.Sharp.atSharp />
        <h2 className={Tailwind.merge(.[Styles.h2])}> {"atSharp"->Utils.str} </h2>
      </div>
      <div className={Tailwind.merge(.[Styles.block])}>
        <IonIcons.Sharp.atCircleSharp />
        <h2 className={Tailwind.merge(.[Styles.h2])}> {"atCircleSharp"->Utils.str} </h2>
      </div>
      <div className={Tailwind.merge(.[Styles.block])}>
        <IonIcons.Sharp.attachSharp />
        <h2 className={Tailwind.merge(.[Styles.h2])}> {"attachSharp"->Utils.str} </h2>
      </div>
      <div className={Tailwind.merge(.[Styles.block])}>
        <IonIcons.Sharp.backspaceSharp />
        <h2 className={Tailwind.merge(.[Styles.h2])}> {"backspaceSharp"->Utils.str} </h2>
      </div>
    </div>
    <h1 className=Styles.h1> {"Logos"->Utils.str} </h1>
    <div
      className={Tailwind.merge(.[
        Styles.grid,
        Styles.gridBreakpoints450,
        Styles.gridBreakpoints830,
      ])}>
      <div className={Tailwind.merge(.[Styles.block])}>
        <IonIcons.Logos.alipay />
        <h2 className={Tailwind.merge(.[Styles.h2])}> {"alipay"->Utils.str} </h2>
      </div>
    </div>
  </div>
}
