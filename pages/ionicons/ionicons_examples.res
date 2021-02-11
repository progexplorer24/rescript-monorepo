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

  let svgString = "<svg xmlns='http://www.w3.org/2000/svg' class='ionicon' viewBox='0 0 512 512'><title>Business</title><path d='M320 176V16H32v480h128v-96h32v96h288V176zM112 432H80v-32h32zm0-80H80v-32h32zm0-80H80v-32h32zm0-80H80v-32h32zm0-80H80V80h32zm128-32h32v32h-32zm-48 272h-32v-32h32zm0-80h-32v-32h32zm0-80h-32v-32h32zm0-80h-32V80h32zm80 320h-32v-32h32zm0-80h-32v-32h32zm0-80h-32v-32h32zm0-80h-32v-32h32v32zm176 272H320v-32h32v-32h-32v-48h32v-32h-32v-48h32v-32h-32v-32h128z'/><path d='M384 400h32v32h-32zM384 320h32v32h-32zM384 240h32v32h-32z'/></svg>"
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
        <IonIcons.Sharp.analytics />
        <h2 className={Tailwind.merge(.[Styles.h2])}> {"analytics"->Utils.str} </h2>
      </div>
      <div className={Tailwind.merge(.[Styles.block])}>
        <IonIcons.Sharp.apeture />
        <h2 className={Tailwind.merge(.[Styles.h2])}> {"apeture"->Utils.str} </h2>
      </div>
      <div className={Tailwind.merge(.[Styles.block])}>
        <IonIcons.Sharp.apps />
        <h2 className={Tailwind.merge(.[Styles.h2])}> {"apps"->Utils.str} </h2>
      </div>
      <div className={Tailwind.merge(.[Styles.block])}>
        <IonIcons.Sharp.archive />
        <h2 className={Tailwind.merge(.[Styles.h2])}> {"archive"->Utils.str} </h2>
      </div>
      <div className={Tailwind.merge(.[Styles.block])}>
        <IonIcons.Sharp.arrowBack />
        <h2 className={Tailwind.merge(.[Styles.h2])}> {"arrowBack"->Utils.str} </h2>
      </div>
      <div className={Tailwind.merge(.[Styles.block])}>
        <IonIcons.Sharp.arrowBackCircle />
        <h2 className={Tailwind.merge(.[Styles.h2])}> {"arrowBackCircle"->Utils.str} </h2>
      </div>
      <div className={Tailwind.merge(.[Styles.block])}>
        <IonIcons.Sharp.arrowDown />
        <h2 className={Tailwind.merge(.[Styles.h2])}> {"arrowDown"->Utils.str} </h2>
      </div>
      <div className={Tailwind.merge(.[Styles.block])}>
        <IonIcons.Sharp.arrowDownCircle />
        <h2 className={Tailwind.merge(.[Styles.h2])}> {"arrowDownCircle"->Utils.str} </h2>
      </div>
      <div className={Tailwind.merge(.[Styles.block])}>
        <IonIcons.Sharp.arrowForward />
        <h2 className={Tailwind.merge(.[Styles.h2])}> {"arrowForward"->Utils.str} </h2>
      </div>
      <div className={Tailwind.merge(.[Styles.block])}>
        <IonIcons.Sharp.arrowForwardCircle />
        <h2 className={Tailwind.merge(.[Styles.h2])}> {"arrowForwardCircle"->Utils.str} </h2>
      </div>
      <div className={Tailwind.merge(.[Styles.block])}>
        <IonIcons.Sharp.arrowRedo />
        <h2 className={Tailwind.merge(.[Styles.h2])}> {"arrowRedo"->Utils.str} </h2>
      </div>
      <div className={Tailwind.merge(.[Styles.block])}>
        <IonIcons.Sharp.arrowRedoCircle />
        <h2 className={Tailwind.merge(.[Styles.h2])}> {"arrowRedoCircle"->Utils.str} </h2>
      </div>
      <div className={Tailwind.merge(.[Styles.block])}>
        <IonIcons.Sharp.arrowUndo />
        <h2 className={Tailwind.merge(.[Styles.h2])}> {"arrowUndo"->Utils.str} </h2>
      </div>
      <div className={Tailwind.merge(.[Styles.block])}>
        <IonIcons.Sharp.arrowUndoCircle />
        <h2 className={Tailwind.merge(.[Styles.h2])}> {"arrowUndoCircle"->Utils.str} </h2>
      </div>
      <div className={Tailwind.merge(.[Styles.block])}>
        <IonIcons.Sharp.arrowUp />
        <h2 className={Tailwind.merge(.[Styles.h2])}> {"arrowUp"->Utils.str} </h2>
      </div>
      <div className={Tailwind.merge(.[Styles.block])}>
        <IonIcons.Sharp.arrowUpCircle />
        <h2 className={Tailwind.merge(.[Styles.h2])}> {"arrowUpCircle"->Utils.str} </h2>
      </div>
      <div className={Tailwind.merge(.[Styles.block])}>
        <IonIcons.Sharp.at /> <h2 className={Tailwind.merge(.[Styles.h2])}> {"at"->Utils.str} </h2>
      </div>
      <div className={Tailwind.merge(.[Styles.block])}>
        <IonIcons.Sharp.atCircle />
        <h2 className={Tailwind.merge(.[Styles.h2])}> {"atCircle"->Utils.str} </h2>
      </div>
      <div className={Tailwind.merge(.[Styles.block])}>
        <IonIcons.Sharp.attach />
        <h2 className={Tailwind.merge(.[Styles.h2])}> {"attach"->Utils.str} </h2>
      </div>
      <div className={Tailwind.merge(.[Styles.block])}>
        <IonIcons.Sharp.backspace />
        <h2 className={Tailwind.merge(.[Styles.h2])}> {"backspace"->Utils.str} </h2>
      </div>
      <div className={Tailwind.merge(.[Styles.block])}>
        <IonIcons.Sharp.bag />
        <h2 className={Tailwind.merge(.[Styles.h2])}> {"bag"->Utils.str} </h2>
      </div>
      <div className={Tailwind.merge(.[Styles.block])}>
        <IonIcons.Sharp.bagAdd />
        <h2 className={Tailwind.merge(.[Styles.h2])}> {"bagAdd"->Utils.str} </h2>
      </div>
      <div className={Tailwind.merge(.[Styles.block])}>
        <IonIcons.Sharp.bagCheck />
        <h2 className={Tailwind.merge(.[Styles.h2])}> {"bagCheck"->Utils.str} </h2>
      </div>
      <div className={Tailwind.merge(.[Styles.block])}>
        <IonIcons.Sharp.bagRemove />
        <h2 className={Tailwind.merge(.[Styles.h2])}> {"bagRemove"->Utils.str} </h2>
      </div>
      <div className={Tailwind.merge(.[Styles.block])}>
        <IonIcons.Sharp.balloon />
        <h2 className={Tailwind.merge(.[Styles.h2])}> {"balloon"->Utils.str} </h2>
      </div>
      <div className={Tailwind.merge(.[Styles.block])}>
        <IonIcons.Sharp.ban />
        <h2 className={Tailwind.merge(.[Styles.h2])}> {"ban"->Utils.str} </h2>
      </div>
      <div className={Tailwind.merge(.[Styles.block])}>
        <IonIcons.Sharp.bandage />
        <h2 className={Tailwind.merge(.[Styles.h2])}> {"bandage"->Utils.str} </h2>
      </div>
      <div className={Tailwind.merge(.[Styles.block])}>
        <IonIcons.Sharp.barChart />
        <h2 className={Tailwind.merge(.[Styles.h2])}> {"barChart"->Utils.str} </h2>
      </div>
      <div className={Tailwind.merge(.[Styles.block])}>
        <IonIcons.Sharp.barbell />
        <h2 className={Tailwind.merge(.[Styles.h2])}> {"barbell"->Utils.str} </h2>
      </div>
      <div className={Tailwind.merge(.[Styles.block])}>
        <IonIcons.Sharp.barcode />
        <h2 className={Tailwind.merge(.[Styles.h2])}> {"barcode"->Utils.str} </h2>
      </div>
      <div className={Tailwind.merge(.[Styles.block])}>
        <IonIcons.Sharp.baseballe />
        <h2 className={Tailwind.merge(.[Styles.h2])}> {"baseballe"->Utils.str} </h2>
      </div>
      <div className={Tailwind.merge(.[Styles.block])}>
        <IonIcons.Sharp.basket />
        <h2 className={Tailwind.merge(.[Styles.h2])}> {"basket"->Utils.str} </h2>
      </div>
      <div className={Tailwind.merge(.[Styles.block])}>
        <IonIcons.Sharp.basketball />
        <h2 className={Tailwind.merge(.[Styles.h2])}> {"basketball"->Utils.str} </h2>
      </div>
      <div className={Tailwind.merge(.[Styles.block])}>
        <IonIcons.Sharp.batteryCharging />
        <h2 className={Tailwind.merge(.[Styles.h2])}> {"batteryCharging"->Utils.str} </h2>
      </div>
      <div className={Tailwind.merge(.[Styles.block])}>
        <IonIcons.Sharp.batteryDead />
        <h2 className={Tailwind.merge(.[Styles.h2])}> {"batteryDead"->Utils.str} </h2>
      </div>
      <div className={Tailwind.merge(.[Styles.block])}>
        <IonIcons.Sharp.batteryFull />
        <h2 className={Tailwind.merge(.[Styles.h2])}> {"batteryFull"->Utils.str} </h2>
      </div>
      <div className={Tailwind.merge(.[Styles.block])}>
        <IonIcons.Sharp.batteryHalf />
        <h2 className={Tailwind.merge(.[Styles.h2])}> {"batteryHalf"->Utils.str} </h2>
      </div>
      <div className={Tailwind.merge(.[Styles.block])}>
        <IonIcons.Sharp.beaker />
        <h2 className={Tailwind.merge(.[Styles.h2])}> {"beaker"->Utils.str} </h2>
      </div>
      <div className={Tailwind.merge(.[Styles.block])}>
        <IonIcons.Sharp.bed />
        <h2 className={Tailwind.merge(.[Styles.h2])}> {"bed"->Utils.str} </h2>
      </div>
      <div className={Tailwind.merge(.[Styles.block])}>
        <IonIcons.Sharp.beer />
        <h2 className={Tailwind.merge(.[Styles.h2])}> {"beer"->Utils.str} </h2>
      </div>
      <div className={Tailwind.merge(.[Styles.block])}>
        <IonIcons.Sharp.bicycle />
        <h2 className={Tailwind.merge(.[Styles.h2])}> {"bicycle"->Utils.str} </h2>
      </div>
      <div className={Tailwind.merge(.[Styles.block])}>
        <IonIcons.Sharp.bluetooth />
        <h2 className={Tailwind.merge(.[Styles.h2])}> {"bluetooth"->Utils.str} </h2>
      </div>
      <div className={Tailwind.merge(.[Styles.block])}>
        <IonIcons.Sharp.boat />
        <h2 className={Tailwind.merge(.[Styles.h2])}> {"boat"->Utils.str} </h2>
      </div>
      <div className={Tailwind.merge(.[Styles.block])}>
        <IonIcons.Sharp.body />
        <h2 className={Tailwind.merge(.[Styles.h2])}> {"body"->Utils.str} </h2>
      </div>
      <div className={Tailwind.merge(.[Styles.block])}>
        <IonIcons.Sharp.bonfire />
        <h2 className={Tailwind.merge(.[Styles.h2])}> {"bonfire"->Utils.str} </h2>
      </div>
      <div className={Tailwind.merge(.[Styles.block])}>
        <IonIcons.Sharp.book />
        <h2 className={Tailwind.merge(.[Styles.h2])}> {"book"->Utils.str} </h2>
      </div>
      <div className={Tailwind.merge(.[Styles.block])}>
        <IonIcons.Sharp.bookmark />
        <h2 className={Tailwind.merge(.[Styles.h2])}> {"bookmark"->Utils.str} </h2>
      </div>
      <div className={Tailwind.merge(.[Styles.block])}>
        <IonIcons.Sharp.bookmarks />
        <h2 className={Tailwind.merge(.[Styles.h2])}> {"bookmarks"->Utils.str} </h2>
      </div>
      <div className={Tailwind.merge(.[Styles.block])}>
        <IonIcons.Sharp.bowlingBall />
        <h2 className={Tailwind.merge(.[Styles.h2])}> {"bowlingBall"->Utils.str} </h2>
      </div>
      <div className={Tailwind.merge(.[Styles.block])}>
        <IonIcons.Sharp.briefcase />
        <h2 className={Tailwind.merge(.[Styles.h2])}> {"briefcase"->Utils.str} </h2>
      </div>
      <div className={Tailwind.merge(.[Styles.block])}>
        <IonIcons.Sharp.browsers />
        <h2 className={Tailwind.merge(.[Styles.h2])}> {"browsers"->Utils.str} </h2>
      </div>
      <div className={Tailwind.merge(.[Styles.block])}>
        <IonIcons.Sharp.brush />
        <h2 className={Tailwind.merge(.[Styles.h2])}> {"brush"->Utils.str} </h2>
      </div>
      <div className={Tailwind.merge(.[Styles.block])}>
        <IonIcons.Sharp.bug />
        <h2 className={Tailwind.merge(.[Styles.h2])}> {"bug"->Utils.str} </h2>
      </div>
      <div className={Tailwind.merge(.[Styles.block])}>
        <IonIcons.Sharp.build />
        <h2 className={Tailwind.merge(.[Styles.h2])}> {"build"->Utils.str} </h2>
      </div>
      <div className={Tailwind.merge(.[Styles.block])}>
        <IonIcons.Sharp.bulb />
        <h2 className={Tailwind.merge(.[Styles.h2])}> {"bulb"->Utils.str} </h2>
      </div>
      <div className={Tailwind.merge(.[Styles.block])}>
        <IonIcons.Sharp.bus />
        <h2 className={Tailwind.merge(.[Styles.h2])}> {"bus"->Utils.str} </h2>
      </div>
      <div className={Tailwind.merge(.[Styles.block])}>
        <IonIcons.Sharp.business />
        <h2 className={Tailwind.merge(.[Styles.h2])}> {"business"->Utils.str} </h2>
      </div>
      <div className={Tailwind.merge(.[Styles.block])}>
        <IonIcons.Sharp.cafe />
        <h2 className={Tailwind.merge(.[Styles.h2])}> {"cafe"->Utils.str} </h2>
      </div>
      <div className={Tailwind.merge(.[Styles.block])}>
        <IonIcons.Sharp.calculator />
        <h2 className={Tailwind.merge(.[Styles.h2])}> {"calculator"->Utils.str} </h2>
      </div>
      <div className={Tailwind.merge(.[Styles.block])}>
        <IonIcons.Sharp.calendar />
        <h2 className={Tailwind.merge(.[Styles.h2])}> {"calendar"->Utils.str} </h2>
      </div>
      <div className={Tailwind.merge(.[Styles.block])}>
        <IonIcons.Sharp.calendarClear />
        <h2 className={Tailwind.merge(.[Styles.h2])}> {"calendarClear"->Utils.str} </h2>
      </div>
      <div className={Tailwind.merge(.[Styles.block])}>
        <IonIcons.Sharp.calendarNumber />
        <h2 className={Tailwind.merge(.[Styles.h2])}> {"calendarNumber"->Utils.str} </h2>
      </div>
      <div className={Tailwind.merge(.[Styles.block])}>
        <IonIcons.Sharp.call />
        <h2 className={Tailwind.merge(.[Styles.h2])}> {"call"->Utils.str} </h2>
      </div>
      <div className={Tailwind.merge(.[Styles.block])}>
        <IonIcons.Sharp.camera />
        <h2 className={Tailwind.merge(.[Styles.h2])}> {"camera"->Utils.str} </h2>
      </div>
      <div className={Tailwind.merge(.[Styles.block])}>
        <IonIcons.Sharp.cameraReverse />
        <h2 className={Tailwind.merge(.[Styles.h2])}> {"cameraReverse"->Utils.str} </h2>
      </div>
      <div className={Tailwind.merge(.[Styles.block])}>
        <IonIcons.Sharp.car />
        <h2 className={Tailwind.merge(.[Styles.h2])}> {"car"->Utils.str} </h2>
      </div>
      <div className={Tailwind.merge(.[Styles.block])}>
        <IonIcons.Sharp.carSport />
        <h2 className={Tailwind.merge(.[Styles.h2])}> {"carSport"->Utils.str} </h2>
      </div>
      <div className={Tailwind.merge(.[Styles.block])}>
        <IonIcons.Sharp.card />
        <h2 className={Tailwind.merge(.[Styles.h2])}> {"card"->Utils.str} </h2>
      </div>
      <div className={Tailwind.merge(.[Styles.block])}>
        <IonIcons.Sharp.caretBack />
        <h2 className={Tailwind.merge(.[Styles.h2])}> {"caretBack"->Utils.str} </h2>
      </div>
      <div className={Tailwind.merge(.[Styles.block])}>
        <IonIcons.Sharp.caretBackCircle />
        <h2 className={Tailwind.merge(.[Styles.h2])}> {"caretBackCircle"->Utils.str} </h2>
      </div>
      <div className={Tailwind.merge(.[Styles.block])}>
        <IonIcons.Sharp.caretDown />
        <h2 className={Tailwind.merge(.[Styles.h2])}> {"caretDown"->Utils.str} </h2>
      </div>
      <div className={Tailwind.merge(.[Styles.block])}>
        <IonIcons.Sharp.caretDownCircle />
        <h2 className={Tailwind.merge(.[Styles.h2])}> {"caretDownCircle"->Utils.str} </h2>
      </div>
      <div className={Tailwind.merge(.[Styles.block])}>
        <IonIcons.Sharp.caretForward />
        <h2 className={Tailwind.merge(.[Styles.h2])}> {"caretForward"->Utils.str} </h2>
      </div>
      <div className={Tailwind.merge(.[Styles.block])}>
        <IonIcons.Sharp.caretForwardCircle />
        <h2 className={Tailwind.merge(.[Styles.h2])}> {"caretForwardCircle"->Utils.str} </h2>
      </div>
      <div className={Tailwind.merge(.[Styles.block])}>
        <IonIcons.Sharp.caretUp />
        <h2 className={Tailwind.merge(.[Styles.h2])}> {"caretUp"->Utils.str} </h2>
      </div>
      <div className={Tailwind.merge(.[Styles.block])}>
        <IonIcons.Sharp.caretUpCircle />
        <h2 className={Tailwind.merge(.[Styles.h2])}> {"caretUpCircle"->Utils.str} </h2>
      </div>
      <div className={Tailwind.merge(.[Styles.block])}>
        <IonIcons.Sharp.cart />
        <h2 className={Tailwind.merge(.[Styles.h2])}> {"cart"->Utils.str} </h2>
      </div>
      <div className={Tailwind.merge(.[Styles.block])}>
        <IonIcons.Sharp.cash />
        <h2 className={Tailwind.merge(.[Styles.h2])}> {"cash"->Utils.str} </h2>
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
