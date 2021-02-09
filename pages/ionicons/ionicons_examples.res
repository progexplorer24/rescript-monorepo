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

  let svgString = "<svg xmlns='http://www.w3.org/2000/svg' class='ionicon' viewBox='0 0 512 512'><title>Logo Tumblr</title><path d='M390 32H120c-49.19 0-88 38.81-88 88v270c0 49.19 38.81 90 88 90h270c49.19 0 90-40.81 90-90V120c0-49.19-40.81-88-90-88zm-54 364h-52c-42.51 0-72-23.68-72-76v-80h-36v-48c42.51-11 57.95-48.32 60-80h44v72h52v56h-52l-.39 70.51c0 21.87 11 29.43 28.62 29.43L336 340z'/></svg>"
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
        <IonIcons.Outline.addCircle />
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
    </div>
    <h1 className=Styles.h1> {"Logos"->Utils.str} </h1>
    <div
      className={Tailwind.merge(.[
        Styles.grid,
        Styles.gridBreakpoints450,
        Styles.gridBreakpoints830,
      ])}>
      <div className={Tailwind.merge(.[Styles.block])}>
        <IonIcons.Sharp.Logos.alipay />
        <h2 className={Tailwind.merge(.[Styles.h2])}> {"alipay"->Utils.str} </h2>
      </div>
      <div className={Tailwind.merge(.[Styles.block])}>
        <IonIcons.Sharp.Logos.amazon />
        <h2 className={Tailwind.merge(.[Styles.h2])}> {"amazon"->Utils.str} </h2>
      </div>
      <div className={Tailwind.merge(.[Styles.block])}>
        <IonIcons.Sharp.Logos.amplify />
        <h2 className={Tailwind.merge(.[Styles.h2])}> {"amplify"->Utils.str} </h2>
      </div>
      <div className={Tailwind.merge(.[Styles.block])}>
        <IonIcons.Sharp.Logos.android />
        <h2 className={Tailwind.merge(.[Styles.h2])}> {"android"->Utils.str} </h2>
      </div>
      <div className={Tailwind.merge(.[Styles.block])}>
        <IonIcons.Sharp.Logos.angular />
        <h2 className={Tailwind.merge(.[Styles.h2])}> {"angular"->Utils.str} </h2>
      </div>
      <div className={Tailwind.merge(.[Styles.block])}>
        <IonIcons.Sharp.Logos.apple />
        <h2 className={Tailwind.merge(.[Styles.h2])}> {"apple"->Utils.str} </h2>
      </div>
      <div className={Tailwind.merge(.[Styles.block])}>
        <IonIcons.Sharp.Logos.appleAppStore />
        <h2 className={Tailwind.merge(.[Styles.h2])}> {"appleAppStore"->Utils.str} </h2>
      </div>
      <div className={Tailwind.merge(.[Styles.block])}>
        <IonIcons.Sharp.Logos.appleAr />
        <h2 className={Tailwind.merge(.[Styles.h2])}> {"appleAr"->Utils.str} </h2>
      </div>
      <div className={Tailwind.merge(.[Styles.block])}>
        <IonIcons.Sharp.Logos.behance />
        <h2 className={Tailwind.merge(.[Styles.h2])}> {"behance"->Utils.str} </h2>
      </div>
      <div className={Tailwind.merge(.[Styles.block])}>
        <IonIcons.Sharp.Logos.bitBucket />
        <h2 className={Tailwind.merge(.[Styles.h2])}> {"bitBucket"->Utils.str} </h2>
      </div>
      <div className={Tailwind.merge(.[Styles.block])}>
        <IonIcons.Sharp.Logos.bitCoin />
        <h2 className={Tailwind.merge(.[Styles.h2])}> {"bitCoin"->Utils.str} </h2>
      </div>
      <div className={Tailwind.merge(.[Styles.block])}>
        <IonIcons.Sharp.Logos.buffer />
        <h2 className={Tailwind.merge(.[Styles.h2])}> {"buffer"->Utils.str} </h2>
      </div>
      <div className={Tailwind.merge(.[Styles.block])}>
        <IonIcons.Sharp.Logos.capacitor />
        <h2 className={Tailwind.merge(.[Styles.h2])}> {"capacitor"->Utils.str} </h2>
      </div>
      <div className={Tailwind.merge(.[Styles.block])}>
        <IonIcons.Sharp.Logos.chrome />
        <h2 className={Tailwind.merge(.[Styles.h2])}> {"chrome"->Utils.str} </h2>
      </div>
      <div className={Tailwind.merge(.[Styles.block])}>
        <IonIcons.Sharp.Logos.closedCaptioning />
        <h2 className={Tailwind.merge(.[Styles.h2])}> {"closedCaptioning"->Utils.str} </h2>
      </div>
      <div className={Tailwind.merge(.[Styles.block])}>
        <IonIcons.Sharp.Logos.codepen />
        <h2 className={Tailwind.merge(.[Styles.h2])}> {"codepen"->Utils.str} </h2>
      </div>
      <div className={Tailwind.merge(.[Styles.block])}>
        <IonIcons.Sharp.Logos.css3 />
        <h2 className={Tailwind.merge(.[Styles.h2])}> {"css3"->Utils.str} </h2>
      </div>
      <div className={Tailwind.merge(.[Styles.block])}>
        <IonIcons.Sharp.Logos.designerNews />
        <h2 className={Tailwind.merge(.[Styles.h2])}> {"designerNews"->Utils.str} </h2>
      </div>
      <div className={Tailwind.merge(.[Styles.block])}>
        <IonIcons.Sharp.Logos.devianStart />
        <h2 className={Tailwind.merge(.[Styles.h2])}> {"devianStart"->Utils.str} </h2>
      </div>
      <div className={Tailwind.merge(.[Styles.block])}>
        <IonIcons.Sharp.Logos.discord />
        <h2 className={Tailwind.merge(.[Styles.h2])}> {"discord"->Utils.str} </h2>
      </div>
      <div className={Tailwind.merge(.[Styles.block])}>
        <IonIcons.Sharp.Logos.docker />
        <h2 className={Tailwind.merge(.[Styles.h2])}> {"docker"->Utils.str} </h2>
      </div>
      <div className={Tailwind.merge(.[Styles.block])}>
        <IonIcons.Sharp.Logos.dribbble />
        <h2 className={Tailwind.merge(.[Styles.h2])}> {"dribbble"->Utils.str} </h2>
      </div>
      <div className={Tailwind.merge(.[Styles.block])}>
        <IonIcons.Sharp.Logos.dropBox />
        <h2 className={Tailwind.merge(.[Styles.h2])}> {"dropBox"->Utils.str} </h2>
      </div>
      <div className={Tailwind.merge(.[Styles.block])}>
        <IonIcons.Sharp.Logos.edge />
        <h2 className={Tailwind.merge(.[Styles.h2])}> {"edge"->Utils.str} </h2>
      </div>
      <div className={Tailwind.merge(.[Styles.block])}>
        <IonIcons.Sharp.Logos.electron />
        <h2 className={Tailwind.merge(.[Styles.h2])}> {"electron"->Utils.str} </h2>
      </div>
      <div className={Tailwind.merge(.[Styles.block])}>
        <IonIcons.Sharp.Logos.euro />
        <h2 className={Tailwind.merge(.[Styles.h2])}> {"euro"->Utils.str} </h2>
      </div>
      <div className={Tailwind.merge(.[Styles.block])}>
        <IonIcons.Sharp.Logos.facebook />
        <h2 className={Tailwind.merge(.[Styles.h2])}> {"facebook"->Utils.str} </h2>
      </div>
      <div className={Tailwind.merge(.[Styles.block])}>
        <IonIcons.Sharp.Logos.figma />
        <h2 className={Tailwind.merge(.[Styles.h2])}> {"figma"->Utils.str} </h2>
      </div>
      <div className={Tailwind.merge(.[Styles.block])}>
        <IonIcons.Sharp.Logos.fireBase />
        <h2 className={Tailwind.merge(.[Styles.h2])}> {"fireBase"->Utils.str} </h2>
      </div>
      <div className={Tailwind.merge(.[Styles.block])}>
        <IonIcons.Sharp.Logos.fireFox />
        <h2 className={Tailwind.merge(.[Styles.h2])}> {"fireFox"->Utils.str} </h2>
      </div>
      <div className={Tailwind.merge(.[Styles.block])}>
        <IonIcons.Sharp.Logos.flickr />
        <h2 className={Tailwind.merge(.[Styles.h2])}> {"flickr"->Utils.str} </h2>
      </div>
      <div className={Tailwind.merge(.[Styles.block])}>
        <IonIcons.Sharp.Logos.github />
        <h2 className={Tailwind.merge(.[Styles.h2])}> {"github"->Utils.str} </h2>
      </div>
      <div className={Tailwind.merge(.[Styles.block])}>
        <IonIcons.Sharp.Logos.gitlab />
        <h2 className={Tailwind.merge(.[Styles.h2])}> {"gitlab"->Utils.str} </h2>
      </div>
      <div className={Tailwind.merge(.[Styles.block])}>
        <IonIcons.Sharp.Logos.google />
        <h2 className={Tailwind.merge(.[Styles.h2])}> {"google"->Utils.str} </h2>
      </div>
      <div className={Tailwind.merge(.[Styles.block])}>
        <IonIcons.Sharp.Logos.googlePlayStore />
        <h2 className={Tailwind.merge(.[Styles.h2])}> {"googlePlayStore"->Utils.str} </h2>
      </div>
      <div className={Tailwind.merge(.[Styles.block])}>
        <IonIcons.Sharp.Logos.hackerNews />
        <h2 className={Tailwind.merge(.[Styles.h2])}> {"hackerNews"->Utils.str} </h2>
      </div>
      <div className={Tailwind.merge(.[Styles.block])}>
        <IonIcons.Sharp.Logos.html5 />
        <h2 className={Tailwind.merge(.[Styles.h2])}> {"html5"->Utils.str} </h2>
      </div>
      <div className={Tailwind.merge(.[Styles.block])}>
        <IonIcons.Sharp.Logos.instagram />
        <h2 className={Tailwind.merge(.[Styles.h2])}> {"instagram"->Utils.str} </h2>
      </div>
      <div className={Tailwind.merge(.[Styles.block])}>
        <IonIcons.Sharp.Logos.ionic />
        <h2 className={Tailwind.merge(.[Styles.h2])}> {"ionic"->Utils.str} </h2>
      </div>
      <div className={Tailwind.merge(.[Styles.block])}>
        <IonIcons.Sharp.Logos.ionitron />
        <h2 className={Tailwind.merge(.[Styles.h2])}> {"ionitron"->Utils.str} </h2>
      </div>
      <div className={Tailwind.merge(.[Styles.block])}>
        <IonIcons.Sharp.Logos.javascript />
        <h2 className={Tailwind.merge(.[Styles.h2])}> {"javascript"->Utils.str} </h2>
      </div>
      <div className={Tailwind.merge(.[Styles.block])}>
        <IonIcons.Sharp.Logos.laravel />
        <h2 className={Tailwind.merge(.[Styles.h2])}> {"laravel"->Utils.str} </h2>
      </div>
      <div className={Tailwind.merge(.[Styles.block])}>
        <IonIcons.Sharp.Logos.linkedin />
        <h2 className={Tailwind.merge(.[Styles.h2])}> {"linkedin"->Utils.str} </h2>
      </div>
      <div className={Tailwind.merge(.[Styles.block])}>
        <IonIcons.Sharp.Logos.markDown />
        <h2 className={Tailwind.merge(.[Styles.h2])}> {"markDown"->Utils.str} </h2>
      </div>
      <div className={Tailwind.merge(.[Styles.block])}>
        <IonIcons.Sharp.Logos.mastodon />
        <h2 className={Tailwind.merge(.[Styles.h2])}> {"mastodon"->Utils.str} </h2>
      </div>
      <div className={Tailwind.merge(.[Styles.block])}>
        <IonIcons.Sharp.Logos.medium />
        <h2 className={Tailwind.merge(.[Styles.h2])}> {"medium"->Utils.str} </h2>
      </div>
      <div className={Tailwind.merge(.[Styles.block])}>
        <IonIcons.Sharp.Logos.microsoft />
        <h2 className={Tailwind.merge(.[Styles.h2])}> {"microsoft"->Utils.str} </h2>
      </div>
      <div className={Tailwind.merge(.[Styles.block])}>
        <IonIcons.Sharp.Logos.nodejs />
        <h2 className={Tailwind.merge(.[Styles.h2])}> {"nodejs"->Utils.str} </h2>
      </div>
      <div className={Tailwind.merge(.[Styles.block])}>
        <IonIcons.Sharp.Logos.noSmoking />
        <h2 className={Tailwind.merge(.[Styles.h2])}> {"noSmoking"->Utils.str} </h2>
      </div>
      <div className={Tailwind.merge(.[Styles.block])}>
        <IonIcons.Sharp.Logos.npm />
        <h2 className={Tailwind.merge(.[Styles.h2])}> {"npm"->Utils.str} </h2>
      </div>
      <div className={Tailwind.merge(.[Styles.block])}>
        <IonIcons.Sharp.Logos.octocat />
        <h2 className={Tailwind.merge(.[Styles.h2])}> {"octocat"->Utils.str} </h2>
      </div>
      <div className={Tailwind.merge(.[Styles.block])}>
        <IonIcons.Sharp.Logos.paypal />
        <h2 className={Tailwind.merge(.[Styles.h2])}> {"paypal"->Utils.str} </h2>
      </div>
      <div className={Tailwind.merge(.[Styles.block])}>
        <IonIcons.Sharp.Logos.pinterest />
        <h2 className={Tailwind.merge(.[Styles.h2])}> {"pinterest"->Utils.str} </h2>
      </div>
      <div className={Tailwind.merge(.[Styles.block])}>
        <IonIcons.Sharp.Logos.playstation />
        <h2 className={Tailwind.merge(.[Styles.h2])}> {"playstation"->Utils.str} </h2>
      </div>
      <div className={Tailwind.merge(.[Styles.block])}>
        <IonIcons.Sharp.Logos.pwa />
        <h2 className={Tailwind.merge(.[Styles.h2])}> {"pwa"->Utils.str} </h2>
      </div>
      <div className={Tailwind.merge(.[Styles.block])}>
        <IonIcons.Sharp.Logos.python />
        <h2 className={Tailwind.merge(.[Styles.h2])}> {"python"->Utils.str} </h2>
      </div>
      <div className={Tailwind.merge(.[Styles.block])}>
        <IonIcons.Sharp.Logos.react />
        <h2 className={Tailwind.merge(.[Styles.h2])}> {"react"->Utils.str} </h2>
      </div>
      <div className={Tailwind.merge(.[Styles.block])}>
        <IonIcons.Sharp.Logos.reddit />
        <h2 className={Tailwind.merge(.[Styles.h2])}> {"reddit"->Utils.str} </h2>
      </div>
      <div className={Tailwind.merge(.[Styles.block])}>
        <IonIcons.Sharp.Logos.rrs />
        <h2 className={Tailwind.merge(.[Styles.h2])}> {"rrs"->Utils.str} </h2>
      </div>
      <div className={Tailwind.merge(.[Styles.block])}>
        <IonIcons.Sharp.Logos.sass />
        <h2 className={Tailwind.merge(.[Styles.h2])}> {"sass"->Utils.str} </h2>
      </div>
      <div className={Tailwind.merge(.[Styles.block])}>
        <IonIcons.Sharp.Logos.skype />
        <h2 className={Tailwind.merge(.[Styles.h2])}> {"skype"->Utils.str} </h2>
      </div>
      <div className={Tailwind.merge(.[Styles.block])}>
        <IonIcons.Sharp.Logos.slack />
        <h2 className={Tailwind.merge(.[Styles.h2])}> {"slack"->Utils.str} </h2>
      </div>
      <div className={Tailwind.merge(.[Styles.block])}>
        <IonIcons.Sharp.Logos.snapChat />
        <h2 className={Tailwind.merge(.[Styles.h2])}> {"snapChat"->Utils.str} </h2>
      </div>
      <div className={Tailwind.merge(.[Styles.block])}>
        <IonIcons.Sharp.Logos.soundCloud />
        <h2 className={Tailwind.merge(.[Styles.h2])}> {"soundCloud"->Utils.str} </h2>
      </div>
      <div className={Tailwind.merge(.[Styles.block])}>
        <IonIcons.Sharp.Logos.stackOverFlow />
        <h2 className={Tailwind.merge(.[Styles.h2])}> {"stackOverFlow"->Utils.str} </h2>
      </div>
      <div className={Tailwind.merge(.[Styles.block])}>
        <IonIcons.Sharp.Logos.steam />
        <h2 className={Tailwind.merge(.[Styles.h2])}> {"steam"->Utils.str} </h2>
      </div>
      <div className={Tailwind.merge(.[Styles.block])}>
        <IonIcons.Sharp.Logos.stencil />
        <h2 className={Tailwind.merge(.[Styles.h2])}> {"stencil"->Utils.str} </h2>
      </div>
      <div className={Tailwind.merge(.[Styles.block])}>
        <IonIcons.Sharp.Logos.tableau />
        <h2 className={Tailwind.merge(.[Styles.h2])}> {"tableau"->Utils.str} </h2>
      </div>
      <div className={Tailwind.merge(.[Styles.block])}>
        <IonIcons.Sharp.Logos.tikTok />
        <h2 className={Tailwind.merge(.[Styles.h2])}> {"tikTok"->Utils.str} </h2>
      </div>
      <div className={Tailwind.merge(.[Styles.block])}>
        <IonIcons.Sharp.Logos.tumblr />
        <h2 className={Tailwind.merge(.[Styles.h2])}> {"tumblr"->Utils.str} </h2>
      </div>
      <div className={Tailwind.merge(.[Styles.block])}>
        <IonIcons.Sharp.Logos.tux />
        <h2 className={Tailwind.merge(.[Styles.h2])}> {"tux"->Utils.str} </h2>
      </div>
      <div className={Tailwind.merge(.[Styles.block])}>
        <IonIcons.Sharp.Logos.twitch />
        <h2 className={Tailwind.merge(.[Styles.h2])}> {"twitch"->Utils.str} </h2>
      </div>
      <div className={Tailwind.merge(.[Styles.block])}>
        <IonIcons.Sharp.Logos.twitter />
        <h2 className={Tailwind.merge(.[Styles.h2])}> {"twitter"->Utils.str} </h2>
      </div>
    </div>
  </div>
}
