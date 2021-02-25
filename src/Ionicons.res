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

  let svgString = "<svg xmlns='http://www.w3.org/2000/svg' class='ionicon' viewBox='0 0 512 512'><title>People Circle</title><path d='M256 464c-114.69 0-208-93.31-208-208S141.31 48 256 48s208 93.31 208 208-93.31 208-208 208zm0-384c-97 0-176 79-176 176s79 176 176 176 176-78.95 176-176S353.05 80 256 80z'/><path d='M323.67 292c-17.4 0-34.21-7.72-47.34-21.73a83.76 83.76 0 01-22-51.32c-1.47-20.7 4.88-39.75 17.88-53.62S303.38 144 323.67 144c20.14 0 38.37 7.62 51.33 21.46s19.47 33 18 53.51a84 84 0 01-22 51.3C357.86 284.28 341.06 292 323.67 292zm55.81-74zM163.82 295.36c-29.76 0-55.93-27.51-58.33-61.33-1.23-17.32 4.15-33.33 15.17-45.08s26.22-18 43.15-18 32.12 6.44 43.07 18.14 16.5 27.82 15.25 45c-2.44 33.77-28.6 61.27-58.31 61.27zM420.37 355.28c-1.59-4.7-5.46-9.71-13.22-14.46-23.46-14.33-52.32-21.91-83.48-21.91-30.57 0-60.23 7.9-83.53 22.25-26.25 16.17-43.89 39.75-51 68.18-1.68 6.69-4.13 19.14-1.51 26.11a192.18 192.18 0 00232.75-80.17zM163.63 401.37c7.07-28.21 22.12-51.73 45.47-70.75a8 8 0 00-2.59-13.77c-12-3.83-25.7-5.88-42.69-5.88-23.82 0-49.11 6.45-68.14 18.17-5.4 3.33-10.7 4.61-14.78 5.75a192.84 192.84 0 0077.78 86.64l1.79-.14a102.82 102.82 0 013.16-20.02z'/></svg>"
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
        <Ion.Outline.accessibility />
        <h2 className={Tailwind.merge(.[Styles.h2])}> {"accessibility"->Utils.str} </h2>
      </div>
      <div className={Tailwind.merge(.[Styles.block])}>
        <Ion.Outline.add /> <h2 className={Tailwind.merge(.[Styles.h2])}> {"add"->Utils.str} </h2>
      </div>
      <div className={Tailwind.merge(.[Styles.block])}>
        <Ion.Outline.addCircle strokeWidth="44" />
        <h2 className={Tailwind.merge(.[Styles.h2])}> {"addCircle"->Utils.str} </h2>
      </div>
      <div className={Tailwind.merge(.[Styles.block])}>
        <Ion.Outline.airplane />
        <h2 className={Tailwind.merge(.[Styles.h2])}> {"airplane"->Utils.str} </h2>
      </div>
      <div className={Tailwind.merge(.[Styles.block])}>
        <Ion.Outline.alarm />
        <h2 className={Tailwind.merge(.[Styles.h2])}> {"alarm"->Utils.str} </h2>
      </div>
      <div className={Tailwind.merge(.[Styles.block])}>
        <Ion.Outline.album />
        <h2 className={Tailwind.merge(.[Styles.h2])}> {"album"->Utils.str} </h2>
      </div>
      <div className={Tailwind.merge(.[Styles.block])}>
        <Ion.Outline.alert />
        <h2 className={Tailwind.merge(.[Styles.h2])}> {"alert"->Utils.str} </h2>
      </div>
      <div className={Tailwind.merge(.[Styles.block])}>
        <Ion.Outline.alertCircle />
        <h2 className={Tailwind.merge(.[Styles.h2])}> {"alertCircle"->Utils.str} </h2>
      </div>
      <div className={Tailwind.merge(.[Styles.block])}>
        <Ion.Outline.americanFootball />
        <h2 className={Tailwind.merge(.[Styles.h2])}> {"americanFootball"->Utils.str} </h2>
      </div>
      <div className={Tailwind.merge(.[Styles.block])}>
        <Ion.Outline.analytics />
        <h2 className={Tailwind.merge(.[Styles.h2])}> {"analytics"->Utils.str} </h2>
      </div>
      <div className={Tailwind.merge(.[Styles.block])}>
        <Ion.Outline.aperture />
        <h2 className={Tailwind.merge(.[Styles.h2])}> {"aperture"->Utils.str} </h2>
      </div>
      <div className={Tailwind.merge(.[Styles.block])}>
        <Ion.Outline.apps /> <h2 className={Tailwind.merge(.[Styles.h2])}> {"apps"->Utils.str} </h2>
      </div>
      <div className={Tailwind.merge(.[Styles.block])}>
        <Ion.Outline.archive />
        <h2 className={Tailwind.merge(.[Styles.h2])}> {"archive"->Utils.str} </h2>
      </div>
      <div className={Tailwind.merge(.[Styles.block])}>
        <Ion.Outline.arrowBack />
        <h2 className={Tailwind.merge(.[Styles.h2])}> {"arrowBack"->Utils.str} </h2>
      </div>
      <div className={Tailwind.merge(.[Styles.block])}>
        <Ion.Outline.arrowBackCircle />
        <h2 className={Tailwind.merge(.[Styles.h2])}> {"arrowBackCircle"->Utils.str} </h2>
      </div>
      <div className={Tailwind.merge(.[Styles.block])}>
        <Ion.Outline.arrowDown />
        <h2 className={Tailwind.merge(.[Styles.h2])}> {"arrowDown"->Utils.str} </h2>
      </div>
      <div className={Tailwind.merge(.[Styles.block])}>
        <Ion.Outline.arrowDownCircle />
        <h2 className={Tailwind.merge(.[Styles.h2])}> {"arrowDownCircle"->Utils.str} </h2>
      </div>
      <div className={Tailwind.merge(.[Styles.block])}>
        <Ion.Outline.arrowForward />
        <h2 className={Tailwind.merge(.[Styles.h2])}> {"arrowForward"->Utils.str} </h2>
      </div>
      <div className={Tailwind.merge(.[Styles.block])}>
        <Ion.Outline.arrowForwardCircle />
        <h2 className={Tailwind.merge(.[Styles.h2])}> {"arrowForwardCircle"->Utils.str} </h2>
      </div>
      <div className={Tailwind.merge(.[Styles.block])}>
        <Ion.Outline.arrowRedo />
        <h2 className={Tailwind.merge(.[Styles.h2])}> {"arrowRedo"->Utils.str} </h2>
      </div>
      <div className={Tailwind.merge(.[Styles.block])}>
        <Ion.Outline.arrowRedoCircle />
        <h2 className={Tailwind.merge(.[Styles.h2])}> {"arrowRedoCircle"->Utils.str} </h2>
      </div>
      <div className={Tailwind.merge(.[Styles.block])}>
        <Ion.Outline.arrowUndo />
        <h2 className={Tailwind.merge(.[Styles.h2])}> {"arrowUndo"->Utils.str} </h2>
      </div>
      <div className={Tailwind.merge(.[Styles.block])}>
        <Ion.Outline.arrowUndoCircle />
        <h2 className={Tailwind.merge(.[Styles.h2])}> {"arrowUndoCircle"->Utils.str} </h2>
      </div>
      <div className={Tailwind.merge(.[Styles.block])}>
        <Ion.Outline.arrowUp />
        <h2 className={Tailwind.merge(.[Styles.h2])}> {"arrowUp"->Utils.str} </h2>
      </div>
      <div className={Tailwind.merge(.[Styles.block])}>
        <Ion.Outline.arrowUpCircle />
        <h2 className={Tailwind.merge(.[Styles.h2])}> {"arrowUpCircle"->Utils.str} </h2>
      </div>
      <div className={Tailwind.merge(.[Styles.block])}>
        <Ion.Outline.at /> <h2 className={Tailwind.merge(.[Styles.h2])}> {"at"->Utils.str} </h2>
      </div>
      <div className={Tailwind.merge(.[Styles.block])}>
        <Ion.Outline.atCircle />
        <h2 className={Tailwind.merge(.[Styles.h2])}> {"atCircle"->Utils.str} </h2>
      </div>
      <div className={Tailwind.merge(.[Styles.block])}>
        <Ion.Outline.attach />
        <h2 className={Tailwind.merge(.[Styles.h2])}> {"attach"->Utils.str} </h2>
      </div>
      <div className={Tailwind.merge(.[Styles.block])}>
        <Ion.Outline.backspace />
        <h2 className={Tailwind.merge(.[Styles.h2])}> {"backspace"->Utils.str} </h2>
      </div>
      <div className={Tailwind.merge(.[Styles.block])}>
        <Ion.Outline.bag /> <h2 className={Tailwind.merge(.[Styles.h2])}> {"bag"->Utils.str} </h2>
      </div>
      <div className={Tailwind.merge(.[Styles.block])}>
        <Ion.Outline.bagAdd />
        <h2 className={Tailwind.merge(.[Styles.h2])}> {"bagAdd"->Utils.str} </h2>
      </div>
      <div className={Tailwind.merge(.[Styles.block])}>
        <Ion.Outline.bagCheck />
        <h2 className={Tailwind.merge(.[Styles.h2])}> {"bagCheck"->Utils.str} </h2>
      </div>
      <div className={Tailwind.merge(.[Styles.block])}>
        <Ion.Outline.bagHandle />
        <h2 className={Tailwind.merge(.[Styles.h2])}> {"bagHandle"->Utils.str} </h2>
      </div>
      <div className={Tailwind.merge(.[Styles.block])}>
        <Ion.Outline.bagRemove />
        <h2 className={Tailwind.merge(.[Styles.h2])}> {"bagRemove"->Utils.str} </h2>
      </div>
      <div className={Tailwind.merge(.[Styles.block])}>
        <Ion.Outline.baloon />
        <h2 className={Tailwind.merge(.[Styles.h2])}> {"baloon"->Utils.str} </h2>
      </div>
      <div className={Tailwind.merge(.[Styles.block])}>
        <Ion.Outline.ban /> <h2 className={Tailwind.merge(.[Styles.h2])}> {"ban"->Utils.str} </h2>
      </div>
      <div className={Tailwind.merge(.[Styles.block])}>
        <Ion.Outline.bandage />
        <h2 className={Tailwind.merge(.[Styles.h2])}> {"bandage"->Utils.str} </h2>
      </div>
      <div className={Tailwind.merge(.[Styles.block])}>
        <Ion.Outline.barChart />
        <h2 className={Tailwind.merge(.[Styles.h2])}> {"barChart"->Utils.str} </h2>
      </div>
      <div className={Tailwind.merge(.[Styles.block])}>
        <Ion.Outline.barbell />
        <h2 className={Tailwind.merge(.[Styles.h2])}> {"barbell"->Utils.str} </h2>
      </div>
      <div className={Tailwind.merge(.[Styles.block])}>
        <Ion.Outline.barcode />
        <h2 className={Tailwind.merge(.[Styles.h2])}> {"barcode"->Utils.str} </h2>
      </div>
      <div className={Tailwind.merge(.[Styles.block])}>
        <Ion.Outline.baseball />
        <h2 className={Tailwind.merge(.[Styles.h2])}> {"baseball"->Utils.str} </h2>
      </div>
      <div className={Tailwind.merge(.[Styles.block])}>
        <Ion.Outline.basket />
        <h2 className={Tailwind.merge(.[Styles.h2])}> {"basket"->Utils.str} </h2>
      </div>
      <div className={Tailwind.merge(.[Styles.block])}>
        <Ion.Outline.basketball />
        <h2 className={Tailwind.merge(.[Styles.h2])}> {"basketball"->Utils.str} </h2>
      </div>
      <div className={Tailwind.merge(.[Styles.block])}>
        <Ion.Outline.batteryCharging />
        <h2 className={Tailwind.merge(.[Styles.h2])}> {"batteryCharging"->Utils.str} </h2>
      </div>
      <div className={Tailwind.merge(.[Styles.block])}>
        <Ion.Outline.batteryDead />
        <h2 className={Tailwind.merge(.[Styles.h2])}> {"batteryDead"->Utils.str} </h2>
      </div>
      <div className={Tailwind.merge(.[Styles.block])}>
        <Ion.Outline.batteryFull />
        <h2 className={Tailwind.merge(.[Styles.h2])}> {"batteryFull"->Utils.str} </h2>
      </div>
      <div className={Tailwind.merge(.[Styles.block])}>
        <Ion.Outline.batteryHalf />
        <h2 className={Tailwind.merge(.[Styles.h2])}> {"batteryHalf"->Utils.str} </h2>
      </div>
      <div className={Tailwind.merge(.[Styles.block])}>
        <Ion.Outline.beaker />
        <h2 className={Tailwind.merge(.[Styles.h2])}> {"beaker"->Utils.str} </h2>
      </div>
      <div className={Tailwind.merge(.[Styles.block])}>
        <Ion.Outline.bed /> <h2 className={Tailwind.merge(.[Styles.h2])}> {"bed"->Utils.str} </h2>
      </div>
      <div className={Tailwind.merge(.[Styles.block])}>
        <Ion.Outline.beer /> <h2 className={Tailwind.merge(.[Styles.h2])}> {"beer"->Utils.str} </h2>
      </div>
      <div className={Tailwind.merge(.[Styles.block])}>
        <Ion.Outline.bicycle />
        <h2 className={Tailwind.merge(.[Styles.h2])}> {"bicycle"->Utils.str} </h2>
      </div>
      <div className={Tailwind.merge(.[Styles.block])}>
        <Ion.Outline.bluetooth />
        <h2 className={Tailwind.merge(.[Styles.h2])}> {"bluetooth"->Utils.str} </h2>
      </div>
      <div className={Tailwind.merge(.[Styles.block])}>
        <Ion.Outline.boat /> <h2 className={Tailwind.merge(.[Styles.h2])}> {"boat"->Utils.str} </h2>
      </div>
      <div className={Tailwind.merge(.[Styles.block])}>
        <Ion.Outline.body /> <h2 className={Tailwind.merge(.[Styles.h2])}> {"body"->Utils.str} </h2>
      </div>
      <div className={Tailwind.merge(.[Styles.block])}>
        <Ion.Outline.bonfire />
        <h2 className={Tailwind.merge(.[Styles.h2])}> {"bonfire"->Utils.str} </h2>
      </div>
      <div className={Tailwind.merge(.[Styles.block])}>
        <Ion.Outline.book /> <h2 className={Tailwind.merge(.[Styles.h2])}> {"book"->Utils.str} </h2>
      </div>
      <div className={Tailwind.merge(.[Styles.block])}>
        <Ion.Outline.bookmark />
        <h2 className={Tailwind.merge(.[Styles.h2])}> {"bookmark"->Utils.str} </h2>
      </div>
      <div className={Tailwind.merge(.[Styles.block])}>
        <Ion.Outline.bookmarks />
        <h2 className={Tailwind.merge(.[Styles.h2])}> {"bookmarks"->Utils.str} </h2>
      </div>
      <div className={Tailwind.merge(.[Styles.block])}>
        <Ion.Outline.bowlingBall />
        <h2 className={Tailwind.merge(.[Styles.h2])}> {"bowlingBall"->Utils.str} </h2>
      </div>
      <div className={Tailwind.merge(.[Styles.block])}>
        <Ion.Outline.briefcase />
        <h2 className={Tailwind.merge(.[Styles.h2])}> {"briefcase"->Utils.str} </h2>
      </div>
      <div className={Tailwind.merge(.[Styles.block])}>
        <Ion.Outline.browsers />
        <h2 className={Tailwind.merge(.[Styles.h2])}> {"browsers"->Utils.str} </h2>
      </div>
      <div className={Tailwind.merge(.[Styles.block])}>
        <Ion.Outline.brush />
        <h2 className={Tailwind.merge(.[Styles.h2])}> {"brush"->Utils.str} </h2>
      </div>
      <div className={Tailwind.merge(.[Styles.block])}>
        <Ion.Outline.bug /> <h2 className={Tailwind.merge(.[Styles.h2])}> {"bug"->Utils.str} </h2>
      </div>
      <div className={Tailwind.merge(.[Styles.block])}>
        <Ion.Outline.build />
        <h2 className={Tailwind.merge(.[Styles.h2])}> {"build"->Utils.str} </h2>
      </div>
      <div className={Tailwind.merge(.[Styles.block])}>
        <Ion.Outline.bulb /> <h2 className={Tailwind.merge(.[Styles.h2])}> {"bulb"->Utils.str} </h2>
      </div>
      <div className={Tailwind.merge(.[Styles.block])}>
        <Ion.Outline.bus /> <h2 className={Tailwind.merge(.[Styles.h2])}> {"bus"->Utils.str} </h2>
      </div>
      <div className={Tailwind.merge(.[Styles.block])}>
        <Ion.Outline.business />
        <h2 className={Tailwind.merge(.[Styles.h2])}> {"business"->Utils.str} </h2>
      </div>
      <div className={Tailwind.merge(.[Styles.block])}>
        <Ion.Outline.cafe /> <h2 className={Tailwind.merge(.[Styles.h2])}> {"cafe"->Utils.str} </h2>
      </div>
      <div className={Tailwind.merge(.[Styles.block])}>
        <Ion.Outline.calculator />
        <h2 className={Tailwind.merge(.[Styles.h2])}> {"calculator"->Utils.str} </h2>
      </div>
      <div className={Tailwind.merge(.[Styles.block])}>
        <Ion.Outline.calendar />
        <h2 className={Tailwind.merge(.[Styles.h2])}> {"calendar"->Utils.str} </h2>
      </div>
      <div className={Tailwind.merge(.[Styles.block])}>
        <Ion.Outline.calendarClear />
        <h2 className={Tailwind.merge(.[Styles.h2])}> {"calendarClear"->Utils.str} </h2>
      </div>
      <div className={Tailwind.merge(.[Styles.block])}>
        <Ion.Outline.calendarNumber />
        <h2 className={Tailwind.merge(.[Styles.h2])}> {"calendarNumber"->Utils.str} </h2>
      </div>
      <div className={Tailwind.merge(.[Styles.block])}>
        <Ion.Outline.call /> <h2 className={Tailwind.merge(.[Styles.h2])}> {"call"->Utils.str} </h2>
      </div>
      <div className={Tailwind.merge(.[Styles.block])}>
        <Ion.Outline.camera />
        <h2 className={Tailwind.merge(.[Styles.h2])}> {"camera"->Utils.str} </h2>
      </div>
      <div className={Tailwind.merge(.[Styles.block])}>
        <Ion.Outline.cameraReverse />
        <h2 className={Tailwind.merge(.[Styles.h2])}> {"cameraReverse"->Utils.str} </h2>
      </div>
      <div className={Tailwind.merge(.[Styles.block])}>
        <Ion.Outline.car /> <h2 className={Tailwind.merge(.[Styles.h2])}> {"car"->Utils.str} </h2>
      </div>
      <div className={Tailwind.merge(.[Styles.block])}>
        <Ion.Outline.carSport />
        <h2 className={Tailwind.merge(.[Styles.h2])}> {"carSport"->Utils.str} </h2>
      </div>
      <div className={Tailwind.merge(.[Styles.block])}>
        <Ion.Outline.card /> <h2 className={Tailwind.merge(.[Styles.h2])}> {"card"->Utils.str} </h2>
      </div>
      <div className={Tailwind.merge(.[Styles.block])}>
        <Ion.Outline.caretBack />
        <h2 className={Tailwind.merge(.[Styles.h2])}> {"caretBack"->Utils.str} </h2>
      </div>
      <div className={Tailwind.merge(.[Styles.block])}>
        <Ion.Outline.caretBackCircle />
        <h2 className={Tailwind.merge(.[Styles.h2])}> {"caretBackCircle"->Utils.str} </h2>
      </div>
      <div className={Tailwind.merge(.[Styles.block])}>
        <Ion.Outline.caretDown />
        <h2 className={Tailwind.merge(.[Styles.h2])}> {"caretDown"->Utils.str} </h2>
      </div>
      <div className={Tailwind.merge(.[Styles.block])}>
        <Ion.Outline.caretDownCircle />
        <h2 className={Tailwind.merge(.[Styles.h2])}> {"caretDownCircle"->Utils.str} </h2>
      </div>
      <div className={Tailwind.merge(.[Styles.block])}>
        <Ion.Outline.caretForward />
        <h2 className={Tailwind.merge(.[Styles.h2])}> {"caretForward"->Utils.str} </h2>
      </div>
      <div className={Tailwind.merge(.[Styles.block])}>
        <Ion.Outline.caretForwardCircle />
        <h2 className={Tailwind.merge(.[Styles.h2])}> {"caretForwardCircle"->Utils.str} </h2>
      </div>
      <div className={Tailwind.merge(.[Styles.block])}>
        <Ion.Outline.caretUp />
        <h2 className={Tailwind.merge(.[Styles.h2])}> {"caretUp"->Utils.str} </h2>
      </div>
      <div className={Tailwind.merge(.[Styles.block])}>
        <Ion.Outline.caretUpCircle />
        <h2 className={Tailwind.merge(.[Styles.h2])}> {"caretUpCircle"->Utils.str} </h2>
      </div>
      <div className={Tailwind.merge(.[Styles.block])}>
        <Ion.Outline.cart /> <h2 className={Tailwind.merge(.[Styles.h2])}> {"cart"->Utils.str} </h2>
      </div>
      <div className={Tailwind.merge(.[Styles.block])}>
        <Ion.Outline.cash /> <h2 className={Tailwind.merge(.[Styles.h2])}> {"cash"->Utils.str} </h2>
      </div>
      <div className={Tailwind.merge(.[Styles.block])}>
        <Ion.Outline.cellular />
        <h2 className={Tailwind.merge(.[Styles.h2])}> {"cellular"->Utils.str} </h2>
      </div>
      <div className={Tailwind.merge(.[Styles.block])}>
        <Ion.Outline.chatbox />
        <h2 className={Tailwind.merge(.[Styles.h2])}> {"chatbox"->Utils.str} </h2>
      </div>
      <div className={Tailwind.merge(.[Styles.block])}>
        <Ion.Outline.chatboxEllipses />
        <h2 className={Tailwind.merge(.[Styles.h2])}> {"chatboxEllipses"->Utils.str} </h2>
      </div>
      <div className={Tailwind.merge(.[Styles.block])}>
        <Ion.Outline.chatbubble />
        <h2 className={Tailwind.merge(.[Styles.h2])}> {"chatbubble"->Utils.str} </h2>
      </div>
      <div className={Tailwind.merge(.[Styles.block])}>
        <Ion.Outline.chatbubbleEllipses />
        <h2 className={Tailwind.merge(.[Styles.h2])}> {"chatbubbleEllipses"->Utils.str} </h2>
      </div>
      <div className={Tailwind.merge(.[Styles.block])}>
        <Ion.Outline.chatbubbles />
        <h2 className={Tailwind.merge(.[Styles.h2])}> {"chatbubbles"->Utils.str} </h2>
      </div>
      <div className={Tailwind.merge(.[Styles.block])}>
        <Ion.Outline.checkbox />
        <h2 className={Tailwind.merge(.[Styles.h2])}> {"checkbox"->Utils.str} </h2>
      </div>
      <div className={Tailwind.merge(.[Styles.block])}>
        <Ion.Outline.checkmark />
        <h2 className={Tailwind.merge(.[Styles.h2])}> {"checkmark"->Utils.str} </h2>
      </div>
      <div className={Tailwind.merge(.[Styles.block])}>
        <Ion.Outline.checkmarkCircle />
        <h2 className={Tailwind.merge(.[Styles.h2])}> {"checkmarkCircle"->Utils.str} </h2>
      </div>
      <div className={Tailwind.merge(.[Styles.block])}>
        <Ion.Outline.checkmarkDone />
        <h2 className={Tailwind.merge(.[Styles.h2])}> {"checkmarkDone"->Utils.str} </h2>
      </div>
      <div className={Tailwind.merge(.[Styles.block])}>
        <Ion.Outline.checkmarkDoneCircle />
        <h2 className={Tailwind.merge(.[Styles.h2])}> {"checkmarkDoneCircle"->Utils.str} </h2>
      </div>
      <div className={Tailwind.merge(.[Styles.block])}>
        <Ion.Outline.chevronBack />
        <h2 className={Tailwind.merge(.[Styles.h2])}> {"chevronBack"->Utils.str} </h2>
      </div>
      <div className={Tailwind.merge(.[Styles.block])}>
        <Ion.Outline.chevronBackCircle />
        <h2 className={Tailwind.merge(.[Styles.h2])}> {"chevronBackCircle"->Utils.str} </h2>
      </div>
      <div className={Tailwind.merge(.[Styles.block])}>
        <Ion.Outline.chevronDown />
        <h2 className={Tailwind.merge(.[Styles.h2])}> {"chevronDown"->Utils.str} </h2>
      </div>
      <div className={Tailwind.merge(.[Styles.block])}>
        <Ion.Outline.chevronDownCircle />
        <h2 className={Tailwind.merge(.[Styles.h2])}> {"chevronDownCircle"->Utils.str} </h2>
      </div>
      <div className={Tailwind.merge(.[Styles.block])}>
        <Ion.Outline.chevronForward />
        <h2 className={Tailwind.merge(.[Styles.h2])}> {"chevronForward"->Utils.str} </h2>
      </div>
      <div className={Tailwind.merge(.[Styles.block])}>
        <Ion.Outline.chevronForwardCircle />
        <h2 className={Tailwind.merge(.[Styles.h2])}> {"chevronForwardCircle"->Utils.str} </h2>
      </div>
      <div className={Tailwind.merge(.[Styles.block])}>
        <Ion.Outline.chevronUp />
        <h2 className={Tailwind.merge(.[Styles.h2])}> {"chevronUp"->Utils.str} </h2>
      </div>
      <div className={Tailwind.merge(.[Styles.block])}>
        <Ion.Outline.chevronUpCircle />
        <h2 className={Tailwind.merge(.[Styles.h2])}> {"chevronUpCircle"->Utils.str} </h2>
      </div>
      <div className={Tailwind.merge(.[Styles.block])}>
        <Ion.Outline.clipboard />
        <h2 className={Tailwind.merge(.[Styles.h2])}> {"clipboard"->Utils.str} </h2>
      </div>
      <div className={Tailwind.merge(.[Styles.block])}>
        <Ion.Outline.close />
        <h2 className={Tailwind.merge(.[Styles.h2])}> {"close"->Utils.str} </h2>
      </div>
      <div className={Tailwind.merge(.[Styles.block])}>
        <Ion.Outline.closeCircle />
        <h2 className={Tailwind.merge(.[Styles.h2])}> {"closeCircle"->Utils.str} </h2>
      </div>
      <div className={Tailwind.merge(.[Styles.block])}>
        <Ion.Outline.cloud />
        <h2 className={Tailwind.merge(.[Styles.h2])}> {"cloud"->Utils.str} </h2>
      </div>
      <div className={Tailwind.merge(.[Styles.block])}>
        <Ion.Outline.cloudCircle />
        <h2 className={Tailwind.merge(.[Styles.h2])}> {"cloudCircle"->Utils.str} </h2>
      </div>
      <div className={Tailwind.merge(.[Styles.block])}>
        <Ion.Outline.cloudDone />
        <h2 className={Tailwind.merge(.[Styles.h2])}> {"cloudDone"->Utils.str} </h2>
      </div>
      <div className={Tailwind.merge(.[Styles.block])}>
        <Ion.Outline.cloudDownload />
        <h2 className={Tailwind.merge(.[Styles.h2])}> {"cloudDownload"->Utils.str} </h2>
      </div>
      <div className={Tailwind.merge(.[Styles.block])}>
        <Ion.Outline.cloudOffline />
        <h2 className={Tailwind.merge(.[Styles.h2])}> {"cloudOffline"->Utils.str} </h2>
      </div>
      <div className={Tailwind.merge(.[Styles.block])}>
        <Ion.Outline.cloudUpload />
        <h2 className={Tailwind.merge(.[Styles.h2])}> {"cloudUpload"->Utils.str} </h2>
      </div>
      <div className={Tailwind.merge(.[Styles.block])}>
        <Ion.Outline.cloudy />
        <h2 className={Tailwind.merge(.[Styles.h2])}> {"cloudy"->Utils.str} </h2>
      </div>
      <div className={Tailwind.merge(.[Styles.block])}>
        <Ion.Outline.cloudyNight />
        <h2 className={Tailwind.merge(.[Styles.h2])}> {"cloudyNight"->Utils.str} </h2>
      </div>
      <div className={Tailwind.merge(.[Styles.block])}>
        <Ion.Outline.code /> <h2 className={Tailwind.merge(.[Styles.h2])}> {"code"->Utils.str} </h2>
      </div>
      <div className={Tailwind.merge(.[Styles.block])}>
        <Ion.Outline.codeDownload />
        <h2 className={Tailwind.merge(.[Styles.h2])}> {"codeDownload"->Utils.str} </h2>
      </div>
      <div className={Tailwind.merge(.[Styles.block])}>
        <Ion.Outline.codeSlash />
        <h2 className={Tailwind.merge(.[Styles.h2])}> {"codeSlash"->Utils.str} </h2>
      </div>
      <div className={Tailwind.merge(.[Styles.block])}>
        <Ion.Outline.codeWorking />
        <h2 className={Tailwind.merge(.[Styles.h2])}> {"codeWorking"->Utils.str} </h2>
      </div>
      <div className={Tailwind.merge(.[Styles.block])}>
        <Ion.Outline.cog /> <h2 className={Tailwind.merge(.[Styles.h2])}> {"cog"->Utils.str} </h2>
      </div>
      <div className={Tailwind.merge(.[Styles.block])}>
        <Ion.Outline.colorFill />
        <h2 className={Tailwind.merge(.[Styles.h2])}> {"colorFill"->Utils.str} </h2>
      </div>
      <div className={Tailwind.merge(.[Styles.block])}>
        <Ion.Outline.colorFilter />
        <h2 className={Tailwind.merge(.[Styles.h2])}> {"colorFilter"->Utils.str} </h2>
      </div>
      <div className={Tailwind.merge(.[Styles.block])}>
        <Ion.Outline.colorPalette />
        <h2 className={Tailwind.merge(.[Styles.h2])}> {"colorPalette"->Utils.str} </h2>
      </div>
      <div className={Tailwind.merge(.[Styles.block])}>
        <Ion.Outline.colorWand />
        <h2 className={Tailwind.merge(.[Styles.h2])}> {"colorWand"->Utils.str} </h2>
      </div>
      <div className={Tailwind.merge(.[Styles.block])}>
        <Ion.Outline.compass />
        <h2 className={Tailwind.merge(.[Styles.h2])}> {"compass"->Utils.str} </h2>
      </div>
      <div className={Tailwind.merge(.[Styles.block])}>
        <Ion.Outline.construct />
        <h2 className={Tailwind.merge(.[Styles.h2])}> {"construct"->Utils.str} </h2>
      </div>
      <div className={Tailwind.merge(.[Styles.block])}>
        <Ion.Outline.contract />
        <h2 className={Tailwind.merge(.[Styles.h2])}> {"contract"->Utils.str} </h2>
      </div>
      <div className={Tailwind.merge(.[Styles.block])}>
        <Ion.Outline.contrast />
        <h2 className={Tailwind.merge(.[Styles.h2])}> {"contrast"->Utils.str} </h2>
      </div>
      <div className={Tailwind.merge(.[Styles.block])}>
        <Ion.Outline.copy /> <h2 className={Tailwind.merge(.[Styles.h2])}> {"copy"->Utils.str} </h2>
      </div>
      <div className={Tailwind.merge(.[Styles.block])}>
        <Ion.Outline.create />
        <h2 className={Tailwind.merge(.[Styles.h2])}> {"create"->Utils.str} </h2>
      </div>
      <div className={Tailwind.merge(.[Styles.block])}>
        <Ion.Outline.crop /> <h2 className={Tailwind.merge(.[Styles.h2])}> {"crop"->Utils.str} </h2>
      </div>
      <div className={Tailwind.merge(.[Styles.block])}>
        <Ion.Outline.cube /> <h2 className={Tailwind.merge(.[Styles.h2])}> {"cube"->Utils.str} </h2>
      </div>
      <div className={Tailwind.merge(.[Styles.block])}>
        <Ion.Outline.cut /> <h2 className={Tailwind.merge(.[Styles.h2])}> {"cut"->Utils.str} </h2>
      </div>
      <div className={Tailwind.merge(.[Styles.block])}>
        <Ion.Outline.desktop />
        <h2 className={Tailwind.merge(.[Styles.h2])}> {"desktop"->Utils.str} </h2>
      </div>
      <div className={Tailwind.merge(.[Styles.block])}>
        <Ion.Outline.diamond />
        <h2 className={Tailwind.merge(.[Styles.h2])}> {"diamond"->Utils.str} </h2>
      </div>
      <div className={Tailwind.merge(.[Styles.block])}>
        <Ion.Outline.dice /> <h2 className={Tailwind.merge(.[Styles.h2])}> {"dice"->Utils.str} </h2>
      </div>
      <div className={Tailwind.merge(.[Styles.block])}>
        <Ion.Outline.disc /> <h2 className={Tailwind.merge(.[Styles.h2])}> {"disc"->Utils.str} </h2>
      </div>
      <div className={Tailwind.merge(.[Styles.block])}>
        <Ion.Outline.document />
        <h2 className={Tailwind.merge(.[Styles.h2])}> {"document"->Utils.str} </h2>
      </div>
      <div className={Tailwind.merge(.[Styles.block])}>
        <Ion.Outline.documentAttach />
        <h2 className={Tailwind.merge(.[Styles.h2])}> {"documentAttach"->Utils.str} </h2>
      </div>
      <div className={Tailwind.merge(.[Styles.block])}>
        <Ion.Outline.documentLock />
        <h2 className={Tailwind.merge(.[Styles.h2])}> {"documentLock"->Utils.str} </h2>
      </div>
      <div className={Tailwind.merge(.[Styles.block])}>
        <Ion.Outline.documentText />
        <h2 className={Tailwind.merge(.[Styles.h2])}> {"documentText"->Utils.str} </h2>
      </div>
      <div className={Tailwind.merge(.[Styles.block])}>
        <Ion.Outline.documents />
        <h2 className={Tailwind.merge(.[Styles.h2])}> {"documents"->Utils.str} </h2>
      </div>
      <div className={Tailwind.merge(.[Styles.block])}>
        <Ion.Outline.download />
        <h2 className={Tailwind.merge(.[Styles.h2])}> {"download"->Utils.str} </h2>
      </div>
      <div className={Tailwind.merge(.[Styles.block])}>
        <Ion.Outline.duplicate />
        <h2 className={Tailwind.merge(.[Styles.h2])}> {"duplicate"->Utils.str} </h2>
      </div>
      <div className={Tailwind.merge(.[Styles.block])}>
        <Ion.Outline.ear /> <h2 className={Tailwind.merge(.[Styles.h2])}> {"ear"->Utils.str} </h2>
      </div>
      <div className={Tailwind.merge(.[Styles.block])}>
        <Ion.Outline.earth />
        <h2 className={Tailwind.merge(.[Styles.h2])}> {"earth"->Utils.str} </h2>
      </div>
      <div className={Tailwind.merge(.[Styles.block])}>
        <Ion.Outline.easel />
        <h2 className={Tailwind.merge(.[Styles.h2])}> {"easel"->Utils.str} </h2>
      </div>
      <div className={Tailwind.merge(.[Styles.block])}>
        <Ion.Outline.egg /> <h2 className={Tailwind.merge(.[Styles.h2])}> {"egg"->Utils.str} </h2>
      </div>
      <div className={Tailwind.merge(.[Styles.block])}>
        <Ion.Outline.ellipse />
        <h2 className={Tailwind.merge(.[Styles.h2])}> {"ellipse"->Utils.str} </h2>
      </div>
      <div className={Tailwind.merge(.[Styles.block])}>
        <Ion.Outline.ellipsisHorizontal />
        <h2 className={Tailwind.merge(.[Styles.h2])}> {"ellipsisHorizontal"->Utils.str} </h2>
      </div>
      <div className={Tailwind.merge(.[Styles.block])}>
        <Ion.Outline.ellipsisHorizontalCircle />
        <h2 className={Tailwind.merge(.[Styles.h2])}> {"ellipsisHorizontalCircle"->Utils.str} </h2>
      </div>
      <div className={Tailwind.merge(.[Styles.block])}>
        <Ion.Outline.ellipsisVertical />
        <h2 className={Tailwind.merge(.[Styles.h2])}> {"ellipsisVertical"->Utils.str} </h2>
      </div>
      <div className={Tailwind.merge(.[Styles.block])}>
        <Ion.Outline.ellipsisVerticalCircle />
        <h2 className={Tailwind.merge(.[Styles.h2])}> {"ellipsisVerticalCircle"->Utils.str} </h2>
      </div>
      <div className={Tailwind.merge(.[Styles.block])}>
        <Ion.Outline.enter />
        <h2 className={Tailwind.merge(.[Styles.h2])}> {"enter"->Utils.str} </h2>
      </div>
      <div className={Tailwind.merge(.[Styles.block])}>
        <Ion.Outline.exit /> <h2 className={Tailwind.merge(.[Styles.h2])}> {"exit"->Utils.str} </h2>
      </div>
      <div className={Tailwind.merge(.[Styles.block])}>
        <Ion.Outline.expand />
        <h2 className={Tailwind.merge(.[Styles.h2])}> {"expand"->Utils.str} </h2>
      </div>
      <div className={Tailwind.merge(.[Styles.block])}>
        <Ion.Outline.extensionPuzzle />
        <h2 className={Tailwind.merge(.[Styles.h2])}> {"extensionPuzzle"->Utils.str} </h2>
      </div>
      <div className={Tailwind.merge(.[Styles.block])}>
        <Ion.Outline.eye /> <h2 className={Tailwind.merge(.[Styles.h2])}> {"eye"->Utils.str} </h2>
      </div>
      <div className={Tailwind.merge(.[Styles.block])}>
        <Ion.Outline.eyeOff />
        <h2 className={Tailwind.merge(.[Styles.h2])}> {"eyeOff"->Utils.str} </h2>
      </div>
      <div className={Tailwind.merge(.[Styles.block])}>
        <Ion.Outline.eyedrop />
        <h2 className={Tailwind.merge(.[Styles.h2])}> {"eyedrop"->Utils.str} </h2>
      </div>
      <div className={Tailwind.merge(.[Styles.block])}>
        <Ion.Outline.fastFood />
        <h2 className={Tailwind.merge(.[Styles.h2])}> {"fastFood"->Utils.str} </h2>
      </div>
      <div className={Tailwind.merge(.[Styles.block])}>
        <Ion.Outline.female />
        <h2 className={Tailwind.merge(.[Styles.h2])}> {"female"->Utils.str} </h2>
      </div>
      <div className={Tailwind.merge(.[Styles.block])}>
        <Ion.Outline.fileTray />
        <h2 className={Tailwind.merge(.[Styles.h2])}> {"fileTray"->Utils.str} </h2>
      </div>
      <div className={Tailwind.merge(.[Styles.block])}>
        <Ion.Outline.fileTrayFull />
        <h2 className={Tailwind.merge(.[Styles.h2])}> {"fileTrayFull"->Utils.str} </h2>
      </div>
      <div className={Tailwind.merge(.[Styles.block])}>
        <Ion.Outline.fileTrayStacked />
        <h2 className={Tailwind.merge(.[Styles.h2])}> {"fileTrayStacked"->Utils.str} </h2>
      </div>
      <div className={Tailwind.merge(.[Styles.block])}>
        <Ion.Outline.film /> <h2 className={Tailwind.merge(.[Styles.h2])}> {"film"->Utils.str} </h2>
      </div>
      <div className={Tailwind.merge(.[Styles.block])}>
        <Ion.Outline.filter />
        <h2 className={Tailwind.merge(.[Styles.h2])}> {"filter"->Utils.str} </h2>
      </div>
      <div className={Tailwind.merge(.[Styles.block])}>
        <Ion.Outline.filterCircle />
        <h2 className={Tailwind.merge(.[Styles.h2])}> {"filterCircle"->Utils.str} </h2>
      </div>
      <div className={Tailwind.merge(.[Styles.block])}>
        <Ion.Outline.fingerPrint />
        <h2 className={Tailwind.merge(.[Styles.h2])}> {"fingerPrint"->Utils.str} </h2>
      </div>
      <div className={Tailwind.merge(.[Styles.block])}>
        <Ion.Outline.fish /> <h2 className={Tailwind.merge(.[Styles.h2])}> {"fish"->Utils.str} </h2>
      </div>
      <div className={Tailwind.merge(.[Styles.block])}>
        <Ion.Outline.fitness />
        <h2 className={Tailwind.merge(.[Styles.h2])}> {"fitness"->Utils.str} </h2>
      </div>
      <div className={Tailwind.merge(.[Styles.block])}>
        <Ion.Outline.flag /> <h2 className={Tailwind.merge(.[Styles.h2])}> {"flag"->Utils.str} </h2>
      </div>
      <div className={Tailwind.merge(.[Styles.block])}>
        <Ion.Outline.flame />
        <h2 className={Tailwind.merge(.[Styles.h2])}> {"flame"->Utils.str} </h2>
      </div>
      <div className={Tailwind.merge(.[Styles.block])}>
        <Ion.Outline.flash />
        <h2 className={Tailwind.merge(.[Styles.h2])}> {"flash"->Utils.str} </h2>
      </div>
      <div className={Tailwind.merge(.[Styles.block])}>
        <Ion.Outline.flashOff />
        <h2 className={Tailwind.merge(.[Styles.h2])}> {"flashOff"->Utils.str} </h2>
      </div>
      <div className={Tailwind.merge(.[Styles.block])}>
        <Ion.Outline.flashlight />
        <h2 className={Tailwind.merge(.[Styles.h2])}> {"flashlight"->Utils.str} </h2>
      </div>
      <div className={Tailwind.merge(.[Styles.block])}>
        <Ion.Outline.flask />
        <h2 className={Tailwind.merge(.[Styles.h2])}> {"flask"->Utils.str} </h2>
      </div>
      <div className={Tailwind.merge(.[Styles.block])}>
        <Ion.Outline.flower />
        <h2 className={Tailwind.merge(.[Styles.h2])}> {"flower"->Utils.str} </h2>
      </div>
      <div className={Tailwind.merge(.[Styles.block])}>
        <Ion.Outline.folder />
        <h2 className={Tailwind.merge(.[Styles.h2])}> {"folder"->Utils.str} </h2>
      </div>
      <div className={Tailwind.merge(.[Styles.block])}>
        <Ion.Outline.folderOpen />
        <h2 className={Tailwind.merge(.[Styles.h2])}> {"folderOpen"->Utils.str} </h2>
      </div>
      <div className={Tailwind.merge(.[Styles.block])}>
        <Ion.Outline.football />
        <h2 className={Tailwind.merge(.[Styles.h2])}> {"football"->Utils.str} </h2>
      </div>
      <div className={Tailwind.merge(.[Styles.block])}>
        <Ion.Outline.footsteps />
        <h2 className={Tailwind.merge(.[Styles.h2])}> {"footsteps"->Utils.str} </h2>
      </div>
      <div className={Tailwind.merge(.[Styles.block])}>
        <Ion.Outline.funnel />
        <h2 className={Tailwind.merge(.[Styles.h2])}> {"funnel"->Utils.str} </h2>
      </div>
      <div className={Tailwind.merge(.[Styles.block])}>
        <Ion.Outline.gameController />
        <h2 className={Tailwind.merge(.[Styles.h2])}> {"gameController"->Utils.str} </h2>
      </div>
      <div className={Tailwind.merge(.[Styles.block])}>
        <Ion.Outline.gift /> <h2 className={Tailwind.merge(.[Styles.h2])}> {"gift"->Utils.str} </h2>
      </div>
      <div className={Tailwind.merge(.[Styles.block])}>
        <Ion.Outline.gitBranch />
        <h2 className={Tailwind.merge(.[Styles.h2])}> {"gitBranch"->Utils.str} </h2>
      </div>
      <div className={Tailwind.merge(.[Styles.block])}>
        <Ion.Outline.gitCommit />
        <h2 className={Tailwind.merge(.[Styles.h2])}> {"gitCommit"->Utils.str} </h2>
      </div>
      <div className={Tailwind.merge(.[Styles.block])}>
        <Ion.Outline.gitCompare />
        <h2 className={Tailwind.merge(.[Styles.h2])}> {"gitCompare"->Utils.str} </h2>
      </div>
      <div className={Tailwind.merge(.[Styles.block])}>
        <Ion.Outline.gitMerge />
        <h2 className={Tailwind.merge(.[Styles.h2])}> {"gitMerge"->Utils.str} </h2>
      </div>
      <div className={Tailwind.merge(.[Styles.block])}>
        <Ion.Outline.gitNetwork />
        <h2 className={Tailwind.merge(.[Styles.h2])}> {"gitNetwork"->Utils.str} </h2>
      </div>
      <div className={Tailwind.merge(.[Styles.block])}>
        <Ion.Outline.gitPullRequest />
        <h2 className={Tailwind.merge(.[Styles.h2])}> {"gitPullRequest"->Utils.str} </h2>
      </div>
      <div className={Tailwind.merge(.[Styles.block])}>
        <Ion.Outline.glasses />
        <h2 className={Tailwind.merge(.[Styles.h2])}> {"glasses"->Utils.str} </h2>
      </div>
      <div className={Tailwind.merge(.[Styles.block])}>
        <Ion.Outline.globe />
        <h2 className={Tailwind.merge(.[Styles.h2])}> {"globe"->Utils.str} </h2>
      </div>
      <div className={Tailwind.merge(.[Styles.block])}>
        <Ion.Outline.golf /> <h2 className={Tailwind.merge(.[Styles.h2])}> {"golf"->Utils.str} </h2>
      </div>
      <div className={Tailwind.merge(.[Styles.block])}>
        <Ion.Outline.grid /> <h2 className={Tailwind.merge(.[Styles.h2])}> {"grid"->Utils.str} </h2>
      </div>
      <div className={Tailwind.merge(.[Styles.block])}>
        <Ion.Outline.hammer />
        <h2 className={Tailwind.merge(.[Styles.h2])}> {"hammer"->Utils.str} </h2>
      </div>
      <div className={Tailwind.merge(.[Styles.block])}>
        <Ion.Outline.handLeft />
        <h2 className={Tailwind.merge(.[Styles.h2])}> {"handLeft"->Utils.str} </h2>
      </div>
      <div className={Tailwind.merge(.[Styles.block])}>
        <Ion.Outline.handRight />
        <h2 className={Tailwind.merge(.[Styles.h2])}> {"flame"->Utils.str} </h2>
      </div>
      <div className={Tailwind.merge(.[Styles.block])}>
        <Ion.Outline.happy />
        <h2 className={Tailwind.merge(.[Styles.h2])}> {"happy"->Utils.str} </h2>
      </div>
      <div className={Tailwind.merge(.[Styles.block])}>
        <Ion.Outline.hardwareChip />
        <h2 className={Tailwind.merge(.[Styles.h2])}> {"flame"->Utils.str} </h2>
      </div>
      <div className={Tailwind.merge(.[Styles.block])}>
        <Ion.Outline.headset />
        <h2 className={Tailwind.merge(.[Styles.h2])}> {"headset"->Utils.str} </h2>
      </div>
      <div className={Tailwind.merge(.[Styles.block])}>
        <Ion.Outline.heart />
        <h2 className={Tailwind.merge(.[Styles.h2])}> {"heart"->Utils.str} </h2>
      </div>
      <div className={Tailwind.merge(.[Styles.block])}>
        <Ion.Outline.heartCircle />
        <h2 className={Tailwind.merge(.[Styles.h2])}> {"heartCircle"->Utils.str} </h2>
      </div>
      <div className={Tailwind.merge(.[Styles.block])}>
        <Ion.Outline.heartDislike />
        <h2 className={Tailwind.merge(.[Styles.h2])}> {"heartDislike"->Utils.str} </h2>
      </div>
      <div className={Tailwind.merge(.[Styles.block])}>
        <Ion.Outline.heartDislikeCircle />
        <h2 className={Tailwind.merge(.[Styles.h2])}> {"heartDislikeCircle"->Utils.str} </h2>
      </div>
      <div className={Tailwind.merge(.[Styles.block])}>
        <Ion.Outline.heartHalf />
        <h2 className={Tailwind.merge(.[Styles.h2])}> {"heartHalf"->Utils.str} </h2>
      </div>
      <div className={Tailwind.merge(.[Styles.block])}>
        <Ion.Outline.help /> <h2 className={Tailwind.merge(.[Styles.h2])}> {"help"->Utils.str} </h2>
      </div>
      <div className={Tailwind.merge(.[Styles.block])}>
        <Ion.Outline.helpBuoy />
        <h2 className={Tailwind.merge(.[Styles.h2])}> {"helpBuoy"->Utils.str} </h2>
      </div>
      <div className={Tailwind.merge(.[Styles.block])}>
        <Ion.Outline.helpCircle />
        <h2 className={Tailwind.merge(.[Styles.h2])}> {"helpCircle"->Utils.str} </h2>
      </div>
      <div className={Tailwind.merge(.[Styles.block])}>
        <Ion.Outline.home /> <h2 className={Tailwind.merge(.[Styles.h2])}> {"home"->Utils.str} </h2>
      </div>
      <div className={Tailwind.merge(.[Styles.block])}>
        <Ion.Outline.hourglass />
        <h2 className={Tailwind.merge(.[Styles.h2])}> {"hourglass"->Utils.str} </h2>
      </div>
      <div className={Tailwind.merge(.[Styles.block])}>
        <Ion.Outline.iceCream />
        <h2 className={Tailwind.merge(.[Styles.h2])}> {"iceCream"->Utils.str} </h2>
      </div>
      <div className={Tailwind.merge(.[Styles.block])}>
        <Ion.Outline.idCard />
        <h2 className={Tailwind.merge(.[Styles.h2])}> {"idCard"->Utils.str} </h2>
      </div>
      <div className={Tailwind.merge(.[Styles.block])}>
        <Ion.Outline.image />
        <h2 className={Tailwind.merge(.[Styles.h2])}> {"image"->Utils.str} </h2>
      </div>
      <div className={Tailwind.merge(.[Styles.block])}>
        <Ion.Outline.images />
        <h2 className={Tailwind.merge(.[Styles.h2])}> {"images"->Utils.str} </h2>
      </div>
      <div className={Tailwind.merge(.[Styles.block])}>
        <Ion.Outline.infinite />
        <h2 className={Tailwind.merge(.[Styles.h2])}> {"infinite"->Utils.str} </h2>
      </div>
      <div className={Tailwind.merge(.[Styles.block])}>
        <Ion.Outline.information />
        <h2 className={Tailwind.merge(.[Styles.h2])}> {"information"->Utils.str} </h2>
      </div>
      <div className={Tailwind.merge(.[Styles.block])}>
        <Ion.Outline.informationCircle />
        <h2 className={Tailwind.merge(.[Styles.h2])}> {"informationCircle"->Utils.str} </h2>
      </div>
      <div className={Tailwind.merge(.[Styles.block])}>
        <Ion.Outline.invertMode />
        <h2 className={Tailwind.merge(.[Styles.h2])}> {"invertMode"->Utils.str} </h2>
      </div>
      <div className={Tailwind.merge(.[Styles.block])}>
        <Ion.Outline.journal />
        <h2 className={Tailwind.merge(.[Styles.h2])}> {"journal"->Utils.str} </h2>
      </div>
      <div className={Tailwind.merge(.[Styles.block])}>
        <Ion.Outline.key /> <h2 className={Tailwind.merge(.[Styles.h2])}> {"key"->Utils.str} </h2>
      </div>
      <div className={Tailwind.merge(.[Styles.block])}>
        <Ion.Outline.keypad />
        <h2 className={Tailwind.merge(.[Styles.h2])}> {"keypad"->Utils.str} </h2>
      </div>
      <div className={Tailwind.merge(.[Styles.block])}>
        <Ion.Outline.language />
        <h2 className={Tailwind.merge(.[Styles.h2])}> {"language"->Utils.str} </h2>
      </div>
      <div className={Tailwind.merge(.[Styles.block])}>
        <Ion.Outline.laptop />
        <h2 className={Tailwind.merge(.[Styles.h2])}> {"laptop"->Utils.str} </h2>
      </div>
      <div className={Tailwind.merge(.[Styles.block])}>
        <Ion.Outline.layers />
        <h2 className={Tailwind.merge(.[Styles.h2])}> {"layers"->Utils.str} </h2>
      </div>
      <div className={Tailwind.merge(.[Styles.block])}>
        <Ion.Outline.leaf /> <h2 className={Tailwind.merge(.[Styles.h2])}> {"leaf"->Utils.str} </h2>
      </div>
      <div className={Tailwind.merge(.[Styles.block])}>
        <Ion.Outline.library />
        <h2 className={Tailwind.merge(.[Styles.h2])}> {"library"->Utils.str} </h2>
      </div>
      <div className={Tailwind.merge(.[Styles.block])}>
        <Ion.Outline.link /> <h2 className={Tailwind.merge(.[Styles.h2])}> {"link"->Utils.str} </h2>
      </div>
      <div className={Tailwind.merge(.[Styles.block])}>
        <Ion.Outline.list /> <h2 className={Tailwind.merge(.[Styles.h2])}> {"list"->Utils.str} </h2>
      </div>
      <div className={Tailwind.merge(.[Styles.block])}>
        <Ion.Outline.listCircle />
        <h2 className={Tailwind.merge(.[Styles.h2])}> {"listCircle"->Utils.str} </h2>
      </div>
      <div className={Tailwind.merge(.[Styles.block])}>
        <Ion.Outline.locate />
        <h2 className={Tailwind.merge(.[Styles.h2])}> {"locate"->Utils.str} </h2>
      </div>
      <div className={Tailwind.merge(.[Styles.block])}>
        <Ion.Outline.location />
        <h2 className={Tailwind.merge(.[Styles.h2])}> {"location"->Utils.str} </h2>
      </div>
      <div className={Tailwind.merge(.[Styles.block])}>
        <Ion.Outline.lockClosed />
        <h2 className={Tailwind.merge(.[Styles.h2])}> {"lockClosed"->Utils.str} </h2>
      </div>
      <div className={Tailwind.merge(.[Styles.block])}>
        <Ion.Outline.lockOpen />
        <h2 className={Tailwind.merge(.[Styles.h2])}> {"lockOpen"->Utils.str} </h2>
      </div>
      <div className={Tailwind.merge(.[Styles.block])}>
        <Ion.Outline.logIn />
        <h2 className={Tailwind.merge(.[Styles.h2])}> {"logIn"->Utils.str} </h2>
      </div>
      <div className={Tailwind.merge(.[Styles.block])}>
        <Ion.Outline.logOut />
        <h2 className={Tailwind.merge(.[Styles.h2])}> {"logOut"->Utils.str} </h2>
      </div>
      <div className={Tailwind.merge(.[Styles.block])}>
        <Ion.Outline.magnet />
        <h2 className={Tailwind.merge(.[Styles.h2])}> {"magnet"->Utils.str} </h2>
      </div>
      <div className={Tailwind.merge(.[Styles.block])}>
        <Ion.Outline.mail /> <h2 className={Tailwind.merge(.[Styles.h2])}> {"mail"->Utils.str} </h2>
      </div>
      <div className={Tailwind.merge(.[Styles.block])}>
        <Ion.Outline.mailOpen />
        <h2 className={Tailwind.merge(.[Styles.h2])}> {"mailOpen"->Utils.str} </h2>
      </div>
      <div className={Tailwind.merge(.[Styles.block])}>
        <Ion.Outline.mailUnread />
        <h2 className={Tailwind.merge(.[Styles.h2])}> {"mailUnread"->Utils.str} </h2>
      </div>
      <div className={Tailwind.merge(.[Styles.block])}>
        <Ion.Outline.male /> <h2 className={Tailwind.merge(.[Styles.h2])}> {"male"->Utils.str} </h2>
      </div>
      <div className={Tailwind.merge(.[Styles.block])}>
        <Ion.Outline.maleFemale />
        <h2 className={Tailwind.merge(.[Styles.h2])}> {"maleFemale"->Utils.str} </h2>
      </div>
      <div className={Tailwind.merge(.[Styles.block])}>
        <Ion.Outline.man /> <h2 className={Tailwind.merge(.[Styles.h2])}> {"man"->Utils.str} </h2>
      </div>
      <div className={Tailwind.merge(.[Styles.block])}>
        <Ion.Outline.map /> <h2 className={Tailwind.merge(.[Styles.h2])}> {"map"->Utils.str} </h2>
      </div>
      <div className={Tailwind.merge(.[Styles.block])}>
        <Ion.Outline.medal />
        <h2 className={Tailwind.merge(.[Styles.h2])}> {"medal"->Utils.str} </h2>
      </div>
      <div className={Tailwind.merge(.[Styles.block])}>
        <Ion.Outline.medical />
        <h2 className={Tailwind.merge(.[Styles.h2])}> {"medical"->Utils.str} </h2>
      </div>
      <div className={Tailwind.merge(.[Styles.block])}>
        <Ion.Outline.medkit />
        <h2 className={Tailwind.merge(.[Styles.h2])}> {"medkit"->Utils.str} </h2>
      </div>
      <div className={Tailwind.merge(.[Styles.block])}>
        <Ion.Outline.megaphone />
        <h2 className={Tailwind.merge(.[Styles.h2])}> {"megaphone"->Utils.str} </h2>
      </div>
      <div className={Tailwind.merge(.[Styles.block])}>
        <Ion.Outline.menu /> <h2 className={Tailwind.merge(.[Styles.h2])}> {"menu"->Utils.str} </h2>
      </div>
      <div className={Tailwind.merge(.[Styles.block])}>
        <Ion.Outline.mic /> <h2 className={Tailwind.merge(.[Styles.h2])}> {"mic"->Utils.str} </h2>
      </div>
      <div className={Tailwind.merge(.[Styles.block])}>
        <Ion.Outline.micCircle />
        <h2 className={Tailwind.merge(.[Styles.h2])}> {"micCircle"->Utils.str} </h2>
      </div>
      <div className={Tailwind.merge(.[Styles.block])}>
        <Ion.Outline.micOff />
        <h2 className={Tailwind.merge(.[Styles.h2])}> {"micOff"->Utils.str} </h2>
      </div>
      <div className={Tailwind.merge(.[Styles.block])}>
        <Ion.Outline.micOffCircle />
        <h2 className={Tailwind.merge(.[Styles.h2])}> {"micOffCircle"->Utils.str} </h2>
      </div>
      <div className={Tailwind.merge(.[Styles.block])}>
        <Ion.Outline.moon /> <h2 className={Tailwind.merge(.[Styles.h2])}> {"moon"->Utils.str} </h2>
      </div>
      <div className={Tailwind.merge(.[Styles.block])}>
        <Ion.Outline.move /> <h2 className={Tailwind.merge(.[Styles.h2])}> {"move"->Utils.str} </h2>
      </div>
      <div className={Tailwind.merge(.[Styles.block])}>
        <Ion.Outline.musicalNote />
        <h2 className={Tailwind.merge(.[Styles.h2])}> {"musicalNote"->Utils.str} </h2>
      </div>
      <div className={Tailwind.merge(.[Styles.block])}>
        <Ion.Outline.musicalNotes />
        <h2 className={Tailwind.merge(.[Styles.h2])}> {"musicalNotes"->Utils.str} </h2>
      </div>
      <div className={Tailwind.merge(.[Styles.block])}>
        <Ion.Outline.navigate />
        <h2 className={Tailwind.merge(.[Styles.h2])}> {"navigate"->Utils.str} </h2>
      </div>
      <div className={Tailwind.merge(.[Styles.block])}>
        <Ion.Outline.navigateCircle />
        <h2 className={Tailwind.merge(.[Styles.h2])}> {"navigateCircle"->Utils.str} </h2>
      </div>
      <div className={Tailwind.merge(.[Styles.block])}>
        <Ion.Outline.newspaper />
        <h2 className={Tailwind.merge(.[Styles.h2])}> {"newspaper"->Utils.str} </h2>
      </div>
      <div className={Tailwind.merge(.[Styles.block])}>
        <Ion.Outline.notifications />
        <h2 className={Tailwind.merge(.[Styles.h2])}> {"notifications"->Utils.str} </h2>
      </div>
      <div className={Tailwind.merge(.[Styles.block])}>
        <Ion.Outline.notificationsCircle />
        <h2 className={Tailwind.merge(.[Styles.h2])}> {"notificationsCircle"->Utils.str} </h2>
      </div>
      <div className={Tailwind.merge(.[Styles.block])}>
        <Ion.Outline.notificationsOff />
        <h2 className={Tailwind.merge(.[Styles.h2])}> {"notificationsOff"->Utils.str} </h2>
      </div>
      <div className={Tailwind.merge(.[Styles.block])}>
        <Ion.Outline.notificationsOffCircle />
        <h2 className={Tailwind.merge(.[Styles.h2])}> {"notificationsOffCircle"->Utils.str} </h2>
      </div>
      <div className={Tailwind.merge(.[Styles.block])}>
        <Ion.Outline.nuclear />
        <h2 className={Tailwind.merge(.[Styles.h2])}> {"nuclear"->Utils.str} </h2>
      </div>
      <div className={Tailwind.merge(.[Styles.block])}>
        <Ion.Outline.nutrition />
        <h2 className={Tailwind.merge(.[Styles.h2])}> {"nutrition"->Utils.str} </h2>
      </div>
      <div className={Tailwind.merge(.[Styles.block])}>
        <Ion.Outline.openLink />
        <h2 className={Tailwind.merge(.[Styles.h2])}> {"openLink"->Utils.str} </h2>
      </div>
      <div className={Tailwind.merge(.[Styles.block])}>
        <Ion.Outline.options />
        <h2 className={Tailwind.merge(.[Styles.h2])}> {"options"->Utils.str} </h2>
      </div>
      <div className={Tailwind.merge(.[Styles.block])}>
        <Ion.Outline.paperPlane />
        <h2 className={Tailwind.merge(.[Styles.h2])}> {"paperPlane"->Utils.str} </h2>
      </div>
      <div className={Tailwind.merge(.[Styles.block])}>
        <Ion.Outline.partlySunny />
        <h2 className={Tailwind.merge(.[Styles.h2])}> {"partlySunny"->Utils.str} </h2>
      </div>
      <div className={Tailwind.merge(.[Styles.block])}>
        <Ion.Outline.pause />
        <h2 className={Tailwind.merge(.[Styles.h2])}> {"pause"->Utils.str} </h2>
      </div>
      <div className={Tailwind.merge(.[Styles.block])}>
        <Ion.Outline.pauseCircle />
        <h2 className={Tailwind.merge(.[Styles.h2])}> {"pauseCircle"->Utils.str} </h2>
      </div>
      <div className={Tailwind.merge(.[Styles.block])}>
        <Ion.Outline.paw /> <h2 className={Tailwind.merge(.[Styles.h2])}> {"paw"->Utils.str} </h2>
      </div>
      <div className={Tailwind.merge(.[Styles.block])}>
        <Ion.Outline.pencil />
        <h2 className={Tailwind.merge(.[Styles.h2])}> {"pencil"->Utils.str} </h2>
      </div>
      <div className={Tailwind.merge(.[Styles.block])}>
        <Ion.Outline.people />
        <h2 className={Tailwind.merge(.[Styles.h2])}> {"people"->Utils.str} </h2>
      </div>
      <div className={Tailwind.merge(.[Styles.block])}>
        <Ion.Outline.peopleCircle />
        <h2 className={Tailwind.merge(.[Styles.h2])}> {"peopleCircle"->Utils.str} </h2>
      </div>
      <div className={Tailwind.merge(.[Styles.block])}>
        <Ion.Outline.person />
        <h2 className={Tailwind.merge(.[Styles.h2])}> {"person"->Utils.str} </h2>
      </div>
      <div className={Tailwind.merge(.[Styles.block])}>
        <Ion.Outline.personAdd />
        <h2 className={Tailwind.merge(.[Styles.h2])}> {"personAdd"->Utils.str} </h2>
      </div>
      <div className={Tailwind.merge(.[Styles.block])}>
        <Ion.Outline.personCircle />
        <h2 className={Tailwind.merge(.[Styles.h2])}> {"personCircle"->Utils.str} </h2>
      </div>
      <div className={Tailwind.merge(.[Styles.block])}>
        <Ion.Outline.personRemove />
        <h2 className={Tailwind.merge(.[Styles.h2])}> {"personRemove"->Utils.str} </h2>
      </div>
      <div className={Tailwind.merge(.[Styles.block])}>
        <Ion.Outline.phoneLandscape />
        <h2 className={Tailwind.merge(.[Styles.h2])}> {"phoneLandscape"->Utils.str} </h2>
      </div>
      <div className={Tailwind.merge(.[Styles.block])}>
        <Ion.Outline.phonePortrait />
        <h2 className={Tailwind.merge(.[Styles.h2])}> {"phonePortrait"->Utils.str} </h2>
      </div>
      <div className={Tailwind.merge(.[Styles.block])}>
        <Ion.Outline.pieChart />
        <h2 className={Tailwind.merge(.[Styles.h2])}> {"pieChart"->Utils.str} </h2>
      </div>
      <div className={Tailwind.merge(.[Styles.block])}>
        <Ion.Outline.pin /> <h2 className={Tailwind.merge(.[Styles.h2])}> {"pin"->Utils.str} </h2>
      </div>
      <div className={Tailwind.merge(.[Styles.block])}>
        <Ion.Outline.pint /> <h2 className={Tailwind.merge(.[Styles.h2])}> {"pint"->Utils.str} </h2>
      </div>
      <div className={Tailwind.merge(.[Styles.block])}>
        <Ion.Outline.pizza />
        <h2 className={Tailwind.merge(.[Styles.h2])}> {"pizza"->Utils.str} </h2>
      </div>
      <div className={Tailwind.merge(.[Styles.block])}>
        <Ion.Outline.planet />
        <h2 className={Tailwind.merge(.[Styles.h2])}> {"planet"->Utils.str} </h2>
      </div>
      <div className={Tailwind.merge(.[Styles.block])}>
        <Ion.Outline.play /> <h2 className={Tailwind.merge(.[Styles.h2])}> {"play"->Utils.str} </h2>
      </div>
      <div className={Tailwind.merge(.[Styles.block])}>
        <Ion.Outline.playBack />
        <h2 className={Tailwind.merge(.[Styles.h2])}> {"playBack"->Utils.str} </h2>
      </div>
      <div className={Tailwind.merge(.[Styles.block])}>
        <Ion.Outline.playBackCircle />
        <h2 className={Tailwind.merge(.[Styles.h2])}> {"playBackCircle"->Utils.str} </h2>
      </div>
      <div className={Tailwind.merge(.[Styles.block])}>
        <Ion.Outline.playCircle />
        <h2 className={Tailwind.merge(.[Styles.h2])}> {"playCircle"->Utils.str} </h2>
      </div>
      <div className={Tailwind.merge(.[Styles.block])}>
        <Ion.Outline.playForward />
        <h2 className={Tailwind.merge(.[Styles.h2])}> {"playForward"->Utils.str} </h2>
      </div>
      <div className={Tailwind.merge(.[Styles.block])}>
        <Ion.Outline.playForwardCircle />
        <h2 className={Tailwind.merge(.[Styles.h2])}> {"playForwardCircle"->Utils.str} </h2>
      </div>
      <div className={Tailwind.merge(.[Styles.block])}>
        <Ion.Outline.playSkipBack />
        <h2 className={Tailwind.merge(.[Styles.h2])}> {"playSkipBack"->Utils.str} </h2>
      </div>
      <div className={Tailwind.merge(.[Styles.block])}>
        <Ion.Outline.playSkipBackCircle />
        <h2 className={Tailwind.merge(.[Styles.h2])}> {"playSkipBackCircle"->Utils.str} </h2>
      </div>
      <div className={Tailwind.merge(.[Styles.block])}>
        <Ion.Outline.playSkipForward />
        <h2 className={Tailwind.merge(.[Styles.h2])}> {"playSkipForward"->Utils.str} </h2>
      </div>
      <div className={Tailwind.merge(.[Styles.block])}>
        <Ion.Outline.playSkipForwardCircle />
        <h2 className={Tailwind.merge(.[Styles.h2])}> {"playSkipForwardCircle"->Utils.str} </h2>
      </div>
      <div className={Tailwind.merge(.[Styles.block])}>
        <Ion.Outline.podium />
        <h2 className={Tailwind.merge(.[Styles.h2])}> {"podium"->Utils.str} </h2>
      </div>
      <div className={Tailwind.merge(.[Styles.block])}>
        <Ion.Outline.power />
        <h2 className={Tailwind.merge(.[Styles.h2])}> {"power"->Utils.str} </h2>
      </div>
      <div className={Tailwind.merge(.[Styles.block])}>
        <Ion.Outline.pricetag />
        <h2 className={Tailwind.merge(.[Styles.h2])}> {"pricetag"->Utils.str} </h2>
      </div>
      <div className={Tailwind.merge(.[Styles.block])}>
        <Ion.Outline.pricetags />
        <h2 className={Tailwind.merge(.[Styles.h2])}> {"pricetags"->Utils.str} </h2>
      </div>
      <div className={Tailwind.merge(.[Styles.block])}>
        <Ion.Outline.print />
        <h2 className={Tailwind.merge(.[Styles.h2])}> {"print"->Utils.str} </h2>
      </div>
      <div className={Tailwind.merge(.[Styles.block])}>
        <Ion.Outline.prism />
        <h2 className={Tailwind.merge(.[Styles.h2])}> {"prism"->Utils.str} </h2>
      </div>
      <div className={Tailwind.merge(.[Styles.block])}>
        <Ion.Outline.pulse />
        <h2 className={Tailwind.merge(.[Styles.h2])}> {"pulse"->Utils.str} </h2>
      </div>
      <div className={Tailwind.merge(.[Styles.block])}>
        <Ion.Outline.push /> <h2 className={Tailwind.merge(.[Styles.h2])}> {"push"->Utils.str} </h2>
      </div>
      <div className={Tailwind.merge(.[Styles.block])}>
        <Ion.Outline.qrCode />
        <h2 className={Tailwind.merge(.[Styles.h2])}> {"qrCode"->Utils.str} </h2>
      </div>
      <div className={Tailwind.merge(.[Styles.block])}>
        <Ion.Outline.radio />
        <h2 className={Tailwind.merge(.[Styles.h2])}> {"radio"->Utils.str} </h2>
      </div>
      <div className={Tailwind.merge(.[Styles.block])}>
        <Ion.Outline.radioButtonOff />
        <h2 className={Tailwind.merge(.[Styles.h2])}> {"radioButtonOff"->Utils.str} </h2>
      </div>
      <div className={Tailwind.merge(.[Styles.block])}>
        <Ion.Outline.radioButtonOn />
        <h2 className={Tailwind.merge(.[Styles.h2])}> {"radioButtonOn"->Utils.str} </h2>
      </div>
      <div className={Tailwind.merge(.[Styles.block])}>
        <Ion.Outline.rainy />
        <h2 className={Tailwind.merge(.[Styles.h2])}> {"rainy"->Utils.str} </h2>
      </div>
      <div className={Tailwind.merge(.[Styles.block])}>
        <Ion.Outline.reader />
        <h2 className={Tailwind.merge(.[Styles.h2])}> {"reader"->Utils.str} </h2>
      </div>
      <div className={Tailwind.merge(.[Styles.block])}>
        <Ion.Outline.receipt />
        <h2 className={Tailwind.merge(.[Styles.h2])}> {"receipt"->Utils.str} </h2>
      </div>
      <div className={Tailwind.merge(.[Styles.block])}>
        <Ion.Outline.recording />
        <h2 className={Tailwind.merge(.[Styles.h2])}> {"recording"->Utils.str} </h2>
      </div>
      <div className={Tailwind.merge(.[Styles.block])}>
        <Ion.Outline.refresh />
        <h2 className={Tailwind.merge(.[Styles.h2])}> {"refresh"->Utils.str} </h2>
      </div>
      <div className={Tailwind.merge(.[Styles.block])}>
        <Ion.Outline.refreshCircle />
        <h2 className={Tailwind.merge(.[Styles.h2])}> {"refreshCircle"->Utils.str} </h2>
      </div>
      <div className={Tailwind.merge(.[Styles.block])}>
        <Ion.Outline.reload />
        <h2 className={Tailwind.merge(.[Styles.h2])}> {"reload"->Utils.str} </h2>
      </div>
      <div className={Tailwind.merge(.[Styles.block])}>
        <Ion.Outline.reloadCircle />
        <h2 className={Tailwind.merge(.[Styles.h2])}> {"reloadCircle"->Utils.str} </h2>
      </div>
      <div className={Tailwind.merge(.[Styles.block])}>
        <Ion.Outline.remove />
        <h2 className={Tailwind.merge(.[Styles.h2])}> {"remove"->Utils.str} </h2>
      </div>
      <div className={Tailwind.merge(.[Styles.block])}>
        <Ion.Outline.removeCircle />
        <h2 className={Tailwind.merge(.[Styles.h2])}> {"removeCircle"->Utils.str} </h2>
      </div>
      <div className={Tailwind.merge(.[Styles.block])}>
        <Ion.Outline.reorderFour />
        <h2 className={Tailwind.merge(.[Styles.h2])}> {"reorderFour"->Utils.str} </h2>
      </div>
      <div className={Tailwind.merge(.[Styles.block])}>
        <Ion.Outline.reorderThree />
        <h2 className={Tailwind.merge(.[Styles.h2])}> {"reorderThree"->Utils.str} </h2>
      </div>
      <div className={Tailwind.merge(.[Styles.block])}>
        <Ion.Outline.reorderTwo />
        <h2 className={Tailwind.merge(.[Styles.h2])}> {"reorderTwo"->Utils.str} </h2>
      </div>
      <div className={Tailwind.merge(.[Styles.block])}>
        <Ion.Outline.repeat />
        <h2 className={Tailwind.merge(.[Styles.h2])}> {"repeat"->Utils.str} </h2>
      </div>
      <div className={Tailwind.merge(.[Styles.block])}>
        <Ion.Outline.resize />
        <h2 className={Tailwind.merge(.[Styles.h2])}> {"resize"->Utils.str} </h2>
      </div>
      <div className={Tailwind.merge(.[Styles.block])}>
        <Ion.Outline.restaurant />
        <h2 className={Tailwind.merge(.[Styles.h2])}> {"restaurant"->Utils.str} </h2>
      </div>
      <div className={Tailwind.merge(.[Styles.block])}>
        <Ion.Outline.returnDownBack />
        <h2 className={Tailwind.merge(.[Styles.h2])}> {"returnDownBack"->Utils.str} </h2>
      </div>
      <div className={Tailwind.merge(.[Styles.block])}>
        <Ion.Outline.returnDownForward />
        <h2 className={Tailwind.merge(.[Styles.h2])}> {"returnDownForward"->Utils.str} </h2>
      </div>
      <div className={Tailwind.merge(.[Styles.block])}>
        <Ion.Outline.returnUpBack />
        <h2 className={Tailwind.merge(.[Styles.h2])}> {"returnUpBack"->Utils.str} </h2>
      </div>
      <div className={Tailwind.merge(.[Styles.block])}>
        <Ion.Outline.returnUpForward />
        <h2 className={Tailwind.merge(.[Styles.h2])}> {"returnUpForward"->Utils.str} </h2>
      </div>
      <div className={Tailwind.merge(.[Styles.block])}>
        <Ion.Outline.ribbon />
        <h2 className={Tailwind.merge(.[Styles.h2])}> {"ribbon"->Utils.str} </h2>
      </div>
      <div className={Tailwind.merge(.[Styles.block])}>
        <Ion.Outline.rocket />
        <h2 className={Tailwind.merge(.[Styles.h2])}> {"rocket"->Utils.str} </h2>
      </div>
      <div className={Tailwind.merge(.[Styles.block])}>
        <Ion.Outline.rose /> <h2 className={Tailwind.merge(.[Styles.h2])}> {"rose"->Utils.str} </h2>
      </div>
      <div className={Tailwind.merge(.[Styles.block])}>
        <Ion.Outline.sad /> <h2 className={Tailwind.merge(.[Styles.h2])}> {"sad"->Utils.str} </h2>
      </div>
      <div className={Tailwind.merge(.[Styles.block])}>
        <Ion.Outline.save /> <h2 className={Tailwind.merge(.[Styles.h2])}> {"save"->Utils.str} </h2>
      </div>
      <div className={Tailwind.merge(.[Styles.block])}>
        <Ion.Outline.scale />
        <h2 className={Tailwind.merge(.[Styles.h2])}> {"scale"->Utils.str} </h2>
      </div>
      <div className={Tailwind.merge(.[Styles.block])}>
        <Ion.Outline.scan /> <h2 className={Tailwind.merge(.[Styles.h2])}> {"scan"->Utils.str} </h2>
      </div>
      <div className={Tailwind.merge(.[Styles.block])}>
        <Ion.Outline.scanCircle />
        <h2 className={Tailwind.merge(.[Styles.h2])}> {"scanCircle"->Utils.str} </h2>
      </div>
      <div className={Tailwind.merge(.[Styles.block])}>
        <Ion.Outline.school />
        <h2 className={Tailwind.merge(.[Styles.h2])}> {"school"->Utils.str} </h2>
      </div>
      <div className={Tailwind.merge(.[Styles.block])}>
        <Ion.Outline.search />
        <h2 className={Tailwind.merge(.[Styles.h2])}> {"search"->Utils.str} </h2>
      </div>
      <div className={Tailwind.merge(.[Styles.block])}>
        <Ion.Outline.searchCircle />
        <h2 className={Tailwind.merge(.[Styles.h2])}> {"searchCircle"->Utils.str} </h2>
      </div>
      <div className={Tailwind.merge(.[Styles.block])}>
        <Ion.Outline.send /> <h2 className={Tailwind.merge(.[Styles.h2])}> {"send"->Utils.str} </h2>
      </div>
      <div className={Tailwind.merge(.[Styles.block])}>
        <Ion.Outline.server />
        <h2 className={Tailwind.merge(.[Styles.h2])}> {"server"->Utils.str} </h2>
      </div>
      <div className={Tailwind.merge(.[Styles.block])}>
        <Ion.Outline.settings />
        <h2 className={Tailwind.merge(.[Styles.h2])}> {"settings"->Utils.str} </h2>
      </div>
      <div className={Tailwind.merge(.[Styles.block])}>
        <Ion.Outline.shapes />
        <h2 className={Tailwind.merge(.[Styles.h2])}> {"shapes"->Utils.str} </h2>
      </div>
      <div className={Tailwind.merge(.[Styles.block])}>
        <Ion.Outline.share />
        <h2 className={Tailwind.merge(.[Styles.h2])}> {"share"->Utils.str} </h2>
      </div>
      <div className={Tailwind.merge(.[Styles.block])}>
        <Ion.Outline.shareSocial />
        <h2 className={Tailwind.merge(.[Styles.h2])}> {"shareSocial"->Utils.str} </h2>
      </div>
      <div className={Tailwind.merge(.[Styles.block])}>
        <Ion.Outline.shield />
        <h2 className={Tailwind.merge(.[Styles.h2])}> {"shield"->Utils.str} </h2>
      </div>
      <div className={Tailwind.merge(.[Styles.block])}>
        <Ion.Outline.shieldCheckmark />
        <h2 className={Tailwind.merge(.[Styles.h2])}> {"shieldCheckmark"->Utils.str} </h2>
      </div>
      <div className={Tailwind.merge(.[Styles.block])}>
        <Ion.Outline.shieldHalf />
        <h2 className={Tailwind.merge(.[Styles.h2])}> {"shieldHalf"->Utils.str} </h2>
      </div>
      <div className={Tailwind.merge(.[Styles.block])}>
        <Ion.Outline.shirt />
        <h2 className={Tailwind.merge(.[Styles.h2])}> {"shirt"->Utils.str} </h2>
      </div>
      <div className={Tailwind.merge(.[Styles.block])}>
        <Ion.Outline.shuffle />
        <h2 className={Tailwind.merge(.[Styles.h2])}> {"shuffle"->Utils.str} </h2>
      </div>
      <div className={Tailwind.merge(.[Styles.block])}>
        <Ion.Outline.skull />
        <h2 className={Tailwind.merge(.[Styles.h2])}> {"skull"->Utils.str} </h2>
      </div>
      <div className={Tailwind.merge(.[Styles.block])}>
        <Ion.Outline.snow /> <h2 className={Tailwind.merge(.[Styles.h2])}> {"snow"->Utils.str} </h2>
      </div>
      <div className={Tailwind.merge(.[Styles.block])}>
        <Ion.Outline.sparkles />
        <h2 className={Tailwind.merge(.[Styles.h2])}> {"sparkles"->Utils.str} </h2>
      </div>
      <div className={Tailwind.merge(.[Styles.block])}>
        <Ion.Outline.speedometer />
        <h2 className={Tailwind.merge(.[Styles.h2])}> {"speedometer"->Utils.str} </h2>
      </div>
      <div className={Tailwind.merge(.[Styles.block])}>
        <Ion.Outline.square />
        <h2 className={Tailwind.merge(.[Styles.h2])}> {"square"->Utils.str} </h2>
      </div>
      <div className={Tailwind.merge(.[Styles.block])}>
        <Ion.Outline.star /> <h2 className={Tailwind.merge(.[Styles.h2])}> {"star"->Utils.str} </h2>
      </div>
      <div className={Tailwind.merge(.[Styles.block])}>
        <Ion.Outline.starHalf />
        <h2 className={Tailwind.merge(.[Styles.h2])}> {"starHalf"->Utils.str} </h2>
      </div>
      <div className={Tailwind.merge(.[Styles.block])}>
        <Ion.Outline.statsChart />
        <h2 className={Tailwind.merge(.[Styles.h2])}> {"statsChart"->Utils.str} </h2>
      </div>
      <div className={Tailwind.merge(.[Styles.block])}>
        <Ion.Outline.stop /> <h2 className={Tailwind.merge(.[Styles.h2])}> {"stop"->Utils.str} </h2>
      </div>
      <div className={Tailwind.merge(.[Styles.block])}>
        <Ion.Outline.stopCircle />
        <h2 className={Tailwind.merge(.[Styles.h2])}> {"stopCircle"->Utils.str} </h2>
      </div>
      <div className={Tailwind.merge(.[Styles.block])}>
        <Ion.Outline.stopwatch />
        <h2 className={Tailwind.merge(.[Styles.h2])}> {"stopwatch"->Utils.str} </h2>
      </div>
      <div className={Tailwind.merge(.[Styles.block])}>
        <Ion.Outline.storefront />
        <h2 className={Tailwind.merge(.[Styles.h2])}> {"storefront"->Utils.str} </h2>
      </div>
      <div className={Tailwind.merge(.[Styles.block])}>
        <Ion.Outline.subway />
        <h2 className={Tailwind.merge(.[Styles.h2])}> {"subway"->Utils.str} </h2>
      </div>
      <div className={Tailwind.merge(.[Styles.block])}>
        <Ion.Outline.sunny />
        <h2 className={Tailwind.merge(.[Styles.h2])}> {"sunny"->Utils.str} </h2>
      </div>
      <div className={Tailwind.merge(.[Styles.block])}>
        <Ion.Outline.swapHorizontal />
        <h2 className={Tailwind.merge(.[Styles.h2])}> {"swapHorizontal"->Utils.str} </h2>
      </div>
      <div className={Tailwind.merge(.[Styles.block])}>
        <Ion.Outline.swapVertical />
        <h2 className={Tailwind.merge(.[Styles.h2])}> {"swapVertical"->Utils.str} </h2>
      </div>
      <div className={Tailwind.merge(.[Styles.block])}>
        <Ion.Outline.sync /> <h2 className={Tailwind.merge(.[Styles.h2])}> {"sync"->Utils.str} </h2>
      </div>
      <div className={Tailwind.merge(.[Styles.block])}>
        <Ion.Outline.syncCircle />
        <h2 className={Tailwind.merge(.[Styles.h2])}> {"syncCircle"->Utils.str} </h2>
      </div>
      <div className={Tailwind.merge(.[Styles.block])}>
        <Ion.Outline.tabletLandscape />
        <h2 className={Tailwind.merge(.[Styles.h2])}> {"tabletLandscape"->Utils.str} </h2>
      </div>
      <div className={Tailwind.merge(.[Styles.block])}>
        <Ion.Outline.tabletPortrait />
        <h2 className={Tailwind.merge(.[Styles.h2])}> {"tabletPortrait"->Utils.str} </h2>
      </div>
      <div className={Tailwind.merge(.[Styles.block])}>
        <Ion.Outline.telescope />
        <h2 className={Tailwind.merge(.[Styles.h2])}> {"telescope"->Utils.str} </h2>
      </div>
      <div className={Tailwind.merge(.[Styles.block])}>
        <Ion.Outline.tennisball />
        <h2 className={Tailwind.merge(.[Styles.h2])}> {"tennisball"->Utils.str} </h2>
      </div>
      <div className={Tailwind.merge(.[Styles.block])}>
        <Ion.Outline.terminal />
        <h2 className={Tailwind.merge(.[Styles.h2])}> {"terminal"->Utils.str} </h2>
      </div>
      <div className={Tailwind.merge(.[Styles.block])}>
        <Ion.Outline.text /> <h2 className={Tailwind.merge(.[Styles.h2])}> {"text"->Utils.str} </h2>
      </div>
      <div className={Tailwind.merge(.[Styles.block])}>
        <Ion.Outline.thermometer />
        <h2 className={Tailwind.merge(.[Styles.h2])}> {"thermometer"->Utils.str} </h2>
      </div>
      <div className={Tailwind.merge(.[Styles.block])}>
        <Ion.Outline.thumbsDown />
        <h2 className={Tailwind.merge(.[Styles.h2])}> {"thumbsDown"->Utils.str} </h2>
      </div>
      <div className={Tailwind.merge(.[Styles.block])}>
        <Ion.Outline.thumbsUp />
        <h2 className={Tailwind.merge(.[Styles.h2])}> {"thumbsUp"->Utils.str} </h2>
      </div>
      <div className={Tailwind.merge(.[Styles.block])}>
        <Ion.Outline.thunderstorm />
        <h2 className={Tailwind.merge(.[Styles.h2])}> {"thunderstorm"->Utils.str} </h2>
      </div>
      <div className={Tailwind.merge(.[Styles.block])}>
        <Ion.Outline.ticket />
        <h2 className={Tailwind.merge(.[Styles.h2])}> {"ticket"->Utils.str} </h2>
      </div>
      <div className={Tailwind.merge(.[Styles.block])}>
        <Ion.Outline.time /> <h2 className={Tailwind.merge(.[Styles.h2])}> {"time"->Utils.str} </h2>
      </div>
      <div className={Tailwind.merge(.[Styles.block])}>
        <Ion.Outline.timer />
        <h2 className={Tailwind.merge(.[Styles.h2])}> {"timer"->Utils.str} </h2>
      </div>
      <div className={Tailwind.merge(.[Styles.block])}>
        <Ion.Outline.today />
        <h2 className={Tailwind.merge(.[Styles.h2])}> {"today"->Utils.str} </h2>
      </div>
      <div className={Tailwind.merge(.[Styles.block])}>
        <Ion.Outline.toggle />
        <h2 className={Tailwind.merge(.[Styles.h2])}> {"toggle"->Utils.str} </h2>
      </div>
      <div className={Tailwind.merge(.[Styles.block])}>
        <Ion.Outline.trailSign />
        <h2 className={Tailwind.merge(.[Styles.h2])}> {"trailSign"->Utils.str} </h2>
      </div>
      <div className={Tailwind.merge(.[Styles.block])}>
        <Ion.Outline.train />
        <h2 className={Tailwind.merge(.[Styles.h2])}> {"train"->Utils.str} </h2>
      </div>
      <div className={Tailwind.merge(.[Styles.block])}>
        <Ion.Outline.transgender />
        <h2 className={Tailwind.merge(.[Styles.h2])}> {"transgender"->Utils.str} </h2>
      </div>
      <div className={Tailwind.merge(.[Styles.block])}>
        <Ion.Outline.trash />
        <h2 className={Tailwind.merge(.[Styles.h2])}> {"trash"->Utils.str} </h2>
      </div>
      <div className={Tailwind.merge(.[Styles.block])}>
        <Ion.Outline.trashBin />
        <h2 className={Tailwind.merge(.[Styles.h2])}> {"trashBin"->Utils.str} </h2>
      </div>
      <div className={Tailwind.merge(.[Styles.block])}>
        <Ion.Outline.trendingDown />
        <h2 className={Tailwind.merge(.[Styles.h2])}> {"trendingDown"->Utils.str} </h2>
      </div>
      <div className={Tailwind.merge(.[Styles.block])}>
        <Ion.Outline.trendingUp />
        <h2 className={Tailwind.merge(.[Styles.h2])}> {"trendingUp"->Utils.str} </h2>
      </div>
      <div className={Tailwind.merge(.[Styles.block])}>
        <Ion.Outline.triangle />
        <h2 className={Tailwind.merge(.[Styles.h2])}> {"triangle"->Utils.str} </h2>
      </div>
      <div className={Tailwind.merge(.[Styles.block])}>
        <Ion.Outline.trophy />
        <h2 className={Tailwind.merge(.[Styles.h2])}> {"trophy"->Utils.str} </h2>
      </div>
      <div className={Tailwind.merge(.[Styles.block])}>
        <Ion.Outline.tv /> <h2 className={Tailwind.merge(.[Styles.h2])}> {"tv"->Utils.str} </h2>
      </div>
      <div className={Tailwind.merge(.[Styles.block])}>
        <Ion.Outline.umbrella />
        <h2 className={Tailwind.merge(.[Styles.h2])}> {"umbrella"->Utils.str} </h2>
      </div>
      <div className={Tailwind.merge(.[Styles.block])}>
        <Ion.Outline.unlink />
        <h2 className={Tailwind.merge(.[Styles.h2])}> {"unlink"->Utils.str} </h2>
      </div>
      <div className={Tailwind.merge(.[Styles.block])}>
        <Ion.Outline.videocam />
        <h2 className={Tailwind.merge(.[Styles.h2])}> {"videocam"->Utils.str} </h2>
      </div>
      <div className={Tailwind.merge(.[Styles.block])}>
        <Ion.Outline.videocamOff />
        <h2 className={Tailwind.merge(.[Styles.h2])}> {"videocamOff"->Utils.str} </h2>
      </div>
      <div className={Tailwind.merge(.[Styles.block])}>
        <Ion.Outline.volumeHigh />
        <h2 className={Tailwind.merge(.[Styles.h2])}> {"volumeHigh"->Utils.str} </h2>
      </div>
      <div className={Tailwind.merge(.[Styles.block])}>
        <Ion.Outline.volumeLow />
        <h2 className={Tailwind.merge(.[Styles.h2])}> {"volumeLow"->Utils.str} </h2>
      </div>
      <div className={Tailwind.merge(.[Styles.block])}>
        <Ion.Outline.volumeMedium />
        <h2 className={Tailwind.merge(.[Styles.h2])}> {"volumeMedium"->Utils.str} </h2>
      </div>
      <div className={Tailwind.merge(.[Styles.block])}>
        <Ion.Outline.volumeMute />
        <h2 className={Tailwind.merge(.[Styles.h2])}> {"volumeMute"->Utils.str} </h2>
      </div>
      <div className={Tailwind.merge(.[Styles.block])}>
        <Ion.Outline.volumeOff />
        <h2 className={Tailwind.merge(.[Styles.h2])}> {"volumeOff"->Utils.str} </h2>
      </div>
      <div className={Tailwind.merge(.[Styles.block])}>
        <Ion.Outline.walk /> <h2 className={Tailwind.merge(.[Styles.h2])}> {"walk"->Utils.str} </h2>
      </div>
      <div className={Tailwind.merge(.[Styles.block])}>
        <Ion.Outline.wallet />
        <h2 className={Tailwind.merge(.[Styles.h2])}> {"wallet"->Utils.str} </h2>
      </div>
      <div className={Tailwind.merge(.[Styles.block])}>
        <Ion.Outline.warning />
        <h2 className={Tailwind.merge(.[Styles.h2])}> {"warning"->Utils.str} </h2>
      </div>
      <div className={Tailwind.merge(.[Styles.block])}>
        <Ion.Outline.watch />
        <h2 className={Tailwind.merge(.[Styles.h2])}> {"watch"->Utils.str} </h2>
      </div>
      <div className={Tailwind.merge(.[Styles.block])}>
        <Ion.Outline.water />
        <h2 className={Tailwind.merge(.[Styles.h2])}> {"water"->Utils.str} </h2>
      </div>
      <div className={Tailwind.merge(.[Styles.block])}>
        <Ion.Outline.wifi /> <h2 className={Tailwind.merge(.[Styles.h2])}> {"wifi"->Utils.str} </h2>
      </div>
      <div className={Tailwind.merge(.[Styles.block])}>
        <Ion.Outline.wine /> <h2 className={Tailwind.merge(.[Styles.h2])}> {"wine"->Utils.str} </h2>
      </div>
      <div className={Tailwind.merge(.[Styles.block])}>
        <Ion.Outline.woman />
        <h2 className={Tailwind.merge(.[Styles.h2])}> {"woman"->Utils.str} </h2>
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
        <Ion.Filled.accessibility />
        <h2 className={Tailwind.merge(.[Styles.h2])}> {"accessibility"->Utils.str} </h2>
      </div>
      <div className={Tailwind.merge(.[Styles.block])}>
        <Ion.Filled.add /> <h2 className={Tailwind.merge(.[Styles.h2])}> {"add"->Utils.str} </h2>
      </div>
      <div className={Tailwind.merge(.[Styles.block])}>
        <Ion.Filled.addCircle />
        <h2 className={Tailwind.merge(.[Styles.h2])}> {"addCircle"->Utils.str} </h2>
      </div>
      <div className={Tailwind.merge(.[Styles.block])}>
        <Ion.Filled.airplane />
        <h2 className={Tailwind.merge(.[Styles.h2])}> {"airplane"->Utils.str} </h2>
      </div>
      <div className={Tailwind.merge(.[Styles.block])}>
        <Ion.Filled.alarm />
        <h2 className={Tailwind.merge(.[Styles.h2])}> {"alarm"->Utils.str} </h2>
      </div>
      <div className={Tailwind.merge(.[Styles.block])}>
        <Ion.Filled.albums />
        <h2 className={Tailwind.merge(.[Styles.h2])}> {"albums"->Utils.str} </h2>
      </div>
      <div className={Tailwind.merge(.[Styles.block])}>
        <Ion.Filled.alert />
        <h2 className={Tailwind.merge(.[Styles.h2])}> {"alert"->Utils.str} </h2>
      </div>
      <div className={Tailwind.merge(.[Styles.block])}>
        <Ion.Filled.alertCircle />
        <h2 className={Tailwind.merge(.[Styles.h2])}> {"alertCircle"->Utils.str} </h2>
      </div>
      <div className={Tailwind.merge(.[Styles.block])}>
        <Ion.Filled.americanFootball />
        <h2 className={Tailwind.merge(.[Styles.h2])}> {"americanFootball"->Utils.str} </h2>
      </div>
      <div className={Tailwind.merge(.[Styles.block])}>
        <Ion.Filled.analytics />
        <h2 className={Tailwind.merge(.[Styles.h2])}> {"analytics"->Utils.str} </h2>
      </div>
      <div className={Tailwind.merge(.[Styles.block])}>
        <Ion.Filled.aperture />
        <h2 className={Tailwind.merge(.[Styles.h2])}> {"aperture"->Utils.str} </h2>
      </div>
      <div className={Tailwind.merge(.[Styles.block])}>
        <Ion.Filled.apps /> <h2 className={Tailwind.merge(.[Styles.h2])}> {"apps"->Utils.str} </h2>
      </div>
      <div className={Tailwind.merge(.[Styles.block])}>
        <Ion.Filled.archive />
        <h2 className={Tailwind.merge(.[Styles.h2])}> {"archive"->Utils.str} </h2>
      </div>
      <div className={Tailwind.merge(.[Styles.block])}>
        <Ion.Filled.arrowBack />
        <h2 className={Tailwind.merge(.[Styles.h2])}> {"arrowBack"->Utils.str} </h2>
      </div>
      <div className={Tailwind.merge(.[Styles.block])}>
        <Ion.Filled.arrowBackCircle />
        <h2 className={Tailwind.merge(.[Styles.h2])}> {"arrowBackCircle"->Utils.str} </h2>
      </div>
      <div className={Tailwind.merge(.[Styles.block])}>
        <Ion.Filled.arrowDown />
        <h2 className={Tailwind.merge(.[Styles.h2])}> {"arrowDown"->Utils.str} </h2>
      </div>
      <div className={Tailwind.merge(.[Styles.block])}>
        <Ion.Filled.arrowDownCircle />
        <h2 className={Tailwind.merge(.[Styles.h2])}> {"arrowDownCircle"->Utils.str} </h2>
      </div>
      <div className={Tailwind.merge(.[Styles.block])}>
        <Ion.Filled.arrowForward />
        <h2 className={Tailwind.merge(.[Styles.h2])}> {"arrowForward"->Utils.str} </h2>
      </div>
      <div className={Tailwind.merge(.[Styles.block])}>
        <Ion.Filled.arrowForwardCircle />
        <h2 className={Tailwind.merge(.[Styles.h2])}> {"arrowForwardCircle"->Utils.str} </h2>
      </div>
      <div className={Tailwind.merge(.[Styles.block])}>
        <Ion.Filled.arrowRedo />
        <h2 className={Tailwind.merge(.[Styles.h2])}> {"arrowRedo"->Utils.str} </h2>
      </div>
      <div className={Tailwind.merge(.[Styles.block])}>
        <Ion.Filled.arrowRedoCircle />
        <h2 className={Tailwind.merge(.[Styles.h2])}> {"arrowRedoCircle"->Utils.str} </h2>
      </div>
      <div className={Tailwind.merge(.[Styles.block])}>
        <Ion.Filled.arrowUndo />
        <h2 className={Tailwind.merge(.[Styles.h2])}> {"arrowUndo"->Utils.str} </h2>
      </div>
      <div className={Tailwind.merge(.[Styles.block])}>
        <Ion.Filled.arrowUndoCircle />
        <h2 className={Tailwind.merge(.[Styles.h2])}> {"arrowUndoCircle"->Utils.str} </h2>
      </div>
      <div className={Tailwind.merge(.[Styles.block])}>
        <Ion.Filled.arrowUp />
        <h2 className={Tailwind.merge(.[Styles.h2])}> {"arrowUp"->Utils.str} </h2>
      </div>
      <div className={Tailwind.merge(.[Styles.block])}>
        <Ion.Filled.arrowUpCircle />
        <h2 className={Tailwind.merge(.[Styles.h2])}> {"arrowUpCircle"->Utils.str} </h2>
      </div>
      <div className={Tailwind.merge(.[Styles.block])}>
        <Ion.Filled.at /> <h2 className={Tailwind.merge(.[Styles.h2])}> {"at"->Utils.str} </h2>
      </div>
      <div className={Tailwind.merge(.[Styles.block])}>
        <Ion.Filled.atCircle />
        <h2 className={Tailwind.merge(.[Styles.h2])}> {"atCircle"->Utils.str} </h2>
      </div>
      <div className={Tailwind.merge(.[Styles.block])}>
        <Ion.Filled.attach />
        <h2 className={Tailwind.merge(.[Styles.h2])}> {"attach"->Utils.str} </h2>
      </div>
      <div className={Tailwind.merge(.[Styles.block])}>
        <Ion.Filled.backspace />
        <h2 className={Tailwind.merge(.[Styles.h2])}> {"backspace"->Utils.str} </h2>
      </div>
      <div className={Tailwind.merge(.[Styles.block])}>
        <Ion.Filled.bag /> <h2 className={Tailwind.merge(.[Styles.h2])}> {"bag"->Utils.str} </h2>
      </div>
      <div className={Tailwind.merge(.[Styles.block])}>
        <Ion.Filled.bagAdd />
        <h2 className={Tailwind.merge(.[Styles.h2])}> {"bagAdd"->Utils.str} </h2>
      </div>
      <div className={Tailwind.merge(.[Styles.block])}>
        <Ion.Filled.bagCheck />
        <h2 className={Tailwind.merge(.[Styles.h2])}> {"bagCheck"->Utils.str} </h2>
      </div>
      <div className={Tailwind.merge(.[Styles.block])}>
        <Ion.Filled.bagHandle />
        <h2 className={Tailwind.merge(.[Styles.h2])}> {"bagHandle"->Utils.str} </h2>
      </div>
      <div className={Tailwind.merge(.[Styles.block])}>
        <Ion.Filled.bagRemove />
        <h2 className={Tailwind.merge(.[Styles.h2])}> {"bagRemove"->Utils.str} </h2>
      </div>
      <div className={Tailwind.merge(.[Styles.block])}>
        <Ion.Filled.ballon />
        <h2 className={Tailwind.merge(.[Styles.h2])}> {"ballon"->Utils.str} </h2>
      </div>
      <div className={Tailwind.merge(.[Styles.block])}>
        <Ion.Filled.ban /> <h2 className={Tailwind.merge(.[Styles.h2])}> {"ban"->Utils.str} </h2>
      </div>
      <div className={Tailwind.merge(.[Styles.block])}>
        <Ion.Filled.bandage />
        <h2 className={Tailwind.merge(.[Styles.h2])}> {"bandage"->Utils.str} </h2>
      </div>
      <div className={Tailwind.merge(.[Styles.block])}>
        <Ion.Filled.barChart />
        <h2 className={Tailwind.merge(.[Styles.h2])}> {"barChart"->Utils.str} </h2>
      </div>
      <div className={Tailwind.merge(.[Styles.block])}>
        <Ion.Filled.barbell />
        <h2 className={Tailwind.merge(.[Styles.h2])}> {"barbell"->Utils.str} </h2>
      </div>
      <div className={Tailwind.merge(.[Styles.block])}>
        <Ion.Filled.barcode />
        <h2 className={Tailwind.merge(.[Styles.h2])}> {"barcode"->Utils.str} </h2>
      </div>
      <div className={Tailwind.merge(.[Styles.block])}>
        <Ion.Filled.baseball />
        <h2 className={Tailwind.merge(.[Styles.h2])}> {"baseball"->Utils.str} </h2>
      </div>
      <div className={Tailwind.merge(.[Styles.block])}>
        <Ion.Filled.basket />
        <h2 className={Tailwind.merge(.[Styles.h2])}> {"basket"->Utils.str} </h2>
      </div>
      <div className={Tailwind.merge(.[Styles.block])}>
        <Ion.Filled.basketball />
        <h2 className={Tailwind.merge(.[Styles.h2])}> {"basketball"->Utils.str} </h2>
      </div>
      <div className={Tailwind.merge(.[Styles.block])}>
        <Ion.Filled.batteryCharging />
        <h2 className={Tailwind.merge(.[Styles.h2])}> {"batteryCharging"->Utils.str} </h2>
      </div>
      <div className={Tailwind.merge(.[Styles.block])}>
        <Ion.Filled.batteryDead />
        <h2 className={Tailwind.merge(.[Styles.h2])}> {"batteryDead"->Utils.str} </h2>
      </div>
      <div className={Tailwind.merge(.[Styles.block])}>
        <Ion.Filled.batteryFull />
        <h2 className={Tailwind.merge(.[Styles.h2])}> {"batteryFull"->Utils.str} </h2>
      </div>
      <div className={Tailwind.merge(.[Styles.block])}>
        <Ion.Filled.batteryHalf />
        <h2 className={Tailwind.merge(.[Styles.h2])}> {"batteryHalf"->Utils.str} </h2>
      </div>
      <div className={Tailwind.merge(.[Styles.block])}>
        <Ion.Filled.beaker />
        <h2 className={Tailwind.merge(.[Styles.h2])}> {"beaker"->Utils.str} </h2>
      </div>
      <div className={Tailwind.merge(.[Styles.block])}>
        <Ion.Filled.bed /> <h2 className={Tailwind.merge(.[Styles.h2])}> {"bed"->Utils.str} </h2>
      </div>
      <div className={Tailwind.merge(.[Styles.block])}>
        <Ion.Filled.beer /> <h2 className={Tailwind.merge(.[Styles.h2])}> {"beer"->Utils.str} </h2>
      </div>
      <div className={Tailwind.merge(.[Styles.block])}>
        <Ion.Filled.bicycle />
        <h2 className={Tailwind.merge(.[Styles.h2])}> {"bicycle"->Utils.str} </h2>
      </div>
      <div className={Tailwind.merge(.[Styles.block])}>
        <Ion.Filled.bluetooth />
        <h2 className={Tailwind.merge(.[Styles.h2])}> {"bluetooth"->Utils.str} </h2>
      </div>
      <div className={Tailwind.merge(.[Styles.block])}>
        <Ion.Filled.boat /> <h2 className={Tailwind.merge(.[Styles.h2])}> {"boat"->Utils.str} </h2>
      </div>
      <div className={Tailwind.merge(.[Styles.block])}>
        <Ion.Filled.body /> <h2 className={Tailwind.merge(.[Styles.h2])}> {"body"->Utils.str} </h2>
      </div>
      <div className={Tailwind.merge(.[Styles.block])}>
        <Ion.Filled.bonefire />
        <h2 className={Tailwind.merge(.[Styles.h2])}> {"bonefire"->Utils.str} </h2>
      </div>
      <div className={Tailwind.merge(.[Styles.block])}>
        <Ion.Filled.book /> <h2 className={Tailwind.merge(.[Styles.h2])}> {"book"->Utils.str} </h2>
      </div>
      <div className={Tailwind.merge(.[Styles.block])}>
        <Ion.Filled.bookmark />
        <h2 className={Tailwind.merge(.[Styles.h2])}> {"bookmark"->Utils.str} </h2>
      </div>
      <div className={Tailwind.merge(.[Styles.block])}>
        <Ion.Filled.bookmarks />
        <h2 className={Tailwind.merge(.[Styles.h2])}> {"bookmarks"->Utils.str} </h2>
      </div>
      <div className={Tailwind.merge(.[Styles.block])}>
        <Ion.Filled.bowlingBall />
        <h2 className={Tailwind.merge(.[Styles.h2])}> {"bowlingBall"->Utils.str} </h2>
      </div>
      <div className={Tailwind.merge(.[Styles.block])}>
        <Ion.Filled.briefcase />
        <h2 className={Tailwind.merge(.[Styles.h2])}> {"briefcase"->Utils.str} </h2>
      </div>
      <div className={Tailwind.merge(.[Styles.block])}>
        <Ion.Filled.browsers />
        <h2 className={Tailwind.merge(.[Styles.h2])}> {"browsers"->Utils.str} </h2>
      </div>
      <div className={Tailwind.merge(.[Styles.block])}>
        <Ion.Filled.brush />
        <h2 className={Tailwind.merge(.[Styles.h2])}> {"brush"->Utils.str} </h2>
      </div>
      <div className={Tailwind.merge(.[Styles.block])}>
        <Ion.Filled.bug /> <h2 className={Tailwind.merge(.[Styles.h2])}> {"bug"->Utils.str} </h2>
      </div>
      <div className={Tailwind.merge(.[Styles.block])}>
        <Ion.Filled.build />
        <h2 className={Tailwind.merge(.[Styles.h2])}> {"build"->Utils.str} </h2>
      </div>
      <div className={Tailwind.merge(.[Styles.block])}>
        <Ion.Filled.bulb /> <h2 className={Tailwind.merge(.[Styles.h2])}> {"bulb"->Utils.str} </h2>
      </div>
      <div className={Tailwind.merge(.[Styles.block])}>
        <Ion.Filled.bus /> <h2 className={Tailwind.merge(.[Styles.h2])}> {"bus"->Utils.str} </h2>
      </div>
      <div className={Tailwind.merge(.[Styles.block])}>
        <Ion.Filled.business />
        <h2 className={Tailwind.merge(.[Styles.h2])}> {"business"->Utils.str} </h2>
      </div>
      <div className={Tailwind.merge(.[Styles.block])}>
        <Ion.Filled.cafe /> <h2 className={Tailwind.merge(.[Styles.h2])}> {"cafe"->Utils.str} </h2>
      </div>
      <div className={Tailwind.merge(.[Styles.block])}>
        <Ion.Filled.calculator />
        <h2 className={Tailwind.merge(.[Styles.h2])}> {"calculator"->Utils.str} </h2>
      </div>
      <div className={Tailwind.merge(.[Styles.block])}>
        <Ion.Filled.calendar />
        <h2 className={Tailwind.merge(.[Styles.h2])}> {"calendar"->Utils.str} </h2>
      </div>
      <div className={Tailwind.merge(.[Styles.block])}>
        <Ion.Filled.calendarClear />
        <h2 className={Tailwind.merge(.[Styles.h2])}> {"calendarClear"->Utils.str} </h2>
      </div>
      <div className={Tailwind.merge(.[Styles.block])}>
        <Ion.Filled.calendarNumber />
        <h2 className={Tailwind.merge(.[Styles.h2])}> {"calendarNumber"->Utils.str} </h2>
      </div>
      <div className={Tailwind.merge(.[Styles.block])}>
        <Ion.Filled.call /> <h2 className={Tailwind.merge(.[Styles.h2])}> {"call"->Utils.str} </h2>
      </div>
      <div className={Tailwind.merge(.[Styles.block])}>
        <Ion.Filled.camera />
        <h2 className={Tailwind.merge(.[Styles.h2])}> {"camera"->Utils.str} </h2>
      </div>
      <div className={Tailwind.merge(.[Styles.block])}>
        <Ion.Filled.cameraReverse />
        <h2 className={Tailwind.merge(.[Styles.h2])}> {"cameraReverse"->Utils.str} </h2>
      </div>
      <div className={Tailwind.merge(.[Styles.block])}>
        <Ion.Filled.car /> <h2 className={Tailwind.merge(.[Styles.h2])}> {"car"->Utils.str} </h2>
      </div>
      <div className={Tailwind.merge(.[Styles.block])}>
        <Ion.Filled.carSport />
        <h2 className={Tailwind.merge(.[Styles.h2])}> {"carSport"->Utils.str} </h2>
      </div>
      <div className={Tailwind.merge(.[Styles.block])}>
        <Ion.Filled.card /> <h2 className={Tailwind.merge(.[Styles.h2])}> {"card"->Utils.str} </h2>
      </div>
      <div className={Tailwind.merge(.[Styles.block])}>
        <Ion.Filled.caretBack />
        <h2 className={Tailwind.merge(.[Styles.h2])}> {"caretBack"->Utils.str} </h2>
      </div>
      <div className={Tailwind.merge(.[Styles.block])}>
        <Ion.Filled.caretBackCircle />
        <h2 className={Tailwind.merge(.[Styles.h2])}> {"caretBackCircle"->Utils.str} </h2>
      </div>
      <div className={Tailwind.merge(.[Styles.block])}>
        <Ion.Filled.caretDown />
        <h2 className={Tailwind.merge(.[Styles.h2])}> {"caretDown"->Utils.str} </h2>
      </div>
      <div className={Tailwind.merge(.[Styles.block])}>
        <Ion.Filled.caretDownCircle />
        <h2 className={Tailwind.merge(.[Styles.h2])}> {"caretDownCircle"->Utils.str} </h2>
      </div>
      <div className={Tailwind.merge(.[Styles.block])}>
        <Ion.Filled.caretForward />
        <h2 className={Tailwind.merge(.[Styles.h2])}> {"caretForward"->Utils.str} </h2>
      </div>
      <div className={Tailwind.merge(.[Styles.block])}>
        <Ion.Filled.caretForwardCircle />
        <h2 className={Tailwind.merge(.[Styles.h2])}> {"caretForwardCircle"->Utils.str} </h2>
      </div>
      <div className={Tailwind.merge(.[Styles.block])}>
        <Ion.Filled.caretUp />
        <h2 className={Tailwind.merge(.[Styles.h2])}> {"caretUp"->Utils.str} </h2>
      </div>
      <div className={Tailwind.merge(.[Styles.block])}>
        <Ion.Filled.caretUpCircle />
        <h2 className={Tailwind.merge(.[Styles.h2])}> {"caretUpCircle"->Utils.str} </h2>
      </div>
      <div className={Tailwind.merge(.[Styles.block])}>
        <Ion.Filled.cart /> <h2 className={Tailwind.merge(.[Styles.h2])}> {"cart"->Utils.str} </h2>
      </div>
      <div className={Tailwind.merge(.[Styles.block])}>
        <Ion.Filled.cash /> <h2 className={Tailwind.merge(.[Styles.h2])}> {"cash"->Utils.str} </h2>
      </div>
      <div className={Tailwind.merge(.[Styles.block])}>
        <Ion.Filled.cellular />
        <h2 className={Tailwind.merge(.[Styles.h2])}> {"cellular"->Utils.str} </h2>
      </div>
      <div className={Tailwind.merge(.[Styles.block])}>
        <Ion.Filled.chatbox />
        <h2 className={Tailwind.merge(.[Styles.h2])}> {"chatbox"->Utils.str} </h2>
      </div>
      <div className={Tailwind.merge(.[Styles.block])}>
        <Ion.Filled.chatboxEllipses />
        <h2 className={Tailwind.merge(.[Styles.h2])}> {"chatboxEllipses"->Utils.str} </h2>
      </div>
      <div className={Tailwind.merge(.[Styles.block])}>
        <Ion.Filled.chatbubble />
        <h2 className={Tailwind.merge(.[Styles.h2])}> {"chatbubble"->Utils.str} </h2>
      </div>
      <div className={Tailwind.merge(.[Styles.block])}>
        <Ion.Filled.chatbubbleEllipses />
        <h2 className={Tailwind.merge(.[Styles.h2])}> {"chatbubbleEllipses"->Utils.str} </h2>
      </div>
      <div className={Tailwind.merge(.[Styles.block])}>
        <Ion.Filled.chatbubbles />
        <h2 className={Tailwind.merge(.[Styles.h2])}> {"chatbubbles"->Utils.str} </h2>
      </div>
      <div className={Tailwind.merge(.[Styles.block])}>
        <Ion.Filled.checkbox />
        <h2 className={Tailwind.merge(.[Styles.h2])}> {"checkbox"->Utils.str} </h2>
      </div>
      <div className={Tailwind.merge(.[Styles.block])}>
        <Ion.Filled.checkmark />
        <h2 className={Tailwind.merge(.[Styles.h2])}> {"checkmark"->Utils.str} </h2>
      </div>
      <div className={Tailwind.merge(.[Styles.block])}>
        <Ion.Filled.checkmarkCircle />
        <h2 className={Tailwind.merge(.[Styles.h2])}> {"checkmarkDone"->Utils.str} </h2>
      </div>
      <div className={Tailwind.merge(.[Styles.block])}>
        <Ion.Filled.checkmarkDone />
        <h2 className={Tailwind.merge(.[Styles.h2])}> {"checkmarkDone"->Utils.str} </h2>
      </div>
      <div className={Tailwind.merge(.[Styles.block])}>
        <Ion.Filled.checkmarkDoneCircle />
        <h2 className={Tailwind.merge(.[Styles.h2])}> {"checkmarkDoneCircle"->Utils.str} </h2>
      </div>
      <div className={Tailwind.merge(.[Styles.block])}>
        <Ion.Filled.chevronBack />
        <h2 className={Tailwind.merge(.[Styles.h2])}> {"chevronBack"->Utils.str} </h2>
      </div>
      // <div className={Tailwind.merge(.[Styles.block])}>
      //   <Ion.Filled.caretForwardCircle />
      //   <h2 className={Tailwind.merge(.[Styles.h2])}> {"caretForwardCircle"->Utils.str} </h2>
      // </div>
      // <div className={Tailwind.merge(.[Styles.block])}>
      //   <Ion.Filled.caretForwardCircle />
      //   <h2 className={Tailwind.merge(.[Styles.h2])}> {"caretForwardCircle"->Utils.str} </h2>
      // </div>
      // <div className={Tailwind.merge(.[Styles.block])}>
      //   <Ion.Filled.caretForwardCircle />
      //   <h2 className={Tailwind.merge(.[Styles.h2])}> {"caretForwardCircle"->Utils.str} </h2>
      // </div>
      // <div className={Tailwind.merge(.[Styles.block])}>
      //   <Ion.Filled.caretForwardCircle />
      //   <h2 className={Tailwind.merge(.[Styles.h2])}> {"caretForwardCircle"->Utils.str} </h2>
      // </div>
      // <div className={Tailwind.merge(.[Styles.block])}>
      //   <Ion.Filled.caretForwardCircle />
      //   <h2 className={Tailwind.merge(.[Styles.h2])}> {"caretForwardCircle"->Utils.str} </h2>
      // </div>
      // <div className={Tailwind.merge(.[Styles.block])}>
      //   <Ion.Filled.caretForwardCircle />
      //   <h2 className={Tailwind.merge(.[Styles.h2])}> {"caretForwardCircle"->Utils.str} </h2>
      // </div>
      // <div className={Tailwind.merge(.[Styles.block])}>
      //   <Ion.Filled.caretForwardCircle />
      //   <h2 className={Tailwind.merge(.[Styles.h2])}> {"caretForwardCircle"->Utils.str} </h2>
      // </div>
      // <div className={Tailwind.merge(.[Styles.block])}>
      //   <Ion.Filled.caretForwardCircle />
      //   <h2 className={Tailwind.merge(.[Styles.h2])}> {"caretForwardCircle"->Utils.str} </h2>
      // </div>
      // <div className={Tailwind.merge(.[Styles.block])}>
      //   <Ion.Filled.caretForwardCircle />
      //   <h2 className={Tailwind.merge(.[Styles.h2])}> {"caretForwardCircle"->Utils.str} </h2>
      // </div>
      // <div className={Tailwind.merge(.[Styles.block])}>
      //   <Ion.Filled.caretForwardCircle />
      //   <h2 className={Tailwind.merge(.[Styles.h2])}> {"caretForwardCircle"->Utils.str} </h2>
      // </div>
      // ten
      // icons
      // <div className={Tailwind.merge(.[Styles.block])}>
      //   <Ion.Filled.caretForwardCircle />
      //   <h2 className={Tailwind.merge(.[Styles.h2])}> {"caretForwardCircle"->Utils.str} </h2>
      // </div>
      // <div className={Tailwind.merge(.[Styles.block])}>
      //   <Ion.Filled.caretForwardCircle />
      //   <h2 className={Tailwind.merge(.[Styles.h2])}> {"caretForwardCircle"->Utils.str} </h2>
      // </div>
      // <div className={Tailwind.merge(.[Styles.block])}>
      //   <Ion.Filled.caretForwardCircle />
      //   <h2 className={Tailwind.merge(.[Styles.h2])}> {"caretForwardCircle"->Utils.str} </h2>
      // </div>
      // <div className={Tailwind.merge(.[Styles.block])}>
      //   <Ion.Filled.caretForwardCircle />
      //   <h2 className={Tailwind.merge(.[Styles.h2])}> {"caretForwardCircle"->Utils.str} </h2>
      // </div>
      // <div className={Tailwind.merge(.[Styles.block])}>
      //   <Ion.Filled.caretForwardCircle />
      //   <h2 className={Tailwind.merge(.[Styles.h2])}> {"caretForwardCircle"->Utils.str} </h2>
      // </div>
      // <div className={Tailwind.merge(.[Styles.block])}>
      //   <Ion.Filled.caretForwardCircle />
      //   <h2 className={Tailwind.merge(.[Styles.h2])}> {"caretForwardCircle"->Utils.str} </h2>
      // </div>
      // <div className={Tailwind.merge(.[Styles.block])}>
      //   <Ion.Filled.caretForwardCircle />
      //   <h2 className={Tailwind.merge(.[Styles.h2])}> {"caretForwardCircle"->Utils.str} </h2>
      // </div>
      // <div className={Tailwind.merge(.[Styles.block])}>
      //   <Ion.Filled.caretForwardCircle />
      //   <h2 className={Tailwind.merge(.[Styles.h2])}> {"caretForwardCircle"->Utils.str} </h2>
      // </div>
      // <div className={Tailwind.merge(.[Styles.block])}>
      //   <Ion.Filled.caretForwardCircle />
      //   <h2 className={Tailwind.merge(.[Styles.h2])}> {"caretForwardCircle"->Utils.str} </h2>
      // </div>
      // <div className={Tailwind.merge(.[Styles.block])}>
      //   <Ion.Filled.caretForwardCircle />
      //   <h2 className={Tailwind.merge(.[Styles.h2])}> {"caretForwardCircle"->Utils.str} </h2>
      // </div>

      // ten icons
    </div>
    <h1 className=Styles.h1> {"Sharp Icons"->Utils.str} </h1>
    <div
      className={Tailwind.merge(.[
        Styles.grid,
        Styles.gridBreakpoints450,
        Styles.gridBreakpoints830,
      ])}>
      <div className={Tailwind.merge(.[Styles.block])}>
        <Ion.Sharp.accessibility />
        <h2 className={Tailwind.merge(.[Styles.h2])}> {"accessibility"->Utils.str} </h2>
      </div>
      <div className={Tailwind.merge(.[Styles.block])}>
        <Ion.Sharp.add /> <h2 className={Tailwind.merge(.[Styles.h2])}> {"add"->Utils.str} </h2>
      </div>
      <div className={Tailwind.merge(.[Styles.block])}>
        <Ion.Sharp.addCircle />
        <h2 className={Tailwind.merge(.[Styles.h2])}> {"addCircle"->Utils.str} </h2>
      </div>
      <div className={Tailwind.merge(.[Styles.block])}>
        <Ion.Sharp.airPlane />
        <h2 className={Tailwind.merge(.[Styles.h2])}> {"airPlane"->Utils.str} </h2>
      </div>
      <div className={Tailwind.merge(.[Styles.block])}>
        <Ion.Sharp.alarm /> <h2 className={Tailwind.merge(.[Styles.h2])}> {"alarm"->Utils.str} </h2>
      </div>
      <div className={Tailwind.merge(.[Styles.block])}>
        <Ion.Sharp.albums />
        <h2 className={Tailwind.merge(.[Styles.h2])}> {"albums"->Utils.str} </h2>
      </div>
      <div className={Tailwind.merge(.[Styles.block])}>
        <Ion.Sharp.alert /> <h2 className={Tailwind.merge(.[Styles.h2])}> {"alart"->Utils.str} </h2>
      </div>
      <div className={Tailwind.merge(.[Styles.block])}>
        <Ion.Sharp.alertCircle />
        <h2 className={Tailwind.merge(.[Styles.h2])}> {"alartCircle"->Utils.str} </h2>
      </div>
      <div className={Tailwind.merge(.[Styles.block])}>
        <Ion.Sharp.americanFootball />
        <h2 className={Tailwind.merge(.[Styles.h2])}> {"americanFootball"->Utils.str} </h2>
      </div>
      <div className={Tailwind.merge(.[Styles.block])}>
        <Ion.Sharp.analyticsSharp />
        <h2 className={Tailwind.merge(.[Styles.h2])}> {"analyticsSharp"->Utils.str} </h2>
      </div>
      <div className={Tailwind.merge(.[Styles.block])}>
        <Ion.Sharp.apetureSharp />
        <h2 className={Tailwind.merge(.[Styles.h2])}> {"apetureSharp"->Utils.str} </h2>
      </div>
      <div className={Tailwind.merge(.[Styles.block])}>
        <Ion.Sharp.appsSharp />
        <h2 className={Tailwind.merge(.[Styles.h2])}> {"appsSharp"->Utils.str} </h2>
      </div>
      <div className={Tailwind.merge(.[Styles.block])}>
        <Ion.Sharp.archiveSharp />
        <h2 className={Tailwind.merge(.[Styles.h2])}> {"archiveSharp"->Utils.str} </h2>
      </div>
      <div className={Tailwind.merge(.[Styles.block])}>
        <Ion.Sharp.arrowBackSharp />
        <h2 className={Tailwind.merge(.[Styles.h2])}> {"arrowBackSharp"->Utils.str} </h2>
      </div>
      <div className={Tailwind.merge(.[Styles.block])}>
        <Ion.Sharp.arrowBackCircleSharp />
        <h2 className={Tailwind.merge(.[Styles.h2])}> {"arrowBackCircleSharp"->Utils.str} </h2>
      </div>
      <div className={Tailwind.merge(.[Styles.block])}>
        <Ion.Sharp.arrowDownSharp />
        <h2 className={Tailwind.merge(.[Styles.h2])}> {"arrowDownSharp"->Utils.str} </h2>
      </div>
      <div className={Tailwind.merge(.[Styles.block])}>
        <Ion.Sharp.arrowDownCircleSharp />
        <h2 className={Tailwind.merge(.[Styles.h2])}> {"arrowDownCircleSharp"->Utils.str} </h2>
      </div>
      <div className={Tailwind.merge(.[Styles.block])}>
        <Ion.Sharp.arrowForwardSharp />
        <h2 className={Tailwind.merge(.[Styles.h2])}> {"arrowForwardSharp"->Utils.str} </h2>
      </div>
      <div className={Tailwind.merge(.[Styles.block])}>
        <Ion.Sharp.arrowForwardCircleSharp />
        <h2 className={Tailwind.merge(.[Styles.h2])}> {"arrowForwardCircleSharp"->Utils.str} </h2>
      </div>
      <div className={Tailwind.merge(.[Styles.block])}>
        <Ion.Sharp.arrowRedoSharp />
        <h2 className={Tailwind.merge(.[Styles.h2])}> {"arrowRedoSharp"->Utils.str} </h2>
      </div>
      <div className={Tailwind.merge(.[Styles.block])}>
        <Ion.Sharp.arrowRedoCircleSharp />
        <h2 className={Tailwind.merge(.[Styles.h2])}> {"arrowRedoCircleSharp"->Utils.str} </h2>
      </div>
      <div className={Tailwind.merge(.[Styles.block])}>
        <Ion.Sharp.arrowUndoSharp />
        <h2 className={Tailwind.merge(.[Styles.h2])}> {"arrowUndoSharp"->Utils.str} </h2>
      </div>
      <div className={Tailwind.merge(.[Styles.block])}>
        <Ion.Sharp.arrowUndoCircleSharp />
        <h2 className={Tailwind.merge(.[Styles.h2])}> {"arrowUndoCircleSharp"->Utils.str} </h2>
      </div>
      <div className={Tailwind.merge(.[Styles.block])}>
        <Ion.Sharp.arrowUpSharp />
        <h2 className={Tailwind.merge(.[Styles.h2])}> {"arrowUpSharp"->Utils.str} </h2>
      </div>
      <div className={Tailwind.merge(.[Styles.block])}>
        <Ion.Sharp.arrowUpCircleSharp />
        <h2 className={Tailwind.merge(.[Styles.h2])}> {"arrowUpCircleSharp"->Utils.str} </h2>
      </div>
      <div className={Tailwind.merge(.[Styles.block])}>
        <Ion.Sharp.atSharp />
        <h2 className={Tailwind.merge(.[Styles.h2])}> {"atSharp"->Utils.str} </h2>
      </div>
      <div className={Tailwind.merge(.[Styles.block])}>
        <Ion.Sharp.atCircleSharp />
        <h2 className={Tailwind.merge(.[Styles.h2])}> {"atCircleSharp"->Utils.str} </h2>
      </div>
      <div className={Tailwind.merge(.[Styles.block])}>
        <Ion.Sharp.attachSharp />
        <h2 className={Tailwind.merge(.[Styles.h2])}> {"attachSharp"->Utils.str} </h2>
      </div>
      <div className={Tailwind.merge(.[Styles.block])}>
        <Ion.Sharp.backspaceSharp />
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
        <Ion.Logos.alipay />
        <h2 className={Tailwind.merge(.[Styles.h2])}> {"alipay"->Utils.str} </h2>
      </div>
      <div className={Tailwind.merge(.[Styles.block])}>
        <Ion.Logos.amazon />
        <h2 className={Tailwind.merge(.[Styles.h2])}> {"amazon"->Utils.str} </h2>
      </div>
      <div className={Tailwind.merge(.[Styles.block])}>
        <Ion.Logos.amplify />
        <h2 className={Tailwind.merge(.[Styles.h2])}> {"amplify"->Utils.str} </h2>
      </div>
      <div className={Tailwind.merge(.[Styles.block])}>
        <Ion.Logos.android />
        <h2 className={Tailwind.merge(.[Styles.h2])}> {"android"->Utils.str} </h2>
      </div>
      <div className={Tailwind.merge(.[Styles.block])}>
        <Ion.Logos.angular />
        <h2 className={Tailwind.merge(.[Styles.h2])}> {"angular"->Utils.str} </h2>
      </div>
      <div className={Tailwind.merge(.[Styles.block])}>
        <Ion.Logos.apple /> <h2 className={Tailwind.merge(.[Styles.h2])}> {"apple"->Utils.str} </h2>
      </div>
      <div className={Tailwind.merge(.[Styles.block])}>
        <Ion.Logos.appleAppStore />
        <h2 className={Tailwind.merge(.[Styles.h2])}> {"appleAppStore"->Utils.str} </h2>
      </div>
      <div className={Tailwind.merge(.[Styles.block])}>
        <Ion.Logos.appleAr />
        <h2 className={Tailwind.merge(.[Styles.h2])}> {"appleAr"->Utils.str} </h2>
      </div>
      <div className={Tailwind.merge(.[Styles.block])}>
        <Ion.Logos.behance />
        <h2 className={Tailwind.merge(.[Styles.h2])}> {"behance"->Utils.str} </h2>
      </div>
      <div className={Tailwind.merge(.[Styles.block])}>
        <Ion.Logos.bitBucket />
        <h2 className={Tailwind.merge(.[Styles.h2])}> {"bitBucket"->Utils.str} </h2>
      </div>
      <div className={Tailwind.merge(.[Styles.block])}>
        <Ion.Logos.bitCoin />
        <h2 className={Tailwind.merge(.[Styles.h2])}> {"bitCoin"->Utils.str} </h2>
      </div>
      <div className={Tailwind.merge(.[Styles.block])}>
        <Ion.Logos.buffer />
        <h2 className={Tailwind.merge(.[Styles.h2])}> {"buffer"->Utils.str} </h2>
      </div>
      <div className={Tailwind.merge(.[Styles.block])}>
        <Ion.Logos.capacitor />
        <h2 className={Tailwind.merge(.[Styles.h2])}> {"capacitor"->Utils.str} </h2>
      </div>
      <div className={Tailwind.merge(.[Styles.block])}>
        <Ion.Logos.chrome />
        <h2 className={Tailwind.merge(.[Styles.h2])}> {"chrome"->Utils.str} </h2>
      </div>
      <div className={Tailwind.merge(.[Styles.block])}>
        <Ion.Logos.closedCaptioning />
        <h2 className={Tailwind.merge(.[Styles.h2])}> {"closedCaptioning"->Utils.str} </h2>
      </div>
      <div className={Tailwind.merge(.[Styles.block])}>
        <Ion.Logos.codepen />
        <h2 className={Tailwind.merge(.[Styles.h2])}> {"codepen"->Utils.str} </h2>
      </div>
      <div className={Tailwind.merge(.[Styles.block])}>
        <Ion.Logos.css3 /> <h2 className={Tailwind.merge(.[Styles.h2])}> {"css3"->Utils.str} </h2>
      </div>
      <div className={Tailwind.merge(.[Styles.block])}>
        <Ion.Logos.designerNews />
        <h2 className={Tailwind.merge(.[Styles.h2])}> {"designerNews"->Utils.str} </h2>
      </div>
      <div className={Tailwind.merge(.[Styles.block])}>
        <Ion.Logos.devianStart />
        <h2 className={Tailwind.merge(.[Styles.h2])}> {"devianStart"->Utils.str} </h2>
      </div>
      <div className={Tailwind.merge(.[Styles.block])}>
        <Ion.Logos.discord />
        <h2 className={Tailwind.merge(.[Styles.h2])}> {"discord"->Utils.str} </h2>
      </div>
      <div className={Tailwind.merge(.[Styles.block])}>
        <Ion.Logos.docker />
        <h2 className={Tailwind.merge(.[Styles.h2])}> {"docker"->Utils.str} </h2>
      </div>
      <div className={Tailwind.merge(.[Styles.block])}>
        <Ion.Logos.dribbble />
        <h2 className={Tailwind.merge(.[Styles.h2])}> {"dribbble"->Utils.str} </h2>
      </div>
      <div className={Tailwind.merge(.[Styles.block])}>
        <Ion.Logos.dropBox />
        <h2 className={Tailwind.merge(.[Styles.h2])}> {"dropBox"->Utils.str} </h2>
      </div>
      <div className={Tailwind.merge(.[Styles.block])}>
        <Ion.Logos.edge /> <h2 className={Tailwind.merge(.[Styles.h2])}> {"edge"->Utils.str} </h2>
      </div>
      <div className={Tailwind.merge(.[Styles.block])}>
        <Ion.Logos.electron />
        <h2 className={Tailwind.merge(.[Styles.h2])}> {"electron"->Utils.str} </h2>
      </div>
      <div className={Tailwind.merge(.[Styles.block])}>
        <Ion.Logos.euro /> <h2 className={Tailwind.merge(.[Styles.h2])}> {"euro"->Utils.str} </h2>
      </div>
      <div className={Tailwind.merge(.[Styles.block])}>
        <Ion.Logos.facebook />
        <h2 className={Tailwind.merge(.[Styles.h2])}> {"facebook"->Utils.str} </h2>
      </div>
      <div className={Tailwind.merge(.[Styles.block])}>
        <Ion.Logos.figma /> <h2 className={Tailwind.merge(.[Styles.h2])}> {"figma"->Utils.str} </h2>
      </div>
      <div className={Tailwind.merge(.[Styles.block])}>
        <Ion.Logos.fireBase />
        <h2 className={Tailwind.merge(.[Styles.h2])}> {"fireBase"->Utils.str} </h2>
      </div>
      <div className={Tailwind.merge(.[Styles.block])}>
        <Ion.Logos.fireFox />
        <h2 className={Tailwind.merge(.[Styles.h2])}> {"fireFox"->Utils.str} </h2>
      </div>
      <div className={Tailwind.merge(.[Styles.block])}>
        <Ion.Logos.flickr />
        <h2 className={Tailwind.merge(.[Styles.h2])}> {"flickr"->Utils.str} </h2>
      </div>
      <div className={Tailwind.merge(.[Styles.block])}>
        <Ion.Logos.fourSquare />
        <h2 className={Tailwind.merge(.[Styles.h2])}> {"fourSquare"->Utils.str} </h2>
      </div>
      <div className={Tailwind.merge(.[Styles.block])}>
        <Ion.Logos.github />
        <h2 className={Tailwind.merge(.[Styles.h2])}> {"github"->Utils.str} </h2>
      </div>
      <div className={Tailwind.merge(.[Styles.block])}>
        <Ion.Logos.gitlab />
        <h2 className={Tailwind.merge(.[Styles.h2])}> {"gitlab"->Utils.str} </h2>
      </div>
      <div className={Tailwind.merge(.[Styles.block])}>
        <Ion.Logos.google />
        <h2 className={Tailwind.merge(.[Styles.h2])}> {"google"->Utils.str} </h2>
      </div>
      <div className={Tailwind.merge(.[Styles.block])}>
        <Ion.Logos.googlePlayStore />
        <h2 className={Tailwind.merge(.[Styles.h2])}> {"googlePlayStore"->Utils.str} </h2>
      </div>
      <div className={Tailwind.merge(.[Styles.block])}>
        <Ion.Logos.hackerNews />
        <h2 className={Tailwind.merge(.[Styles.h2])}> {"hackerNews"->Utils.str} </h2>
      </div>
      <div className={Tailwind.merge(.[Styles.block])}>
        <Ion.Logos.html5 /> <h2 className={Tailwind.merge(.[Styles.h2])}> {"html5"->Utils.str} </h2>
      </div>
      <div className={Tailwind.merge(.[Styles.block])}>
        <Ion.Logos.instagram />
        <h2 className={Tailwind.merge(.[Styles.h2])}> {"instagram"->Utils.str} </h2>
      </div>
      <div className={Tailwind.merge(.[Styles.block])}>
        <Ion.Logos.ionic /> <h2 className={Tailwind.merge(.[Styles.h2])}> {"ionic"->Utils.str} </h2>
      </div>
      <div className={Tailwind.merge(.[Styles.block])}>
        <Ion.Logos.ionitron />
        <h2 className={Tailwind.merge(.[Styles.h2])}> {"ionitron"->Utils.str} </h2>
      </div>
      <div className={Tailwind.merge(.[Styles.block])}>
        <Ion.Logos.javascript />
        <h2 className={Tailwind.merge(.[Styles.h2])}> {"javascript"->Utils.str} </h2>
      </div>
      <div className={Tailwind.merge(.[Styles.block])}>
        <Ion.Logos.laravel />
        <h2 className={Tailwind.merge(.[Styles.h2])}> {"laravel"->Utils.str} </h2>
      </div>
      <div className={Tailwind.merge(.[Styles.block])}>
        <Ion.Logos.linkedin />
        <h2 className={Tailwind.merge(.[Styles.h2])}> {"linkedin"->Utils.str} </h2>
      </div>
      <div className={Tailwind.merge(.[Styles.block])}>
        <Ion.Logos.markDown />
        <h2 className={Tailwind.merge(.[Styles.h2])}> {"markDown"->Utils.str} </h2>
      </div>
      <div className={Tailwind.merge(.[Styles.block])}>
        <Ion.Logos.mastodon />
        <h2 className={Tailwind.merge(.[Styles.h2])}> {"mastodon"->Utils.str} </h2>
      </div>
      <div className={Tailwind.merge(.[Styles.block])}>
        <Ion.Logos.medium />
        <h2 className={Tailwind.merge(.[Styles.h2])}> {"medium"->Utils.str} </h2>
      </div>
      <div className={Tailwind.merge(.[Styles.block])}>
        <Ion.Logos.microsoft />
        <h2 className={Tailwind.merge(.[Styles.h2])}> {"microsoft"->Utils.str} </h2>
      </div>
      <div className={Tailwind.merge(.[Styles.block])}>
        <Ion.Logos.noSmoking />
        <h2 className={Tailwind.merge(.[Styles.h2])}> {"noSmoking"->Utils.str} </h2>
      </div>
      <div className={Tailwind.merge(.[Styles.block])}>
        <Ion.Logos.nodejs />
        <h2 className={Tailwind.merge(.[Styles.h2])}> {"nodejs"->Utils.str} </h2>
      </div>
      <div className={Tailwind.merge(.[Styles.block])}>
        <Ion.Logos.npm /> <h2 className={Tailwind.merge(.[Styles.h2])}> {"npm"->Utils.str} </h2>
      </div>
      <div className={Tailwind.merge(.[Styles.block])}>
        <Ion.Logos.octocat />
        <h2 className={Tailwind.merge(.[Styles.h2])}> {"octocat"->Utils.str} </h2>
      </div>
      <div className={Tailwind.merge(.[Styles.block])}>
        <Ion.Logos.paypal />
        <h2 className={Tailwind.merge(.[Styles.h2])}> {"paypal"->Utils.str} </h2>
      </div>
      <div className={Tailwind.merge(.[Styles.block])}>
        <Ion.Logos.pinterest />
        <h2 className={Tailwind.merge(.[Styles.h2])}> {"pinterest"->Utils.str} </h2>
      </div>
      <div className={Tailwind.merge(.[Styles.block])}>
        <Ion.Logos.playstation />
        <h2 className={Tailwind.merge(.[Styles.h2])}> {"playstation"->Utils.str} </h2>
      </div>
      <div className={Tailwind.merge(.[Styles.block])}>
        <Ion.Logos.pwa /> <h2 className={Tailwind.merge(.[Styles.h2])}> {"pwa"->Utils.str} </h2>
      </div>
      <div className={Tailwind.merge(.[Styles.block])}>
        <Ion.Logos.python />
        <h2 className={Tailwind.merge(.[Styles.h2])}> {"python"->Utils.str} </h2>
      </div>
      <div className={Tailwind.merge(.[Styles.block])}>
        <Ion.Logos.react /> <h2 className={Tailwind.merge(.[Styles.h2])}> {"react"->Utils.str} </h2>
      </div>
      <div className={Tailwind.merge(.[Styles.block])}>
        <Ion.Logos.reddit />
        <h2 className={Tailwind.merge(.[Styles.h2])}> {"reddit"->Utils.str} </h2>
      </div>
      <div className={Tailwind.merge(.[Styles.block])}>
        <Ion.Logos.rrs /> <h2 className={Tailwind.merge(.[Styles.h2])}> {"rrs"->Utils.str} </h2>
      </div>
      <div className={Tailwind.merge(.[Styles.block])}>
        <Ion.Logos.sass /> <h2 className={Tailwind.merge(.[Styles.h2])}> {"sass"->Utils.str} </h2>
      </div>
      <div className={Tailwind.merge(.[Styles.block])}>
        <Ion.Logos.skype /> <h2 className={Tailwind.merge(.[Styles.h2])}> {"skype"->Utils.str} </h2>
      </div>
      <div className={Tailwind.merge(.[Styles.block])}>
        <Ion.Logos.slack /> <h2 className={Tailwind.merge(.[Styles.h2])}> {"slack"->Utils.str} </h2>
      </div>
      <div className={Tailwind.merge(.[Styles.block])}>
        <Ion.Logos.snapChat />
        <h2 className={Tailwind.merge(.[Styles.h2])}> {"snapChat"->Utils.str} </h2>
      </div>
      <div className={Tailwind.merge(.[Styles.block])}>
        <Ion.Logos.soundCloud />
        <h2 className={Tailwind.merge(.[Styles.h2])}> {"soundCloud"->Utils.str} </h2>
      </div>
      <div className={Tailwind.merge(.[Styles.block])}>
        <Ion.Logos.stackOverFlow />
        <h2 className={Tailwind.merge(.[Styles.h2])}> {"stackOverFlow"->Utils.str} </h2>
      </div>
      <div className={Tailwind.merge(.[Styles.block])}>
        <Ion.Logos.steam /> <h2 className={Tailwind.merge(.[Styles.h2])}> {"steam"->Utils.str} </h2>
      </div>
      <div className={Tailwind.merge(.[Styles.block])}>
        <Ion.Logos.stencil />
        <h2 className={Tailwind.merge(.[Styles.h2])}> {"stencil"->Utils.str} </h2>
      </div>
      <div className={Tailwind.merge(.[Styles.block])}>
        <Ion.Logos.tableau />
        <h2 className={Tailwind.merge(.[Styles.h2])}> {"tableau"->Utils.str} </h2>
      </div>
      <div className={Tailwind.merge(.[Styles.block])}>
        <Ion.Logos.tikTok />
        <h2 className={Tailwind.merge(.[Styles.h2])}> {"tikTok"->Utils.str} </h2>
      </div>
      <div className={Tailwind.merge(.[Styles.block])}>
        <Ion.Logos.tumblr />
        <h2 className={Tailwind.merge(.[Styles.h2])}> {"tumblr"->Utils.str} </h2>
      </div>
      <div className={Tailwind.merge(.[Styles.block])}>
        <Ion.Logos.tux /> <h2 className={Tailwind.merge(.[Styles.h2])}> {"tux"->Utils.str} </h2>
      </div>
      <div className={Tailwind.merge(.[Styles.block])}>
        <Ion.Logos.twitch />
        <h2 className={Tailwind.merge(.[Styles.h2])}> {"twitch"->Utils.str} </h2>
      </div>
      <div className={Tailwind.merge(.[Styles.block])}>
        <Ion.Logos.twitter />
        <h2 className={Tailwind.merge(.[Styles.h2])}> {"twitter"->Utils.str} </h2>
      </div>
      <div className={Tailwind.merge(.[Styles.block])}>
        <Ion.Logos.usd /> <h2 className={Tailwind.merge(.[Styles.h2])}> {"usd"->Utils.str} </h2>
      </div>
      <div className={Tailwind.merge(.[Styles.block])}>
        <Ion.Logos.venmo /> <h2 className={Tailwind.merge(.[Styles.h2])}> {"venmo"->Utils.str} </h2>
      </div>
      <div className={Tailwind.merge(.[Styles.block])}>
        <Ion.Logos.vercel />
        <h2 className={Tailwind.merge(.[Styles.h2])}> {"vercel"->Utils.str} </h2>
      </div>
      <div className={Tailwind.merge(.[Styles.block])}>
        <Ion.Logos.vimeo /> <h2 className={Tailwind.merge(.[Styles.h2])}> {"vimeo"->Utils.str} </h2>
      </div>
      <div className={Tailwind.merge(.[Styles.block])}>
        <Ion.Logos.vk /> <h2 className={Tailwind.merge(.[Styles.h2])}> {"vk"->Utils.str} </h2>
      </div>
      <div className={Tailwind.merge(.[Styles.block])}>
        <Ion.Logos.vue /> <h2 className={Tailwind.merge(.[Styles.h2])}> {"vue"->Utils.str} </h2>
      </div>
      <div className={Tailwind.merge(.[Styles.block])}>
        <Ion.Logos.webComponent />
        <h2 className={Tailwind.merge(.[Styles.h2])}> {"webComponent"->Utils.str} </h2>
      </div>
      <div className={Tailwind.merge(.[Styles.block])}>
        <Ion.Logos.weChat />
        <h2 className={Tailwind.merge(.[Styles.h2])}> {"weChat"->Utils.str} </h2>
      </div>
      <div className={Tailwind.merge(.[Styles.block])}>
        <Ion.Logos.whatsapp />
        <h2 className={Tailwind.merge(.[Styles.h2])}> {"whatsapp"->Utils.str} </h2>
      </div>
      <div className={Tailwind.merge(.[Styles.block])}>
        <Ion.Logos.windows />
        <h2 className={Tailwind.merge(.[Styles.h2])}> {"windows"->Utils.str} </h2>
      </div>
      <div className={Tailwind.merge(.[Styles.block])}>
        <Ion.Logos.wordpress />
        <h2 className={Tailwind.merge(.[Styles.h2])}> {"wordpress"->Utils.str} </h2>
      </div>
      <div className={Tailwind.merge(.[Styles.block])}>
        <Ion.Logos.xbox /> <h2 className={Tailwind.merge(.[Styles.h2])}> {"xbox"->Utils.str} </h2>
      </div>
      <div className={Tailwind.merge(.[Styles.block])}>
        <Ion.Logos.xing /> <h2 className={Tailwind.merge(.[Styles.h2])}> {"xing"->Utils.str} </h2>
      </div>
      <div className={Tailwind.merge(.[Styles.block])}>
        <Ion.Logos.yahoo /> <h2 className={Tailwind.merge(.[Styles.h2])}> {"yahoo"->Utils.str} </h2>
      </div>
      <div className={Tailwind.merge(.[Styles.block])}>
        <Ion.Logos.yen /> <h2 className={Tailwind.merge(.[Styles.h2])}> {"yen"->Utils.str} </h2>
      </div>
      <div className={Tailwind.merge(.[Styles.block])}>
        <Ion.Logos.youtube />
        <h2 className={Tailwind.merge(.[Styles.h2])}> {"youtube"->Utils.str} </h2>
      </div>
    </div>
  </div>
}
