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
      <div className={Tailwind.merge(.[Styles.block])}>
        <IonIcons.Outline.mail />
        <h2 className={Tailwind.merge(.[Styles.h2])}> {"mail"->Utils.str} </h2>
      </div>
      <div className={Tailwind.merge(.[Styles.block])}>
        <IonIcons.Outline.mailOpen />
        <h2 className={Tailwind.merge(.[Styles.h2])}> {"mailOpen"->Utils.str} </h2>
      </div>
      <div className={Tailwind.merge(.[Styles.block])}>
        <IonIcons.Outline.mailUnread />
        <h2 className={Tailwind.merge(.[Styles.h2])}> {"mailUnread"->Utils.str} </h2>
      </div>
      <div className={Tailwind.merge(.[Styles.block])}>
        <IonIcons.Outline.male />
        <h2 className={Tailwind.merge(.[Styles.h2])}> {"male"->Utils.str} </h2>
      </div>
      <div className={Tailwind.merge(.[Styles.block])}>
        <IonIcons.Outline.maleFemale />
        <h2 className={Tailwind.merge(.[Styles.h2])}> {"maleFemale"->Utils.str} </h2>
      </div>
      <div className={Tailwind.merge(.[Styles.block])}>
        <IonIcons.Outline.man />
        <h2 className={Tailwind.merge(.[Styles.h2])}> {"man"->Utils.str} </h2>
      </div>
      <div className={Tailwind.merge(.[Styles.block])}>
        <IonIcons.Outline.map />
        <h2 className={Tailwind.merge(.[Styles.h2])}> {"map"->Utils.str} </h2>
      </div>
      <div className={Tailwind.merge(.[Styles.block])}>
        <IonIcons.Outline.medal />
        <h2 className={Tailwind.merge(.[Styles.h2])}> {"medal"->Utils.str} </h2>
      </div>
      <div className={Tailwind.merge(.[Styles.block])}>
        <IonIcons.Outline.medical />
        <h2 className={Tailwind.merge(.[Styles.h2])}> {"medical"->Utils.str} </h2>
      </div>
      <div className={Tailwind.merge(.[Styles.block])}>
        <IonIcons.Outline.medkit />
        <h2 className={Tailwind.merge(.[Styles.h2])}> {"medkit"->Utils.str} </h2>
      </div>
      <div className={Tailwind.merge(.[Styles.block])}>
        <IonIcons.Outline.megaphone />
        <h2 className={Tailwind.merge(.[Styles.h2])}> {"megaphone"->Utils.str} </h2>
      </div>
      <div className={Tailwind.merge(.[Styles.block])}>
        <IonIcons.Outline.menu />
        <h2 className={Tailwind.merge(.[Styles.h2])}> {"menu"->Utils.str} </h2>
      </div>
      <div className={Tailwind.merge(.[Styles.block])}>
        <IonIcons.Outline.mic />
        <h2 className={Tailwind.merge(.[Styles.h2])}> {"mic"->Utils.str} </h2>
      </div>
      <div className={Tailwind.merge(.[Styles.block])}>
        <IonIcons.Outline.micCircle />
        <h2 className={Tailwind.merge(.[Styles.h2])}> {"micCircle"->Utils.str} </h2>
      </div>
      <div className={Tailwind.merge(.[Styles.block])}>
        <IonIcons.Outline.micOff />
        <h2 className={Tailwind.merge(.[Styles.h2])}> {"micOff"->Utils.str} </h2>
      </div>
      <div className={Tailwind.merge(.[Styles.block])}>
        <IonIcons.Outline.micOffCircle />
        <h2 className={Tailwind.merge(.[Styles.h2])}> {"micOffCircle"->Utils.str} </h2>
      </div>
      <div className={Tailwind.merge(.[Styles.block])}>
        <IonIcons.Outline.moon />
        <h2 className={Tailwind.merge(.[Styles.h2])}> {"moon"->Utils.str} </h2>
      </div>
      <div className={Tailwind.merge(.[Styles.block])}>
        <IonIcons.Outline.move />
        <h2 className={Tailwind.merge(.[Styles.h2])}> {"move"->Utils.str} </h2>
      </div>
      <div className={Tailwind.merge(.[Styles.block])}>
        <IonIcons.Outline.musicalNote />
        <h2 className={Tailwind.merge(.[Styles.h2])}> {"musicalNote"->Utils.str} </h2>
      </div>
      <div className={Tailwind.merge(.[Styles.block])}>
        <IonIcons.Outline.musicalNotes />
        <h2 className={Tailwind.merge(.[Styles.h2])}> {"musicalNotes"->Utils.str} </h2>
      </div>
      <div className={Tailwind.merge(.[Styles.block])}>
        <IonIcons.Outline.navigate />
        <h2 className={Tailwind.merge(.[Styles.h2])}> {"navigate"->Utils.str} </h2>
      </div>
      <div className={Tailwind.merge(.[Styles.block])}>
        <IonIcons.Outline.navigateCircle />
        <h2 className={Tailwind.merge(.[Styles.h2])}> {"navigateCircle"->Utils.str} </h2>
      </div>
      <div className={Tailwind.merge(.[Styles.block])}>
        <IonIcons.Outline.newspaper />
        <h2 className={Tailwind.merge(.[Styles.h2])}> {"newspaper"->Utils.str} </h2>
      </div>
      <div className={Tailwind.merge(.[Styles.block])}>
        <IonIcons.Outline.notifications />
        <h2 className={Tailwind.merge(.[Styles.h2])}> {"notifications"->Utils.str} </h2>
      </div>
      <div className={Tailwind.merge(.[Styles.block])}>
        <IonIcons.Outline.notificationsCircle />
        <h2 className={Tailwind.merge(.[Styles.h2])}> {"notificationsCircle"->Utils.str} </h2>
      </div>
      <div className={Tailwind.merge(.[Styles.block])}>
        <IonIcons.Outline.notificationsOff />
        <h2 className={Tailwind.merge(.[Styles.h2])}> {"notificationsOff"->Utils.str} </h2>
      </div>
      <div className={Tailwind.merge(.[Styles.block])}>
        <IonIcons.Outline.notificationsOffCircle />
        <h2 className={Tailwind.merge(.[Styles.h2])}> {"notificationsOffCircle"->Utils.str} </h2>
      </div>
      <div className={Tailwind.merge(.[Styles.block])}>
        <IonIcons.Outline.nuclear />
        <h2 className={Tailwind.merge(.[Styles.h2])}> {"nuclear"->Utils.str} </h2>
      </div>
      <div className={Tailwind.merge(.[Styles.block])}>
        <IonIcons.Outline.nutrition />
        <h2 className={Tailwind.merge(.[Styles.h2])}> {"nutrition"->Utils.str} </h2>
      </div>
      <div className={Tailwind.merge(.[Styles.block])}>
        <IonIcons.Outline.openLink />
        <h2 className={Tailwind.merge(.[Styles.h2])}> {"openLink"->Utils.str} </h2>
      </div>
      <div className={Tailwind.merge(.[Styles.block])}>
        <IonIcons.Outline.options />
        <h2 className={Tailwind.merge(.[Styles.h2])}> {"options"->Utils.str} </h2>
      </div>
      <div className={Tailwind.merge(.[Styles.block])}>
        <IonIcons.Outline.paperPlane />
        <h2 className={Tailwind.merge(.[Styles.h2])}> {"paperPlane"->Utils.str} </h2>
      </div>
      <div className={Tailwind.merge(.[Styles.block])}>
        <IonIcons.Outline.partlySunny />
        <h2 className={Tailwind.merge(.[Styles.h2])}> {"partlySunny"->Utils.str} </h2>
      </div>
      <div className={Tailwind.merge(.[Styles.block])}>
        <IonIcons.Outline.pause />
        <h2 className={Tailwind.merge(.[Styles.h2])}> {"pause"->Utils.str} </h2>
      </div>
      <div className={Tailwind.merge(.[Styles.block])}>
        <IonIcons.Outline.pauseCircle />
        <h2 className={Tailwind.merge(.[Styles.h2])}> {"pauseCircle"->Utils.str} </h2>
      </div>
      <div className={Tailwind.merge(.[Styles.block])}>
        <IonIcons.Outline.paw />
        <h2 className={Tailwind.merge(.[Styles.h2])}> {"paw"->Utils.str} </h2>
      </div>
      <div className={Tailwind.merge(.[Styles.block])}>
        <IonIcons.Outline.pencil />
        <h2 className={Tailwind.merge(.[Styles.h2])}> {"pencil"->Utils.str} </h2>
      </div>
      <div className={Tailwind.merge(.[Styles.block])}>
        <IonIcons.Outline.people />
        <h2 className={Tailwind.merge(.[Styles.h2])}> {"people"->Utils.str} </h2>
      </div>
      <div className={Tailwind.merge(.[Styles.block])}>
        <IonIcons.Outline.peopleCircle />
        <h2 className={Tailwind.merge(.[Styles.h2])}> {"peopleCircle"->Utils.str} </h2>
      </div>
      <div className={Tailwind.merge(.[Styles.block])}>
        <IonIcons.Outline.person />
        <h2 className={Tailwind.merge(.[Styles.h2])}> {"person"->Utils.str} </h2>
      </div>
      <div className={Tailwind.merge(.[Styles.block])}>
        <IonIcons.Outline.personAdd />
        <h2 className={Tailwind.merge(.[Styles.h2])}> {"personAdd"->Utils.str} </h2>
      </div>
      <div className={Tailwind.merge(.[Styles.block])}>
        <IonIcons.Outline.personCircle />
        <h2 className={Tailwind.merge(.[Styles.h2])}> {"personCircle"->Utils.str} </h2>
      </div>
      <div className={Tailwind.merge(.[Styles.block])}>
        <IonIcons.Outline.personRemove />
        <h2 className={Tailwind.merge(.[Styles.h2])}> {"personRemove"->Utils.str} </h2>
      </div>
      <div className={Tailwind.merge(.[Styles.block])}>
        <IonIcons.Outline.phoneLandscape />
        <h2 className={Tailwind.merge(.[Styles.h2])}> {"phoneLandscape"->Utils.str} </h2>
      </div>
      <div className={Tailwind.merge(.[Styles.block])}>
        <IonIcons.Outline.phonePortrait />
        <h2 className={Tailwind.merge(.[Styles.h2])}> {"phonePortrait"->Utils.str} </h2>
      </div>
      <div className={Tailwind.merge(.[Styles.block])}>
        <IonIcons.Outline.pieChart />
        <h2 className={Tailwind.merge(.[Styles.h2])}> {"pieChart"->Utils.str} </h2>
      </div>
      <div className={Tailwind.merge(.[Styles.block])}>
        <IonIcons.Outline.pin />
        <h2 className={Tailwind.merge(.[Styles.h2])}> {"pin"->Utils.str} </h2>
      </div>
      <div className={Tailwind.merge(.[Styles.block])}>
        <IonIcons.Outline.pint />
        <h2 className={Tailwind.merge(.[Styles.h2])}> {"pint"->Utils.str} </h2>
      </div>
      <div className={Tailwind.merge(.[Styles.block])}>
        <IonIcons.Outline.pizza />
        <h2 className={Tailwind.merge(.[Styles.h2])}> {"pizza"->Utils.str} </h2>
      </div>
      <div className={Tailwind.merge(.[Styles.block])}>
        <IonIcons.Outline.planet />
        <h2 className={Tailwind.merge(.[Styles.h2])}> {"planet"->Utils.str} </h2>
      </div>
      <div className={Tailwind.merge(.[Styles.block])}>
        <IonIcons.Outline.play />
        <h2 className={Tailwind.merge(.[Styles.h2])}> {"play"->Utils.str} </h2>
      </div>
      <div className={Tailwind.merge(.[Styles.block])}>
        <IonIcons.Outline.playBack />
        <h2 className={Tailwind.merge(.[Styles.h2])}> {"playBack"->Utils.str} </h2>
      </div>
      <div className={Tailwind.merge(.[Styles.block])}>
        <IonIcons.Outline.playBackCircle />
        <h2 className={Tailwind.merge(.[Styles.h2])}> {"playBackCircle"->Utils.str} </h2>
      </div>
      <div className={Tailwind.merge(.[Styles.block])}>
        <IonIcons.Outline.playCircle />
        <h2 className={Tailwind.merge(.[Styles.h2])}> {"playCircle"->Utils.str} </h2>
      </div>
      <div className={Tailwind.merge(.[Styles.block])}>
        <IonIcons.Outline.playForward />
        <h2 className={Tailwind.merge(.[Styles.h2])}> {"playForward"->Utils.str} </h2>
      </div>
      <div className={Tailwind.merge(.[Styles.block])}>
        <IonIcons.Outline.playForwardCircle />
        <h2 className={Tailwind.merge(.[Styles.h2])}> {"playForwardCircle"->Utils.str} </h2>
      </div>
      <div className={Tailwind.merge(.[Styles.block])}>
        <IonIcons.Outline.playSkipBack />
        <h2 className={Tailwind.merge(.[Styles.h2])}> {"playSkipBack"->Utils.str} </h2>
      </div>
      <div className={Tailwind.merge(.[Styles.block])}>
        <IonIcons.Outline.playSkipBackCircle />
        <h2 className={Tailwind.merge(.[Styles.h2])}> {"playSkipBackCircle"->Utils.str} </h2>
      </div>
      <div className={Tailwind.merge(.[Styles.block])}>
        <IonIcons.Outline.playSkipForward />
        <h2 className={Tailwind.merge(.[Styles.h2])}> {"playSkipForward"->Utils.str} </h2>
      </div>
      <div className={Tailwind.merge(.[Styles.block])}>
        <IonIcons.Outline.playSkipForwardCircle />
        <h2 className={Tailwind.merge(.[Styles.h2])}> {"playSkipForwardCircle"->Utils.str} </h2>
      </div>
      <div className={Tailwind.merge(.[Styles.block])}>
        <IonIcons.Outline.podium />
        <h2 className={Tailwind.merge(.[Styles.h2])}> {"podium"->Utils.str} </h2>
      </div>
      <div className={Tailwind.merge(.[Styles.block])}>
        <IonIcons.Outline.power />
        <h2 className={Tailwind.merge(.[Styles.h2])}> {"power"->Utils.str} </h2>
      </div>
      <div className={Tailwind.merge(.[Styles.block])}>
        <IonIcons.Outline.pricetag />
        <h2 className={Tailwind.merge(.[Styles.h2])}> {"pricetag"->Utils.str} </h2>
      </div>
      <div className={Tailwind.merge(.[Styles.block])}>
        <IonIcons.Outline.pricetags />
        <h2 className={Tailwind.merge(.[Styles.h2])}> {"pricetags"->Utils.str} </h2>
      </div>
      <div className={Tailwind.merge(.[Styles.block])}>
        <IonIcons.Outline.print />
        <h2 className={Tailwind.merge(.[Styles.h2])}> {"print"->Utils.str} </h2>
      </div>
      <div className={Tailwind.merge(.[Styles.block])}>
        <IonIcons.Outline.prism />
        <h2 className={Tailwind.merge(.[Styles.h2])}> {"prism"->Utils.str} </h2>
      </div>
      <div className={Tailwind.merge(.[Styles.block])}>
        <IonIcons.Outline.pulse />
        <h2 className={Tailwind.merge(.[Styles.h2])}> {"pulse"->Utils.str} </h2>
      </div>
      <div className={Tailwind.merge(.[Styles.block])}>
        <IonIcons.Outline.push />
        <h2 className={Tailwind.merge(.[Styles.h2])}> {"push"->Utils.str} </h2>
      </div>
      <div className={Tailwind.merge(.[Styles.block])}>
        <IonIcons.Outline.qrCode />
        <h2 className={Tailwind.merge(.[Styles.h2])}> {"qrCode"->Utils.str} </h2>
      </div>
      <div className={Tailwind.merge(.[Styles.block])}>
        <IonIcons.Outline.radio />
        <h2 className={Tailwind.merge(.[Styles.h2])}> {"radio"->Utils.str} </h2>
      </div>
      <div className={Tailwind.merge(.[Styles.block])}>
        <IonIcons.Outline.radioButtonOff />
        <h2 className={Tailwind.merge(.[Styles.h2])}> {"radioButtonOff"->Utils.str} </h2>
      </div>
      <div className={Tailwind.merge(.[Styles.block])}>
        <IonIcons.Outline.radioButtonOn />
        <h2 className={Tailwind.merge(.[Styles.h2])}> {"radioButtonOn"->Utils.str} </h2>
      </div>
      <div className={Tailwind.merge(.[Styles.block])}>
        <IonIcons.Outline.rainy />
        <h2 className={Tailwind.merge(.[Styles.h2])}> {"rainy"->Utils.str} </h2>
      </div>
      <div className={Tailwind.merge(.[Styles.block])}>
        <IonIcons.Outline.reader />
        <h2 className={Tailwind.merge(.[Styles.h2])}> {"reader"->Utils.str} </h2>
      </div>
      <div className={Tailwind.merge(.[Styles.block])}>
        <IonIcons.Outline.receipt />
        <h2 className={Tailwind.merge(.[Styles.h2])}> {"receipt"->Utils.str} </h2>
      </div>
      <div className={Tailwind.merge(.[Styles.block])}>
        <IonIcons.Outline.recording />
        <h2 className={Tailwind.merge(.[Styles.h2])}> {"recording"->Utils.str} </h2>
      </div>
      <div className={Tailwind.merge(.[Styles.block])}>
        <IonIcons.Outline.refresh />
        <h2 className={Tailwind.merge(.[Styles.h2])}> {"refresh"->Utils.str} </h2>
      </div>
      <div className={Tailwind.merge(.[Styles.block])}>
        <IonIcons.Outline.refreshCircle />
        <h2 className={Tailwind.merge(.[Styles.h2])}> {"refreshCircle"->Utils.str} </h2>
      </div>
      <div className={Tailwind.merge(.[Styles.block])}>
        <IonIcons.Outline.reload />
        <h2 className={Tailwind.merge(.[Styles.h2])}> {"reload"->Utils.str} </h2>
      </div>
      <div className={Tailwind.merge(.[Styles.block])}>
        <IonIcons.Outline.reloadCircle />
        <h2 className={Tailwind.merge(.[Styles.h2])}> {"reloadCircle"->Utils.str} </h2>
      </div>
      <div className={Tailwind.merge(.[Styles.block])}>
        <IonIcons.Outline.remove />
        <h2 className={Tailwind.merge(.[Styles.h2])}> {"remove"->Utils.str} </h2>
      </div>
      <div className={Tailwind.merge(.[Styles.block])}>
        <IonIcons.Outline.removeCircle />
        <h2 className={Tailwind.merge(.[Styles.h2])}> {"removeCircle"->Utils.str} </h2>
      </div>
      <div className={Tailwind.merge(.[Styles.block])}>
        <IonIcons.Outline.reorderFour />
        <h2 className={Tailwind.merge(.[Styles.h2])}> {"reorderFour"->Utils.str} </h2>
      </div>
      <div className={Tailwind.merge(.[Styles.block])}>
        <IonIcons.Outline.reorderThree />
        <h2 className={Tailwind.merge(.[Styles.h2])}> {"reorderThree"->Utils.str} </h2>
      </div>
      <div className={Tailwind.merge(.[Styles.block])}>
        <IonIcons.Outline.reorderTwo />
        <h2 className={Tailwind.merge(.[Styles.h2])}> {"reorderTwo"->Utils.str} </h2>
      </div>
      <div className={Tailwind.merge(.[Styles.block])}>
        <IonIcons.Outline.repeat />
        <h2 className={Tailwind.merge(.[Styles.h2])}> {"repeat"->Utils.str} </h2>
      </div>
      <div className={Tailwind.merge(.[Styles.block])}>
        <IonIcons.Outline.resize />
        <h2 className={Tailwind.merge(.[Styles.h2])}> {"resize"->Utils.str} </h2>
      </div>
      <div className={Tailwind.merge(.[Styles.block])}>
        <IonIcons.Outline.restaurant />
        <h2 className={Tailwind.merge(.[Styles.h2])}> {"restaurant"->Utils.str} </h2>
      </div>
      <div className={Tailwind.merge(.[Styles.block])}>
        <IonIcons.Outline.returnDownBack />
        <h2 className={Tailwind.merge(.[Styles.h2])}> {"returnDownBack"->Utils.str} </h2>
      </div>
      <div className={Tailwind.merge(.[Styles.block])}>
        <IonIcons.Outline.returnDownForward />
        <h2 className={Tailwind.merge(.[Styles.h2])}> {"returnDownForward"->Utils.str} </h2>
      </div>
      <div className={Tailwind.merge(.[Styles.block])}>
        <IonIcons.Outline.returnUpBack />
        <h2 className={Tailwind.merge(.[Styles.h2])}> {"returnUpBack"->Utils.str} </h2>
      </div>
      <div className={Tailwind.merge(.[Styles.block])}>
        <IonIcons.Outline.returnUpForward />
        <h2 className={Tailwind.merge(.[Styles.h2])}> {"returnUpForward"->Utils.str} </h2>
      </div>
      <div className={Tailwind.merge(.[Styles.block])}>
        <IonIcons.Outline.ribbon />
        <h2 className={Tailwind.merge(.[Styles.h2])}> {"ribbon"->Utils.str} </h2>
      </div>
      <div className={Tailwind.merge(.[Styles.block])}>
        <IonIcons.Outline.rocket />
        <h2 className={Tailwind.merge(.[Styles.h2])}> {"rocket"->Utils.str} </h2>
      </div>
      <div className={Tailwind.merge(.[Styles.block])}>
        <IonIcons.Outline.rose />
        <h2 className={Tailwind.merge(.[Styles.h2])}> {"rose"->Utils.str} </h2>
      </div>
      <div className={Tailwind.merge(.[Styles.block])}>
        <IonIcons.Outline.sad />
        <h2 className={Tailwind.merge(.[Styles.h2])}> {"sad"->Utils.str} </h2>
      </div>
      <div className={Tailwind.merge(.[Styles.block])}>
        <IonIcons.Outline.save />
        <h2 className={Tailwind.merge(.[Styles.h2])}> {"save"->Utils.str} </h2>
      </div>
      <div className={Tailwind.merge(.[Styles.block])}>
        <IonIcons.Outline.scale />
        <h2 className={Tailwind.merge(.[Styles.h2])}> {"scale"->Utils.str} </h2>
      </div>
      <div className={Tailwind.merge(.[Styles.block])}>
        <IonIcons.Outline.scan />
        <h2 className={Tailwind.merge(.[Styles.h2])}> {"scan"->Utils.str} </h2>
      </div>
      <div className={Tailwind.merge(.[Styles.block])}>
        <IonIcons.Outline.scanCircle />
        <h2 className={Tailwind.merge(.[Styles.h2])}> {"scanCircle"->Utils.str} </h2>
      </div>
      <div className={Tailwind.merge(.[Styles.block])}>
        <IonIcons.Outline.school />
        <h2 className={Tailwind.merge(.[Styles.h2])}> {"school"->Utils.str} </h2>
      </div>
      <div className={Tailwind.merge(.[Styles.block])}>
        <IonIcons.Outline.search />
        <h2 className={Tailwind.merge(.[Styles.h2])}> {"search"->Utils.str} </h2>
      </div>
      <div className={Tailwind.merge(.[Styles.block])}>
        <IonIcons.Outline.searchCircle />
        <h2 className={Tailwind.merge(.[Styles.h2])}> {"searchCircle"->Utils.str} </h2>
      </div>
      <div className={Tailwind.merge(.[Styles.block])}>
        <IonIcons.Outline.send />
        <h2 className={Tailwind.merge(.[Styles.h2])}> {"send"->Utils.str} </h2>
      </div>
      <div className={Tailwind.merge(.[Styles.block])}>
        <IonIcons.Outline.server />
        <h2 className={Tailwind.merge(.[Styles.h2])}> {"server"->Utils.str} </h2>
      </div>
      <div className={Tailwind.merge(.[Styles.block])}>
        <IonIcons.Outline.settings />
        <h2 className={Tailwind.merge(.[Styles.h2])}> {"settings"->Utils.str} </h2>
      </div>
      <div className={Tailwind.merge(.[Styles.block])}>
        <IonIcons.Outline.shapes />
        <h2 className={Tailwind.merge(.[Styles.h2])}> {"shapes"->Utils.str} </h2>
      </div>
      <div className={Tailwind.merge(.[Styles.block])}>
        <IonIcons.Outline.share />
        <h2 className={Tailwind.merge(.[Styles.h2])}> {"share"->Utils.str} </h2>
      </div>
      <div className={Tailwind.merge(.[Styles.block])}>
        <IonIcons.Outline.shareSocial />
        <h2 className={Tailwind.merge(.[Styles.h2])}> {"shareSocial"->Utils.str} </h2>
      </div>
      <div className={Tailwind.merge(.[Styles.block])}>
        <IonIcons.Outline.shield />
        <h2 className={Tailwind.merge(.[Styles.h2])}> {"shield"->Utils.str} </h2>
      </div>
      <div className={Tailwind.merge(.[Styles.block])}>
        <IonIcons.Outline.shieldCheckmark />
        <h2 className={Tailwind.merge(.[Styles.h2])}> {"shieldCheckmark"->Utils.str} </h2>
      </div>
      <div className={Tailwind.merge(.[Styles.block])}>
        <IonIcons.Outline.shieldHalf />
        <h2 className={Tailwind.merge(.[Styles.h2])}> {"shieldHalf"->Utils.str} </h2>
      </div>
      <div className={Tailwind.merge(.[Styles.block])}>
        <IonIcons.Outline.shirt />
        <h2 className={Tailwind.merge(.[Styles.h2])}> {"shirt"->Utils.str} </h2>
      </div>
      <div className={Tailwind.merge(.[Styles.block])}>
        <IonIcons.Outline.shuffle />
        <h2 className={Tailwind.merge(.[Styles.h2])}> {"shuffle"->Utils.str} </h2>
      </div>
      <div className={Tailwind.merge(.[Styles.block])}>
        <IonIcons.Outline.skull />
        <h2 className={Tailwind.merge(.[Styles.h2])}> {"skull"->Utils.str} </h2>
      </div>
      <div className={Tailwind.merge(.[Styles.block])}>
        <IonIcons.Outline.snow />
        <h2 className={Tailwind.merge(.[Styles.h2])}> {"snow"->Utils.str} </h2>
      </div>
      <div className={Tailwind.merge(.[Styles.block])}>
        <IonIcons.Outline.sparkles />
        <h2 className={Tailwind.merge(.[Styles.h2])}> {"sparkles"->Utils.str} </h2>
      </div>
      <div className={Tailwind.merge(.[Styles.block])}>
        <IonIcons.Outline.speedometer />
        <h2 className={Tailwind.merge(.[Styles.h2])}> {"speedometer"->Utils.str} </h2>
      </div>
      <div className={Tailwind.merge(.[Styles.block])}>
        <IonIcons.Outline.square />
        <h2 className={Tailwind.merge(.[Styles.h2])}> {"square"->Utils.str} </h2>
      </div>
      <div className={Tailwind.merge(.[Styles.block])}>
        <IonIcons.Outline.star />
        <h2 className={Tailwind.merge(.[Styles.h2])}> {"star"->Utils.str} </h2>
      </div>
      <div className={Tailwind.merge(.[Styles.block])}>
        <IonIcons.Outline.starHalf />
        <h2 className={Tailwind.merge(.[Styles.h2])}> {"starHalf"->Utils.str} </h2>
      </div>
      <div className={Tailwind.merge(.[Styles.block])}>
        <IonIcons.Outline.statsChart />
        <h2 className={Tailwind.merge(.[Styles.h2])}> {"statsChart"->Utils.str} </h2>
      </div>
      <div className={Tailwind.merge(.[Styles.block])}>
        <IonIcons.Outline.stop />
        <h2 className={Tailwind.merge(.[Styles.h2])}> {"stop"->Utils.str} </h2>
      </div>
      <div className={Tailwind.merge(.[Styles.block])}>
        <IonIcons.Outline.stopCircle />
        <h2 className={Tailwind.merge(.[Styles.h2])}> {"stopCircle"->Utils.str} </h2>
      </div>
      <div className={Tailwind.merge(.[Styles.block])}>
        <IonIcons.Outline.stopwatch />
        <h2 className={Tailwind.merge(.[Styles.h2])}> {"stopwatch"->Utils.str} </h2>
      </div>
      <div className={Tailwind.merge(.[Styles.block])}>
        <IonIcons.Outline.storefront />
        <h2 className={Tailwind.merge(.[Styles.h2])}> {"storefront"->Utils.str} </h2>
      </div>
      <div className={Tailwind.merge(.[Styles.block])}>
        <IonIcons.Outline.subway />
        <h2 className={Tailwind.merge(.[Styles.h2])}> {"subway"->Utils.str} </h2>
      </div>
      <div className={Tailwind.merge(.[Styles.block])}>
        <IonIcons.Outline.sunny />
        <h2 className={Tailwind.merge(.[Styles.h2])}> {"sunny"->Utils.str} </h2>
      </div>
      <div className={Tailwind.merge(.[Styles.block])}>
        <IonIcons.Outline.swapHorizontal />
        <h2 className={Tailwind.merge(.[Styles.h2])}> {"swapHorizontal"->Utils.str} </h2>
      </div>
      <div className={Tailwind.merge(.[Styles.block])}>
        <IonIcons.Outline.swapVertical />
        <h2 className={Tailwind.merge(.[Styles.h2])}> {"swapVertical"->Utils.str} </h2>
      </div>
      <div className={Tailwind.merge(.[Styles.block])}>
        <IonIcons.Outline.sync />
        <h2 className={Tailwind.merge(.[Styles.h2])}> {"sync"->Utils.str} </h2>
      </div>
      <div className={Tailwind.merge(.[Styles.block])}>
        <IonIcons.Outline.syncCircle />
        <h2 className={Tailwind.merge(.[Styles.h2])}> {"syncCircle"->Utils.str} </h2>
      </div>
      <div className={Tailwind.merge(.[Styles.block])}>
        <IonIcons.Outline.tabletLandscape />
        <h2 className={Tailwind.merge(.[Styles.h2])}> {"tabletLandscape"->Utils.str} </h2>
      </div>
      <div className={Tailwind.merge(.[Styles.block])}>
        <IonIcons.Outline.tabletPortrait />
        <h2 className={Tailwind.merge(.[Styles.h2])}> {"tabletPortrait"->Utils.str} </h2>
      </div>
      <div className={Tailwind.merge(.[Styles.block])}>
        <IonIcons.Outline.telescope />
        <h2 className={Tailwind.merge(.[Styles.h2])}> {"telescope"->Utils.str} </h2>
      </div>
      <div className={Tailwind.merge(.[Styles.block])}>
        <IonIcons.Outline.tennisball />
        <h2 className={Tailwind.merge(.[Styles.h2])}> {"tennisball"->Utils.str} </h2>
      </div>
      <div className={Tailwind.merge(.[Styles.block])}>
        <IonIcons.Outline.terminal />
        <h2 className={Tailwind.merge(.[Styles.h2])}> {"terminal"->Utils.str} </h2>
      </div>
      <div className={Tailwind.merge(.[Styles.block])}>
        <IonIcons.Outline.text />
        <h2 className={Tailwind.merge(.[Styles.h2])}> {"text"->Utils.str} </h2>
      </div>
      <div className={Tailwind.merge(.[Styles.block])}>
        <IonIcons.Outline.thermometer />
        <h2 className={Tailwind.merge(.[Styles.h2])}> {"thermometer"->Utils.str} </h2>
      </div>
      <div className={Tailwind.merge(.[Styles.block])}>
        <IonIcons.Outline.thumbsDown />
        <h2 className={Tailwind.merge(.[Styles.h2])}> {"thumbsDown"->Utils.str} </h2>
      </div>
      <div className={Tailwind.merge(.[Styles.block])}>
        <IonIcons.Outline.thumbsUp />
        <h2 className={Tailwind.merge(.[Styles.h2])}> {"thumbsUp"->Utils.str} </h2>
      </div>
      <div className={Tailwind.merge(.[Styles.block])}>
        <IonIcons.Outline.thunderstorm />
        <h2 className={Tailwind.merge(.[Styles.h2])}> {"thunderstorm"->Utils.str} </h2>
      </div>
      <div className={Tailwind.merge(.[Styles.block])}>
        <IonIcons.Outline.ticket />
        <h2 className={Tailwind.merge(.[Styles.h2])}> {"ticket"->Utils.str} </h2>
      </div>
      <div className={Tailwind.merge(.[Styles.block])}>
        <IonIcons.Outline.time />
        <h2 className={Tailwind.merge(.[Styles.h2])}> {"time"->Utils.str} </h2>
      </div>
      <div className={Tailwind.merge(.[Styles.block])}>
        <IonIcons.Outline.timer />
        <h2 className={Tailwind.merge(.[Styles.h2])}> {"timer"->Utils.str} </h2>
      </div>
      <div className={Tailwind.merge(.[Styles.block])}>
        <IonIcons.Outline.today />
        <h2 className={Tailwind.merge(.[Styles.h2])}> {"today"->Utils.str} </h2>
      </div>
      <div className={Tailwind.merge(.[Styles.block])}>
        <IonIcons.Outline.toggle />
        <h2 className={Tailwind.merge(.[Styles.h2])}> {"toggle"->Utils.str} </h2>
      </div>
      <div className={Tailwind.merge(.[Styles.block])}>
        <IonIcons.Outline.trailSign />
        <h2 className={Tailwind.merge(.[Styles.h2])}> {"trailSign"->Utils.str} </h2>
      </div>
      <div className={Tailwind.merge(.[Styles.block])}>
        <IonIcons.Outline.train />
        <h2 className={Tailwind.merge(.[Styles.h2])}> {"train"->Utils.str} </h2>
      </div>
      <div className={Tailwind.merge(.[Styles.block])}>
        <IonIcons.Outline.transgender />
        <h2 className={Tailwind.merge(.[Styles.h2])}> {"transgender"->Utils.str} </h2>
      </div>
      <div className={Tailwind.merge(.[Styles.block])}>
        <IonIcons.Outline.trash />
        <h2 className={Tailwind.merge(.[Styles.h2])}> {"trash"->Utils.str} </h2>
      </div>
      <div className={Tailwind.merge(.[Styles.block])}>
        <IonIcons.Outline.trashBin />
        <h2 className={Tailwind.merge(.[Styles.h2])}> {"trashBin"->Utils.str} </h2>
      </div>
      <div className={Tailwind.merge(.[Styles.block])}>
        <IonIcons.Outline.trendingDown />
        <h2 className={Tailwind.merge(.[Styles.h2])}> {"trendingDown"->Utils.str} </h2>
      </div>
      <div className={Tailwind.merge(.[Styles.block])}>
        <IonIcons.Outline.trendingUp />
        <h2 className={Tailwind.merge(.[Styles.h2])}> {"trendingUp"->Utils.str} </h2>
      </div>
      <div className={Tailwind.merge(.[Styles.block])}>
        <IonIcons.Outline.triangle />
        <h2 className={Tailwind.merge(.[Styles.h2])}> {"triangle"->Utils.str} </h2>
      </div>
      <div className={Tailwind.merge(.[Styles.block])}>
        <IonIcons.Outline.trophy />
        <h2 className={Tailwind.merge(.[Styles.h2])}> {"trophy"->Utils.str} </h2>
      </div>
      <div className={Tailwind.merge(.[Styles.block])}>
        <IonIcons.Outline.tv />
        <h2 className={Tailwind.merge(.[Styles.h2])}> {"tv"->Utils.str} </h2>
      </div>
      <div className={Tailwind.merge(.[Styles.block])}>
        <IonIcons.Outline.umbrella />
        <h2 className={Tailwind.merge(.[Styles.h2])}> {"umbrella"->Utils.str} </h2>
      </div>
      <div className={Tailwind.merge(.[Styles.block])}>
        <IonIcons.Outline.unlink />
        <h2 className={Tailwind.merge(.[Styles.h2])}> {"unlink"->Utils.str} </h2>
      </div>
      <div className={Tailwind.merge(.[Styles.block])}>
        <IonIcons.Outline.videocam />
        <h2 className={Tailwind.merge(.[Styles.h2])}> {"videocam"->Utils.str} </h2>
      </div>
      <div className={Tailwind.merge(.[Styles.block])}>
        <IonIcons.Outline.videocamOff />
        <h2 className={Tailwind.merge(.[Styles.h2])}> {"videocamOff"->Utils.str} </h2>
      </div>
      <div className={Tailwind.merge(.[Styles.block])}>
        <IonIcons.Outline.volumeHigh />
        <h2 className={Tailwind.merge(.[Styles.h2])}> {"volumeHigh"->Utils.str} </h2>
      </div>
      <div className={Tailwind.merge(.[Styles.block])}>
        <IonIcons.Outline.volumeLow />
        <h2 className={Tailwind.merge(.[Styles.h2])}> {"volumeLow"->Utils.str} </h2>
      </div>
      <div className={Tailwind.merge(.[Styles.block])}>
        <IonIcons.Outline.volumeMedium />
        <h2 className={Tailwind.merge(.[Styles.h2])}> {"volumeMedium"->Utils.str} </h2>
      </div>
      <div className={Tailwind.merge(.[Styles.block])}>
        <IonIcons.Outline.volumeMute />
        <h2 className={Tailwind.merge(.[Styles.h2])}> {"volumeMute"->Utils.str} </h2>
      </div>
      <div className={Tailwind.merge(.[Styles.block])}>
        <IonIcons.Outline.volumeOff />
        <h2 className={Tailwind.merge(.[Styles.h2])}> {"volumeOff"->Utils.str} </h2>
      </div>
      <div className={Tailwind.merge(.[Styles.block])}>
        <IonIcons.Outline.walk />
        <h2 className={Tailwind.merge(.[Styles.h2])}> {"walk"->Utils.str} </h2>
      </div>
      <div className={Tailwind.merge(.[Styles.block])}>
        <IonIcons.Outline.wallet />
        <h2 className={Tailwind.merge(.[Styles.h2])}> {"wallet"->Utils.str} </h2>
      </div>
      <div className={Tailwind.merge(.[Styles.block])}>
        <IonIcons.Outline.warning />
        <h2 className={Tailwind.merge(.[Styles.h2])}> {"warning"->Utils.str} </h2>
      </div>
      <div className={Tailwind.merge(.[Styles.block])}>
        <IonIcons.Outline.watch />
        <h2 className={Tailwind.merge(.[Styles.h2])}> {"watch"->Utils.str} </h2>
      </div>
      <div className={Tailwind.merge(.[Styles.block])}>
        <IonIcons.Outline.water />
        <h2 className={Tailwind.merge(.[Styles.h2])}> {"water"->Utils.str} </h2>
      </div>
      <div className={Tailwind.merge(.[Styles.block])}>
        <IonIcons.Outline.wifi />
        <h2 className={Tailwind.merge(.[Styles.h2])}> {"wifi"->Utils.str} </h2>
      </div>
      <div className={Tailwind.merge(.[Styles.block])}>
        <IonIcons.Outline.wine />
        <h2 className={Tailwind.merge(.[Styles.h2])}> {"wine"->Utils.str} </h2>
      </div>
      <div className={Tailwind.merge(.[Styles.block])}>
        <IonIcons.Outline.woman />
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
      <div className={Tailwind.merge(.[Styles.block])}>
        <IonIcons.Filled.albums />
        <h2 className={Tailwind.merge(.[Styles.h2])}> {"albums"->Utils.str} </h2>
      </div>
      <div className={Tailwind.merge(.[Styles.block])}>
        <IonIcons.Filled.alert />
        <h2 className={Tailwind.merge(.[Styles.h2])}> {"alert"->Utils.str} </h2>
      </div>
      <div className={Tailwind.merge(.[Styles.block])}>
        <IonIcons.Filled.alertCircle />
        <h2 className={Tailwind.merge(.[Styles.h2])}> {"alertCircle"->Utils.str} </h2>
      </div>
      <div className={Tailwind.merge(.[Styles.block])}>
        <IonIcons.Filled.americanFootball />
        <h2 className={Tailwind.merge(.[Styles.h2])}> {"americanFootball"->Utils.str} </h2>
      </div>
      <div className={Tailwind.merge(.[Styles.block])}>
        <IonIcons.Filled.analytics />
        <h2 className={Tailwind.merge(.[Styles.h2])}> {"analytics"->Utils.str} </h2>
      </div>
      <div className={Tailwind.merge(.[Styles.block])}>
        <IonIcons.Filled.aperture />
        <h2 className={Tailwind.merge(.[Styles.h2])}> {"aperture"->Utils.str} </h2>
      </div>
      <div className={Tailwind.merge(.[Styles.block])}>
        <IonIcons.Filled.apps />
        <h2 className={Tailwind.merge(.[Styles.h2])}> {"apps"->Utils.str} </h2>
      </div>
      <div className={Tailwind.merge(.[Styles.block])}>
        <IonIcons.Filled.archive />
        <h2 className={Tailwind.merge(.[Styles.h2])}> {"archive"->Utils.str} </h2>
      </div>
      <div className={Tailwind.merge(.[Styles.block])}>
        <IonIcons.Filled.arrowBack />
        <h2 className={Tailwind.merge(.[Styles.h2])}> {"arrowBack"->Utils.str} </h2>
      </div>
      <div className={Tailwind.merge(.[Styles.block])}>
        <IonIcons.Filled.arrowBackCircle />
        <h2 className={Tailwind.merge(.[Styles.h2])}> {"arrowBackCircle"->Utils.str} </h2>
      </div>
      <div className={Tailwind.merge(.[Styles.block])}>
        <IonIcons.Filled.arrowDown />
        <h2 className={Tailwind.merge(.[Styles.h2])}> {"arrowDown"->Utils.str} </h2>
      </div>
      <div className={Tailwind.merge(.[Styles.block])}>
        <IonIcons.Filled.arrowDownCircle />
        <h2 className={Tailwind.merge(.[Styles.h2])}> {"arrowDownCircle"->Utils.str} </h2>
      </div>
      <div className={Tailwind.merge(.[Styles.block])}>
        <IonIcons.Filled.arrowForward />
        <h2 className={Tailwind.merge(.[Styles.h2])}> {"arrowForward"->Utils.str} </h2>
      </div>
      <div className={Tailwind.merge(.[Styles.block])}>
        <IonIcons.Filled.arrowForwardCircle />
        <h2 className={Tailwind.merge(.[Styles.h2])}> {"arrowForwardCircle"->Utils.str} </h2>
      </div>
      <div className={Tailwind.merge(.[Styles.block])}>
        <IonIcons.Filled.arrowRedo />
        <h2 className={Tailwind.merge(.[Styles.h2])}> {"arrowRedo"->Utils.str} </h2>
      </div>
      <div className={Tailwind.merge(.[Styles.block])}>
        <IonIcons.Filled.arrowRedoCircle />
        <h2 className={Tailwind.merge(.[Styles.h2])}> {"arrowRedoCircle"->Utils.str} </h2>
      </div>
      <div className={Tailwind.merge(.[Styles.block])}>
        <IonIcons.Filled.arrowUndo />
        <h2 className={Tailwind.merge(.[Styles.h2])}> {"arrowUndo"->Utils.str} </h2>
      </div>
      <div className={Tailwind.merge(.[Styles.block])}>
        <IonIcons.Filled.arrowUndoCircle />
        <h2 className={Tailwind.merge(.[Styles.h2])}> {"arrowUndoCircle"->Utils.str} </h2>
      </div>
      <div className={Tailwind.merge(.[Styles.block])}>
        <IonIcons.Filled.arrowUp />
        <h2 className={Tailwind.merge(.[Styles.h2])}> {"arrowUp"->Utils.str} </h2>
      </div>
      <div className={Tailwind.merge(.[Styles.block])}>
        <IonIcons.Filled.arrowUpCircle />
        <h2 className={Tailwind.merge(.[Styles.h2])}> {"arrowUpCircle"->Utils.str} </h2>
      </div>
      <div className={Tailwind.merge(.[Styles.block])}>
        <IonIcons.Filled.at /> <h2 className={Tailwind.merge(.[Styles.h2])}> {"at"->Utils.str} </h2>
      </div>
      <div className={Tailwind.merge(.[Styles.block])}>
        <IonIcons.Filled.atCircle />
        <h2 className={Tailwind.merge(.[Styles.h2])}> {"atCircle"->Utils.str} </h2>
      </div>
      <div className={Tailwind.merge(.[Styles.block])}>
        <IonIcons.Filled.attach />
        <h2 className={Tailwind.merge(.[Styles.h2])}> {"attach"->Utils.str} </h2>
      </div>
      <div className={Tailwind.merge(.[Styles.block])}>
        <IonIcons.Filled.backspace />
        <h2 className={Tailwind.merge(.[Styles.h2])}> {"backspace"->Utils.str} </h2>
      </div>
      <div className={Tailwind.merge(.[Styles.block])}>
        <IonIcons.Filled.bag />
        <h2 className={Tailwind.merge(.[Styles.h2])}> {"bag"->Utils.str} </h2>
      </div>
      <div className={Tailwind.merge(.[Styles.block])}>
        <IonIcons.Filled.bagAdd />
        <h2 className={Tailwind.merge(.[Styles.h2])}> {"bagAdd"->Utils.str} </h2>
      </div>
      <div className={Tailwind.merge(.[Styles.block])}>
        <IonIcons.Filled.bagCheck />
        <h2 className={Tailwind.merge(.[Styles.h2])}> {"bagCheck"->Utils.str} </h2>
      </div>
      <div className={Tailwind.merge(.[Styles.block])}>
        <IonIcons.Filled.bagHandle />
        <h2 className={Tailwind.merge(.[Styles.h2])}> {"bagHandle"->Utils.str} </h2>
      </div>
      <div className={Tailwind.merge(.[Styles.block])}>
        <IonIcons.Filled.bagRemove />
        <h2 className={Tailwind.merge(.[Styles.h2])}> {"bagRemove"->Utils.str} </h2>
      </div>
      <div className={Tailwind.merge(.[Styles.block])}>
        <IonIcons.Filled.ballon />
        <h2 className={Tailwind.merge(.[Styles.h2])}> {"ballon"->Utils.str} </h2>
      </div>
      <div className={Tailwind.merge(.[Styles.block])}>
        <IonIcons.Filled.ban />
        <h2 className={Tailwind.merge(.[Styles.h2])}> {"ban"->Utils.str} </h2>
      </div>
      <div className={Tailwind.merge(.[Styles.block])}>
        <IonIcons.Filled.bandage />
        <h2 className={Tailwind.merge(.[Styles.h2])}> {"bandage"->Utils.str} </h2>
      </div>
      <div className={Tailwind.merge(.[Styles.block])}>
        <IonIcons.Filled.barChart />
        <h2 className={Tailwind.merge(.[Styles.h2])}> {"barChart"->Utils.str} </h2>
      </div>
      <div className={Tailwind.merge(.[Styles.block])}>
        <IonIcons.Filled.barbell />
        <h2 className={Tailwind.merge(.[Styles.h2])}> {"barbell"->Utils.str} </h2>
      </div>
      <div className={Tailwind.merge(.[Styles.block])}>
        <IonIcons.Filled.barcode />
        <h2 className={Tailwind.merge(.[Styles.h2])}> {"barcode"->Utils.str} </h2>
      </div>
      <div className={Tailwind.merge(.[Styles.block])}>
        <IonIcons.Filled.baseball />
        <h2 className={Tailwind.merge(.[Styles.h2])}> {"baseball"->Utils.str} </h2>
      </div>
      <div className={Tailwind.merge(.[Styles.block])}>
        <IonIcons.Filled.basket />
        <h2 className={Tailwind.merge(.[Styles.h2])}> {"basket"->Utils.str} </h2>
      </div>
      <div className={Tailwind.merge(.[Styles.block])}>
        <IonIcons.Filled.basketball />
        <h2 className={Tailwind.merge(.[Styles.h2])}> {"basketball"->Utils.str} </h2>
      </div>
      <div className={Tailwind.merge(.[Styles.block])}>
        <IonIcons.Filled.batteryCharging />
        <h2 className={Tailwind.merge(.[Styles.h2])}> {"batteryCharging"->Utils.str} </h2>
      </div>
      <div className={Tailwind.merge(.[Styles.block])}>
        <IonIcons.Filled.batteryDead />
        <h2 className={Tailwind.merge(.[Styles.h2])}> {"batteryDead"->Utils.str} </h2>
      </div>
      <div className={Tailwind.merge(.[Styles.block])}>
        <IonIcons.Filled.batteryFull />
        <h2 className={Tailwind.merge(.[Styles.h2])}> {"batteryFull"->Utils.str} </h2>
      </div>
      <div className={Tailwind.merge(.[Styles.block])}>
        <IonIcons.Filled.batteryHalf />
        <h2 className={Tailwind.merge(.[Styles.h2])}> {"batteryHalf"->Utils.str} </h2>
      </div>
      <div className={Tailwind.merge(.[Styles.block])}>
        <IonIcons.Filled.beaker />
        <h2 className={Tailwind.merge(.[Styles.h2])}> {"beaker"->Utils.str} </h2>
      </div>
      <div className={Tailwind.merge(.[Styles.block])}>
        <IonIcons.Filled.bed />
        <h2 className={Tailwind.merge(.[Styles.h2])}> {"bed"->Utils.str} </h2>
      </div>
      <div className={Tailwind.merge(.[Styles.block])}>
        <IonIcons.Filled.beer />
        <h2 className={Tailwind.merge(.[Styles.h2])}> {"beer"->Utils.str} </h2>
      </div>
      <div className={Tailwind.merge(.[Styles.block])}>
        <IonIcons.Filled.bicycle />
        <h2 className={Tailwind.merge(.[Styles.h2])}> {"bicycle"->Utils.str} </h2>
      </div>
      <div className={Tailwind.merge(.[Styles.block])}>
        <IonIcons.Filled.bluetooth />
        <h2 className={Tailwind.merge(.[Styles.h2])}> {"bluetooth"->Utils.str} </h2>
      </div>
      <div className={Tailwind.merge(.[Styles.block])}>
        <IonIcons.Filled.boat />
        <h2 className={Tailwind.merge(.[Styles.h2])}> {"boat"->Utils.str} </h2>
      </div>
      <div className={Tailwind.merge(.[Styles.block])}>
        <IonIcons.Filled.body />
        <h2 className={Tailwind.merge(.[Styles.h2])}> {"body"->Utils.str} </h2>
      </div>
      <div className={Tailwind.merge(.[Styles.block])}>
        <IonIcons.Filled.bonefire />
        <h2 className={Tailwind.merge(.[Styles.h2])}> {"bonefire"->Utils.str} </h2>
      </div>
      <div className={Tailwind.merge(.[Styles.block])}>
        <IonIcons.Filled.book />
        <h2 className={Tailwind.merge(.[Styles.h2])}> {"book"->Utils.str} </h2>
      </div>
      <div className={Tailwind.merge(.[Styles.block])}>
        <IonIcons.Filled.bookmark />
        <h2 className={Tailwind.merge(.[Styles.h2])}> {"bookmark"->Utils.str} </h2>
      </div>
      <div className={Tailwind.merge(.[Styles.block])}>
        <IonIcons.Filled.bookmarks />
        <h2 className={Tailwind.merge(.[Styles.h2])}> {"bookmarks"->Utils.str} </h2>
      </div>
      <div className={Tailwind.merge(.[Styles.block])}>
        <IonIcons.Filled.bowlingBall />
        <h2 className={Tailwind.merge(.[Styles.h2])}> {"bowlingBall"->Utils.str} </h2>
      </div>
      <div className={Tailwind.merge(.[Styles.block])}>
        <IonIcons.Filled.briefcase />
        <h2 className={Tailwind.merge(.[Styles.h2])}> {"briefcase"->Utils.str} </h2>
      </div>
      <div className={Tailwind.merge(.[Styles.block])}>
        <IonIcons.Filled.browsers />
        <h2 className={Tailwind.merge(.[Styles.h2])}> {"browsers"->Utils.str} </h2>
      </div>
      <div className={Tailwind.merge(.[Styles.block])}>
        <IonIcons.Filled.brush />
        <h2 className={Tailwind.merge(.[Styles.h2])}> {"brush"->Utils.str} </h2>
      </div>
      <div className={Tailwind.merge(.[Styles.block])}>
        <IonIcons.Filled.bug />
        <h2 className={Tailwind.merge(.[Styles.h2])}> {"bug"->Utils.str} </h2>
      </div>
      <div className={Tailwind.merge(.[Styles.block])}>
        <IonIcons.Filled.build />
        <h2 className={Tailwind.merge(.[Styles.h2])}> {"build"->Utils.str} </h2>
      </div>
      <div className={Tailwind.merge(.[Styles.block])}>
        <IonIcons.Filled.bulb />
        <h2 className={Tailwind.merge(.[Styles.h2])}> {"bulb"->Utils.str} </h2>
      </div>
      <div className={Tailwind.merge(.[Styles.block])}>
        <IonIcons.Filled.bus />
        <h2 className={Tailwind.merge(.[Styles.h2])}> {"bus"->Utils.str} </h2>
      </div>
      <div className={Tailwind.merge(.[Styles.block])}>
        <IonIcons.Filled.business />
        <h2 className={Tailwind.merge(.[Styles.h2])}> {"business"->Utils.str} </h2>
      </div>
      <div className={Tailwind.merge(.[Styles.block])}>
        <IonIcons.Filled.cafe />
        <h2 className={Tailwind.merge(.[Styles.h2])}> {"cafe"->Utils.str} </h2>
      </div>
      <div className={Tailwind.merge(.[Styles.block])}>
        <IonIcons.Filled.calculator />
        <h2 className={Tailwind.merge(.[Styles.h2])}> {"calculator"->Utils.str} </h2>
      </div>
      <div className={Tailwind.merge(.[Styles.block])}>
        <IonIcons.Filled.calendar />
        <h2 className={Tailwind.merge(.[Styles.h2])}> {"calendar"->Utils.str} </h2>
      </div>
      <div className={Tailwind.merge(.[Styles.block])}>
        <IonIcons.Filled.calendarClear />
        <h2 className={Tailwind.merge(.[Styles.h2])}> {"calendarClear"->Utils.str} </h2>
      </div>
      <div className={Tailwind.merge(.[Styles.block])}>
        <IonIcons.Filled.calendarNumber />
        <h2 className={Tailwind.merge(.[Styles.h2])}> {"calendarNumber"->Utils.str} </h2>
      </div>
      <div className={Tailwind.merge(.[Styles.block])}>
        <IonIcons.Filled.call />
        <h2 className={Tailwind.merge(.[Styles.h2])}> {"call"->Utils.str} </h2>
      </div>
      <div className={Tailwind.merge(.[Styles.block])}>
        <IonIcons.Filled.camera />
        <h2 className={Tailwind.merge(.[Styles.h2])}> {"camera"->Utils.str} </h2>
      </div>
      <div className={Tailwind.merge(.[Styles.block])}>
        <IonIcons.Filled.cameraReverse />
        <h2 className={Tailwind.merge(.[Styles.h2])}> {"cameraReverse"->Utils.str} </h2>
      </div>
      <div className={Tailwind.merge(.[Styles.block])}>
        <IonIcons.Filled.car />
        <h2 className={Tailwind.merge(.[Styles.h2])}> {"car"->Utils.str} </h2>
      </div>
      <div className={Tailwind.merge(.[Styles.block])}>
        <IonIcons.Filled.carSport />
        <h2 className={Tailwind.merge(.[Styles.h2])}> {"carSport"->Utils.str} </h2>
      </div>
      <div className={Tailwind.merge(.[Styles.block])}>
        <IonIcons.Filled.card />
        <h2 className={Tailwind.merge(.[Styles.h2])}> {"card"->Utils.str} </h2>
      </div>
      <div className={Tailwind.merge(.[Styles.block])}>
        <IonIcons.Filled.caretBack />
        <h2 className={Tailwind.merge(.[Styles.h2])}> {"caretBack"->Utils.str} </h2>
      </div>
      <div className={Tailwind.merge(.[Styles.block])}>
        <IonIcons.Filled.caretBackCircle />
        <h2 className={Tailwind.merge(.[Styles.h2])}> {"caretBackCircle"->Utils.str} </h2>
      </div>
      <div className={Tailwind.merge(.[Styles.block])}>
        <IonIcons.Filled.caretDown />
        <h2 className={Tailwind.merge(.[Styles.h2])}> {"caretDown"->Utils.str} </h2>
      </div>
      <div className={Tailwind.merge(.[Styles.block])}>
        <IonIcons.Filled.caretDownCircle />
        <h2 className={Tailwind.merge(.[Styles.h2])}> {"caretDownCircle"->Utils.str} </h2>
      </div>
      <div className={Tailwind.merge(.[Styles.block])}>
        <IonIcons.Filled.caretForward />
        <h2 className={Tailwind.merge(.[Styles.h2])}> {"caretForward"->Utils.str} </h2>
      </div>
      <div className={Tailwind.merge(.[Styles.block])}>
        <IonIcons.Filled.caretForwardCircle />
        <h2 className={Tailwind.merge(.[Styles.h2])}> {"caretForwardCircle"->Utils.str} </h2>
      </div>
      <div className={Tailwind.merge(.[Styles.block])}>
        <IonIcons.Filled.caretUp />
        <h2 className={Tailwind.merge(.[Styles.h2])}> {"caretUp"->Utils.str} </h2>
      </div>
      <div className={Tailwind.merge(.[Styles.block])}>
        <IonIcons.Filled.caretUpCircle />
        <h2 className={Tailwind.merge(.[Styles.h2])}> {"caretUpCircle"->Utils.str} </h2>
      </div>
      <div className={Tailwind.merge(.[Styles.block])}>
        <IonIcons.Filled.cart />
        <h2 className={Tailwind.merge(.[Styles.h2])}> {"cart"->Utils.str} </h2>
      </div>
      <div className={Tailwind.merge(.[Styles.block])}>
        <IonIcons.Filled.cash />
        <h2 className={Tailwind.merge(.[Styles.h2])}> {"cash"->Utils.str} </h2>
      </div>
      <div className={Tailwind.merge(.[Styles.block])}>
        <IonIcons.Filled.cellular />
        <h2 className={Tailwind.merge(.[Styles.h2])}> {"cellular"->Utils.str} </h2>
      </div>
      <div className={Tailwind.merge(.[Styles.block])}>
        <IonIcons.Filled.chatbox />
        <h2 className={Tailwind.merge(.[Styles.h2])}> {"chatbox"->Utils.str} </h2>
      </div>
      <div className={Tailwind.merge(.[Styles.block])}>
        <IonIcons.Filled.chatboxEllipses />
        <h2 className={Tailwind.merge(.[Styles.h2])}> {"chatboxEllipses"->Utils.str} </h2>
      </div>
      <div className={Tailwind.merge(.[Styles.block])}>
        <IonIcons.Filled.chatbubble />
        <h2 className={Tailwind.merge(.[Styles.h2])}> {"chatbubble"->Utils.str} </h2>
      </div>
      <div className={Tailwind.merge(.[Styles.block])}>
        <IonIcons.Filled.chatbubbleEllipses />
        <h2 className={Tailwind.merge(.[Styles.h2])}> {"chatbubbleEllipses"->Utils.str} </h2>
      </div>
      <div className={Tailwind.merge(.[Styles.block])}>
        <IonIcons.Filled.chatbubbles />
        <h2 className={Tailwind.merge(.[Styles.h2])}> {"chatbubbles"->Utils.str} </h2>
      </div>
      <div className={Tailwind.merge(.[Styles.block])}>
        <IonIcons.Filled.checkbox />
        <h2 className={Tailwind.merge(.[Styles.h2])}> {"checkbox"->Utils.str} </h2>
      </div>
      <div className={Tailwind.merge(.[Styles.block])}>
        <IonIcons.Filled.checkmark />
        <h2 className={Tailwind.merge(.[Styles.h2])}> {"checkmark"->Utils.str} </h2>
      </div>
      <div className={Tailwind.merge(.[Styles.block])}>
        <IonIcons.Filled.checkmarkCircle />
        <h2 className={Tailwind.merge(.[Styles.h2])}> {"checkmarkDone"->Utils.str} </h2>
      </div>
      <div className={Tailwind.merge(.[Styles.block])}>
        <IonIcons.Filled.checkmarkDone />
        <h2 className={Tailwind.merge(.[Styles.h2])}> {"checkmarkDone"->Utils.str} </h2>
      </div>
      <div className={Tailwind.merge(.[Styles.block])}>
        <IonIcons.Filled.checkmarkDoneCircle />
        <h2 className={Tailwind.merge(.[Styles.h2])}> {"checkmarkDoneCircle"->Utils.str} </h2>
      </div>
      <div className={Tailwind.merge(.[Styles.block])}>
        <IonIcons.Filled.chevronBack />
        <h2 className={Tailwind.merge(.[Styles.h2])}> {"chevronBack"->Utils.str} </h2>
      </div>
      // <div className={Tailwind.merge(.[Styles.block])}>
      //   <IonIcons.Filled.caretForwardCircle />
      //   <h2 className={Tailwind.merge(.[Styles.h2])}> {"caretForwardCircle"->Utils.str} </h2>
      // </div>
      // <div className={Tailwind.merge(.[Styles.block])}>
      //   <IonIcons.Filled.caretForwardCircle />
      //   <h2 className={Tailwind.merge(.[Styles.h2])}> {"caretForwardCircle"->Utils.str} </h2>
      // </div>
      // <div className={Tailwind.merge(.[Styles.block])}>
      //   <IonIcons.Filled.caretForwardCircle />
      //   <h2 className={Tailwind.merge(.[Styles.h2])}> {"caretForwardCircle"->Utils.str} </h2>
      // </div>
      // <div className={Tailwind.merge(.[Styles.block])}>
      //   <IonIcons.Filled.caretForwardCircle />
      //   <h2 className={Tailwind.merge(.[Styles.h2])}> {"caretForwardCircle"->Utils.str} </h2>
      // </div>
      // <div className={Tailwind.merge(.[Styles.block])}>
      //   <IonIcons.Filled.caretForwardCircle />
      //   <h2 className={Tailwind.merge(.[Styles.h2])}> {"caretForwardCircle"->Utils.str} </h2>
      // </div>
      // <div className={Tailwind.merge(.[Styles.block])}>
      //   <IonIcons.Filled.caretForwardCircle />
      //   <h2 className={Tailwind.merge(.[Styles.h2])}> {"caretForwardCircle"->Utils.str} </h2>
      // </div>
      // <div className={Tailwind.merge(.[Styles.block])}>
      //   <IonIcons.Filled.caretForwardCircle />
      //   <h2 className={Tailwind.merge(.[Styles.h2])}> {"caretForwardCircle"->Utils.str} </h2>
      // </div>
      // <div className={Tailwind.merge(.[Styles.block])}>
      //   <IonIcons.Filled.caretForwardCircle />
      //   <h2 className={Tailwind.merge(.[Styles.h2])}> {"caretForwardCircle"->Utils.str} </h2>
      // </div>
      // <div className={Tailwind.merge(.[Styles.block])}>
      //   <IonIcons.Filled.caretForwardCircle />
      //   <h2 className={Tailwind.merge(.[Styles.h2])}> {"caretForwardCircle"->Utils.str} </h2>
      // </div>
      // <div className={Tailwind.merge(.[Styles.block])}>
      //   <IonIcons.Filled.caretForwardCircle />
      //   <h2 className={Tailwind.merge(.[Styles.h2])}> {"caretForwardCircle"->Utils.str} </h2>
      // </div>
      // ten
      // icons
      // <div className={Tailwind.merge(.[Styles.block])}>
      //   <IonIcons.Filled.caretForwardCircle />
      //   <h2 className={Tailwind.merge(.[Styles.h2])}> {"caretForwardCircle"->Utils.str} </h2>
      // </div>
      // <div className={Tailwind.merge(.[Styles.block])}>
      //   <IonIcons.Filled.caretForwardCircle />
      //   <h2 className={Tailwind.merge(.[Styles.h2])}> {"caretForwardCircle"->Utils.str} </h2>
      // </div>
      // <div className={Tailwind.merge(.[Styles.block])}>
      //   <IonIcons.Filled.caretForwardCircle />
      //   <h2 className={Tailwind.merge(.[Styles.h2])}> {"caretForwardCircle"->Utils.str} </h2>
      // </div>
      // <div className={Tailwind.merge(.[Styles.block])}>
      //   <IonIcons.Filled.caretForwardCircle />
      //   <h2 className={Tailwind.merge(.[Styles.h2])}> {"caretForwardCircle"->Utils.str} </h2>
      // </div>
      // <div className={Tailwind.merge(.[Styles.block])}>
      //   <IonIcons.Filled.caretForwardCircle />
      //   <h2 className={Tailwind.merge(.[Styles.h2])}> {"caretForwardCircle"->Utils.str} </h2>
      // </div>
      // <div className={Tailwind.merge(.[Styles.block])}>
      //   <IonIcons.Filled.caretForwardCircle />
      //   <h2 className={Tailwind.merge(.[Styles.h2])}> {"caretForwardCircle"->Utils.str} </h2>
      // </div>
      // <div className={Tailwind.merge(.[Styles.block])}>
      //   <IonIcons.Filled.caretForwardCircle />
      //   <h2 className={Tailwind.merge(.[Styles.h2])}> {"caretForwardCircle"->Utils.str} </h2>
      // </div>
      // <div className={Tailwind.merge(.[Styles.block])}>
      //   <IonIcons.Filled.caretForwardCircle />
      //   <h2 className={Tailwind.merge(.[Styles.h2])}> {"caretForwardCircle"->Utils.str} </h2>
      // </div>
      // <div className={Tailwind.merge(.[Styles.block])}>
      //   <IonIcons.Filled.caretForwardCircle />
      //   <h2 className={Tailwind.merge(.[Styles.h2])}> {"caretForwardCircle"->Utils.str} </h2>
      // </div>
      // <div className={Tailwind.merge(.[Styles.block])}>
      //   <IonIcons.Filled.caretForwardCircle />
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
      <div className={Tailwind.merge(.[Styles.block])}>
        <IonIcons.Logos.amazon />
        <h2 className={Tailwind.merge(.[Styles.h2])}> {"amazon"->Utils.str} </h2>
      </div>
      <div className={Tailwind.merge(.[Styles.block])}>
        <IonIcons.Logos.amplify />
        <h2 className={Tailwind.merge(.[Styles.h2])}> {"amplify"->Utils.str} </h2>
      </div>
      <div className={Tailwind.merge(.[Styles.block])}>
        <IonIcons.Logos.android />
        <h2 className={Tailwind.merge(.[Styles.h2])}> {"android"->Utils.str} </h2>
      </div>
      <div className={Tailwind.merge(.[Styles.block])}>
        <IonIcons.Logos.angular />
        <h2 className={Tailwind.merge(.[Styles.h2])}> {"angular"->Utils.str} </h2>
      </div>
      <div className={Tailwind.merge(.[Styles.block])}>
        <IonIcons.Logos.apple />
        <h2 className={Tailwind.merge(.[Styles.h2])}> {"apple"->Utils.str} </h2>
      </div>
      <div className={Tailwind.merge(.[Styles.block])}>
        <IonIcons.Logos.appleAppStore />
        <h2 className={Tailwind.merge(.[Styles.h2])}> {"appleAppStore"->Utils.str} </h2>
      </div>
      <div className={Tailwind.merge(.[Styles.block])}>
        <IonIcons.Logos.appleAr />
        <h2 className={Tailwind.merge(.[Styles.h2])}> {"appleAr"->Utils.str} </h2>
      </div>
      <div className={Tailwind.merge(.[Styles.block])}>
        <IonIcons.Logos.behance />
        <h2 className={Tailwind.merge(.[Styles.h2])}> {"behance"->Utils.str} </h2>
      </div>
      <div className={Tailwind.merge(.[Styles.block])}>
        <IonIcons.Logos.bitBucket />
        <h2 className={Tailwind.merge(.[Styles.h2])}> {"bitBucket"->Utils.str} </h2>
      </div>
      <div className={Tailwind.merge(.[Styles.block])}>
        <IonIcons.Logos.bitCoin />
        <h2 className={Tailwind.merge(.[Styles.h2])}> {"bitCoin"->Utils.str} </h2>
      </div>
      <div className={Tailwind.merge(.[Styles.block])}>
        <IonIcons.Logos.buffer />
        <h2 className={Tailwind.merge(.[Styles.h2])}> {"buffer"->Utils.str} </h2>
      </div>
      <div className={Tailwind.merge(.[Styles.block])}>
        <IonIcons.Logos.capacitor />
        <h2 className={Tailwind.merge(.[Styles.h2])}> {"capacitor"->Utils.str} </h2>
      </div>
      <div className={Tailwind.merge(.[Styles.block])}>
        <IonIcons.Logos.chrome />
        <h2 className={Tailwind.merge(.[Styles.h2])}> {"chrome"->Utils.str} </h2>
      </div>
      <div className={Tailwind.merge(.[Styles.block])}>
        <IonIcons.Logos.closedCaptioning />
        <h2 className={Tailwind.merge(.[Styles.h2])}> {"closedCaptioning"->Utils.str} </h2>
      </div>
      <div className={Tailwind.merge(.[Styles.block])}>
        <IonIcons.Logos.codepen />
        <h2 className={Tailwind.merge(.[Styles.h2])}> {"codepen"->Utils.str} </h2>
      </div>
      <div className={Tailwind.merge(.[Styles.block])}>
        <IonIcons.Logos.css3 />
        <h2 className={Tailwind.merge(.[Styles.h2])}> {"css3"->Utils.str} </h2>
      </div>
      <div className={Tailwind.merge(.[Styles.block])}>
        <IonIcons.Logos.designerNews />
        <h2 className={Tailwind.merge(.[Styles.h2])}> {"designerNews"->Utils.str} </h2>
      </div>
      <div className={Tailwind.merge(.[Styles.block])}>
        <IonIcons.Logos.devianStart />
        <h2 className={Tailwind.merge(.[Styles.h2])}> {"devianStart"->Utils.str} </h2>
      </div>
      <div className={Tailwind.merge(.[Styles.block])}>
        <IonIcons.Logos.discord />
        <h2 className={Tailwind.merge(.[Styles.h2])}> {"discord"->Utils.str} </h2>
      </div>
      <div className={Tailwind.merge(.[Styles.block])}>
        <IonIcons.Logos.docker />
        <h2 className={Tailwind.merge(.[Styles.h2])}> {"docker"->Utils.str} </h2>
      </div>
      <div className={Tailwind.merge(.[Styles.block])}>
        <IonIcons.Logos.dribbble />
        <h2 className={Tailwind.merge(.[Styles.h2])}> {"dribbble"->Utils.str} </h2>
      </div>
      <div className={Tailwind.merge(.[Styles.block])}>
        <IonIcons.Logos.dropBox />
        <h2 className={Tailwind.merge(.[Styles.h2])}> {"dropBox"->Utils.str} </h2>
      </div>
      <div className={Tailwind.merge(.[Styles.block])}>
        <IonIcons.Logos.edge />
        <h2 className={Tailwind.merge(.[Styles.h2])}> {"edge"->Utils.str} </h2>
      </div>
      <div className={Tailwind.merge(.[Styles.block])}>
        <IonIcons.Logos.electron />
        <h2 className={Tailwind.merge(.[Styles.h2])}> {"electron"->Utils.str} </h2>
      </div>
      <div className={Tailwind.merge(.[Styles.block])}>
        <IonIcons.Logos.euro />
        <h2 className={Tailwind.merge(.[Styles.h2])}> {"euro"->Utils.str} </h2>
      </div>
      <div className={Tailwind.merge(.[Styles.block])}>
        <IonIcons.Logos.facebook />
        <h2 className={Tailwind.merge(.[Styles.h2])}> {"facebook"->Utils.str} </h2>
      </div>
      <div className={Tailwind.merge(.[Styles.block])}>
        <IonIcons.Logos.figma />
        <h2 className={Tailwind.merge(.[Styles.h2])}> {"figma"->Utils.str} </h2>
      </div>
      <div className={Tailwind.merge(.[Styles.block])}>
        <IonIcons.Logos.fireBase />
        <h2 className={Tailwind.merge(.[Styles.h2])}> {"fireBase"->Utils.str} </h2>
      </div>
      <div className={Tailwind.merge(.[Styles.block])}>
        <IonIcons.Logos.fireFox />
        <h2 className={Tailwind.merge(.[Styles.h2])}> {"fireFox"->Utils.str} </h2>
      </div>
      <div className={Tailwind.merge(.[Styles.block])}>
        <IonIcons.Logos.flickr />
        <h2 className={Tailwind.merge(.[Styles.h2])}> {"flickr"->Utils.str} </h2>
      </div>
      <div className={Tailwind.merge(.[Styles.block])}>
        <IonIcons.Logos.fourSquare />
        <h2 className={Tailwind.merge(.[Styles.h2])}> {"fourSquare"->Utils.str} </h2>
      </div>
      <div className={Tailwind.merge(.[Styles.block])}>
        <IonIcons.Logos.github />
        <h2 className={Tailwind.merge(.[Styles.h2])}> {"github"->Utils.str} </h2>
      </div>
      <div className={Tailwind.merge(.[Styles.block])}>
        <IonIcons.Logos.gitlab />
        <h2 className={Tailwind.merge(.[Styles.h2])}> {"gitlab"->Utils.str} </h2>
      </div>
      <div className={Tailwind.merge(.[Styles.block])}>
        <IonIcons.Logos.google />
        <h2 className={Tailwind.merge(.[Styles.h2])}> {"google"->Utils.str} </h2>
      </div>
      <div className={Tailwind.merge(.[Styles.block])}>
        <IonIcons.Logos.googlePlayStore />
        <h2 className={Tailwind.merge(.[Styles.h2])}> {"googlePlayStore"->Utils.str} </h2>
      </div>
      <div className={Tailwind.merge(.[Styles.block])}>
        <IonIcons.Logos.hackerNews />
        <h2 className={Tailwind.merge(.[Styles.h2])}> {"hackerNews"->Utils.str} </h2>
      </div>
      <div className={Tailwind.merge(.[Styles.block])}>
        <IonIcons.Logos.html5 />
        <h2 className={Tailwind.merge(.[Styles.h2])}> {"html5"->Utils.str} </h2>
      </div>
      <div className={Tailwind.merge(.[Styles.block])}>
        <IonIcons.Logos.instagram />
        <h2 className={Tailwind.merge(.[Styles.h2])}> {"instagram"->Utils.str} </h2>
      </div>
      <div className={Tailwind.merge(.[Styles.block])}>
        <IonIcons.Logos.ionic />
        <h2 className={Tailwind.merge(.[Styles.h2])}> {"ionic"->Utils.str} </h2>
      </div>
      <div className={Tailwind.merge(.[Styles.block])}>
        <IonIcons.Logos.ionitron />
        <h2 className={Tailwind.merge(.[Styles.h2])}> {"ionitron"->Utils.str} </h2>
      </div>
      <div className={Tailwind.merge(.[Styles.block])}>
        <IonIcons.Logos.javascript />
        <h2 className={Tailwind.merge(.[Styles.h2])}> {"javascript"->Utils.str} </h2>
      </div>
      <div className={Tailwind.merge(.[Styles.block])}>
        <IonIcons.Logos.laravel />
        <h2 className={Tailwind.merge(.[Styles.h2])}> {"laravel"->Utils.str} </h2>
      </div>
      <div className={Tailwind.merge(.[Styles.block])}>
        <IonIcons.Logos.linkedin />
        <h2 className={Tailwind.merge(.[Styles.h2])}> {"linkedin"->Utils.str} </h2>
      </div>
      <div className={Tailwind.merge(.[Styles.block])}>
        <IonIcons.Logos.markDown />
        <h2 className={Tailwind.merge(.[Styles.h2])}> {"markDown"->Utils.str} </h2>
      </div>
      <div className={Tailwind.merge(.[Styles.block])}>
        <IonIcons.Logos.mastodon />
        <h2 className={Tailwind.merge(.[Styles.h2])}> {"mastodon"->Utils.str} </h2>
      </div>
      <div className={Tailwind.merge(.[Styles.block])}>
        <IonIcons.Logos.medium />
        <h2 className={Tailwind.merge(.[Styles.h2])}> {"medium"->Utils.str} </h2>
      </div>
      <div className={Tailwind.merge(.[Styles.block])}>
        <IonIcons.Logos.microsoft />
        <h2 className={Tailwind.merge(.[Styles.h2])}> {"microsoft"->Utils.str} </h2>
      </div>
      <div className={Tailwind.merge(.[Styles.block])}>
        <IonIcons.Logos.noSmoking />
        <h2 className={Tailwind.merge(.[Styles.h2])}> {"noSmoking"->Utils.str} </h2>
      </div>
      <div className={Tailwind.merge(.[Styles.block])}>
        <IonIcons.Logos.nodejs />
        <h2 className={Tailwind.merge(.[Styles.h2])}> {"nodejs"->Utils.str} </h2>
      </div>
      <div className={Tailwind.merge(.[Styles.block])}>
        <IonIcons.Logos.npm />
        <h2 className={Tailwind.merge(.[Styles.h2])}> {"npm"->Utils.str} </h2>
      </div>
      <div className={Tailwind.merge(.[Styles.block])}>
        <IonIcons.Logos.octocat />
        <h2 className={Tailwind.merge(.[Styles.h2])}> {"octocat"->Utils.str} </h2>
      </div>
      <div className={Tailwind.merge(.[Styles.block])}>
        <IonIcons.Logos.paypal />
        <h2 className={Tailwind.merge(.[Styles.h2])}> {"paypal"->Utils.str} </h2>
      </div>
      <div className={Tailwind.merge(.[Styles.block])}>
        <IonIcons.Logos.pinterest />
        <h2 className={Tailwind.merge(.[Styles.h2])}> {"pinterest"->Utils.str} </h2>
      </div>
      <div className={Tailwind.merge(.[Styles.block])}>
        <IonIcons.Logos.playstation />
        <h2 className={Tailwind.merge(.[Styles.h2])}> {"playstation"->Utils.str} </h2>
      </div>
      <div className={Tailwind.merge(.[Styles.block])}>
        <IonIcons.Logos.pwa />
        <h2 className={Tailwind.merge(.[Styles.h2])}> {"pwa"->Utils.str} </h2>
      </div>
      <div className={Tailwind.merge(.[Styles.block])}>
        <IonIcons.Logos.python />
        <h2 className={Tailwind.merge(.[Styles.h2])}> {"python"->Utils.str} </h2>
      </div>
      <div className={Tailwind.merge(.[Styles.block])}>
        <IonIcons.Logos.react />
        <h2 className={Tailwind.merge(.[Styles.h2])}> {"react"->Utils.str} </h2>
      </div>
      <div className={Tailwind.merge(.[Styles.block])}>
        <IonIcons.Logos.reddit />
        <h2 className={Tailwind.merge(.[Styles.h2])}> {"reddit"->Utils.str} </h2>
      </div>
      <div className={Tailwind.merge(.[Styles.block])}>
        <IonIcons.Logos.rrs />
        <h2 className={Tailwind.merge(.[Styles.h2])}> {"rrs"->Utils.str} </h2>
      </div>
      <div className={Tailwind.merge(.[Styles.block])}>
        <IonIcons.Logos.sass />
        <h2 className={Tailwind.merge(.[Styles.h2])}> {"sass"->Utils.str} </h2>
      </div>
      <div className={Tailwind.merge(.[Styles.block])}>
        <IonIcons.Logos.skype />
        <h2 className={Tailwind.merge(.[Styles.h2])}> {"skype"->Utils.str} </h2>
      </div>
      <div className={Tailwind.merge(.[Styles.block])}>
        <IonIcons.Logos.slack />
        <h2 className={Tailwind.merge(.[Styles.h2])}> {"slack"->Utils.str} </h2>
      </div>
      <div className={Tailwind.merge(.[Styles.block])}>
        <IonIcons.Logos.snapChat />
        <h2 className={Tailwind.merge(.[Styles.h2])}> {"snapChat"->Utils.str} </h2>
      </div>
      <div className={Tailwind.merge(.[Styles.block])}>
        <IonIcons.Logos.soundCloud />
        <h2 className={Tailwind.merge(.[Styles.h2])}> {"soundCloud"->Utils.str} </h2>
      </div>
      <div className={Tailwind.merge(.[Styles.block])}>
        <IonIcons.Logos.stackOverFlow />
        <h2 className={Tailwind.merge(.[Styles.h2])}> {"stackOverFlow"->Utils.str} </h2>
      </div>
      <div className={Tailwind.merge(.[Styles.block])}>
        <IonIcons.Logos.steam />
        <h2 className={Tailwind.merge(.[Styles.h2])}> {"steam"->Utils.str} </h2>
      </div>
      <div className={Tailwind.merge(.[Styles.block])}>
        <IonIcons.Logos.stencil />
        <h2 className={Tailwind.merge(.[Styles.h2])}> {"stencil"->Utils.str} </h2>
      </div>
      <div className={Tailwind.merge(.[Styles.block])}>
        <IonIcons.Logos.tableau />
        <h2 className={Tailwind.merge(.[Styles.h2])}> {"tableau"->Utils.str} </h2>
      </div>
      <div className={Tailwind.merge(.[Styles.block])}>
        <IonIcons.Logos.tikTok />
        <h2 className={Tailwind.merge(.[Styles.h2])}> {"tikTok"->Utils.str} </h2>
      </div>
      <div className={Tailwind.merge(.[Styles.block])}>
        <IonIcons.Logos.tumblr />
        <h2 className={Tailwind.merge(.[Styles.h2])}> {"tumblr"->Utils.str} </h2>
      </div>
      <div className={Tailwind.merge(.[Styles.block])}>
        <IonIcons.Logos.tux />
        <h2 className={Tailwind.merge(.[Styles.h2])}> {"tux"->Utils.str} </h2>
      </div>
      <div className={Tailwind.merge(.[Styles.block])}>
        <IonIcons.Logos.twitch />
        <h2 className={Tailwind.merge(.[Styles.h2])}> {"twitch"->Utils.str} </h2>
      </div>
      <div className={Tailwind.merge(.[Styles.block])}>
        <IonIcons.Logos.twitter />
        <h2 className={Tailwind.merge(.[Styles.h2])}> {"twitter"->Utils.str} </h2>
      </div>
      <div className={Tailwind.merge(.[Styles.block])}>
        <IonIcons.Logos.usd />
        <h2 className={Tailwind.merge(.[Styles.h2])}> {"usd"->Utils.str} </h2>
      </div>
      <div className={Tailwind.merge(.[Styles.block])}>
        <IonIcons.Logos.venmo />
        <h2 className={Tailwind.merge(.[Styles.h2])}> {"venmo"->Utils.str} </h2>
      </div>
      <div className={Tailwind.merge(.[Styles.block])}>
        <IonIcons.Logos.vercel />
        <h2 className={Tailwind.merge(.[Styles.h2])}> {"vercel"->Utils.str} </h2>
      </div>
      <div className={Tailwind.merge(.[Styles.block])}>
        <IonIcons.Logos.vimeo />
        <h2 className={Tailwind.merge(.[Styles.h2])}> {"vimeo"->Utils.str} </h2>
      </div>
      <div className={Tailwind.merge(.[Styles.block])}>
        <IonIcons.Logos.vk /> <h2 className={Tailwind.merge(.[Styles.h2])}> {"vk"->Utils.str} </h2>
      </div>
      <div className={Tailwind.merge(.[Styles.block])}>
        <IonIcons.Logos.vue />
        <h2 className={Tailwind.merge(.[Styles.h2])}> {"vue"->Utils.str} </h2>
      </div>
      <div className={Tailwind.merge(.[Styles.block])}>
        <IonIcons.Logos.webComponent />
        <h2 className={Tailwind.merge(.[Styles.h2])}> {"webComponent"->Utils.str} </h2>
      </div>
      <div className={Tailwind.merge(.[Styles.block])}>
        <IonIcons.Logos.weChat />
        <h2 className={Tailwind.merge(.[Styles.h2])}> {"weChat"->Utils.str} </h2>
      </div>
      <div className={Tailwind.merge(.[Styles.block])}>
        <IonIcons.Logos.whatsapp />
        <h2 className={Tailwind.merge(.[Styles.h2])}> {"whatsapp"->Utils.str} </h2>
      </div>
      <div className={Tailwind.merge(.[Styles.block])}>
        <IonIcons.Logos.windows />
        <h2 className={Tailwind.merge(.[Styles.h2])}> {"windows"->Utils.str} </h2>
      </div>
      <div className={Tailwind.merge(.[Styles.block])}>
        <IonIcons.Logos.wordpress />
        <h2 className={Tailwind.merge(.[Styles.h2])}> {"wordpress"->Utils.str} </h2>
      </div>
      <div className={Tailwind.merge(.[Styles.block])}>
        <IonIcons.Logos.xbox />
        <h2 className={Tailwind.merge(.[Styles.h2])}> {"xbox"->Utils.str} </h2>
      </div>
      <div className={Tailwind.merge(.[Styles.block])}>
        <IonIcons.Logos.xing />
        <h2 className={Tailwind.merge(.[Styles.h2])}> {"xing"->Utils.str} </h2>
      </div>
      <div className={Tailwind.merge(.[Styles.block])}>
        <IonIcons.Logos.yahoo />
        <h2 className={Tailwind.merge(.[Styles.h2])}> {"yahoo"->Utils.str} </h2>
      </div>
      <div className={Tailwind.merge(.[Styles.block])}>
        <IonIcons.Logos.yen />
        <h2 className={Tailwind.merge(.[Styles.h2])}> {"yen"->Utils.str} </h2>
      </div>
      <div className={Tailwind.merge(.[Styles.block])}>
        <IonIcons.Logos.youtube />
        <h2 className={Tailwind.merge(.[Styles.h2])}> {"youtube"->Utils.str} </h2>
      </div>
    </div>
  </div>
}