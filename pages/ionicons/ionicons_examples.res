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

  let svgString = ""
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
      <div className={Tailwind.merge(.[Styles.block])}>
        <IonIcons.Filled.albums />
        <h2 className={Tailwind.merge(.[Styles.h2])}> {"albums"->Utils.str} </h2>
      </div>
      <div className={Tailwind.merge(.[Styles.block])}>
        <IonIcons.Filled.alert />
        <h2 className={Tailwind.merge(.[Styles.h2])}> {"alert"->Utils.str} </h2>
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
        <IonIcons.Sharp.addCircleSharp />
        <h2 className={Tailwind.merge(.[Styles.h2])}> {"addCircleSharp"->Utils.str} </h2>
      </div>
      <div className={Tailwind.merge(.[Styles.block])}>
        <IonIcons.Sharp.airPlaneSharp />
        <h2 className={Tailwind.merge(.[Styles.h2])}> {"airPlaneSharp"->Utils.str} </h2>
      </div>
      <div className={Tailwind.merge(.[Styles.block])}>
        <IonIcons.Sharp.alarmSharp />
        <h2 className={Tailwind.merge(.[Styles.h2])}> {"alarmSharp"->Utils.str} </h2>
      </div>
      <div className={Tailwind.merge(.[Styles.block])}>
        <IonIcons.Sharp.albumsSharp />
        <h2 className={Tailwind.merge(.[Styles.h2])}> {"albumsSharp"->Utils.str} </h2>
      </div>
      <div className={Tailwind.merge(.[Styles.block])}>
        <IonIcons.Sharp.alertSharp />
        <h2 className={Tailwind.merge(.[Styles.h2])}> {"alartSharp"->Utils.str} </h2>
      </div>
      <div className={Tailwind.merge(.[Styles.block])}>
        <IonIcons.Sharp.alertCircleSharp />
        <h2 className={Tailwind.merge(.[Styles.h2])}> {"alartCircleSharp"->Utils.str} </h2>
      </div>
      <div className={Tailwind.merge(.[Styles.block])}>
        <IonIcons.Sharp.americanFootballSharp />
        <h2 className={Tailwind.merge(.[Styles.h2])}> {"americanFootballSharp"->Utils.str} </h2>
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
