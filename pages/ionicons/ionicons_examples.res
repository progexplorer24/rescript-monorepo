module Styles = {
  open Tailwind
  let wrapper = merge(.[twStyle([maxW(#xl6), mx(#auto), mt(#v6)])])
  //   let hover = twStyle([selector("&:hover", tw([srOnly, noSrOnly, bg(#blue700, ~opacity=0.5)]))])
  // Theme.ColSpan.t
  //   let shadow = twStyle([shadow(#xl)])
  let h1Title = twStyle([text(#xl2), p(#v6), textCenter])
  let h1 = twStyle([text(#xl), p(#v6)])
  let h2 = twStyle([text(#base), p(#v2)])
  // let iconContainer = twStyle([grid, gridCols(#v6), col(#span4), mx(#auto), mt(#v6), justifyCenter, textCenter, itemsCenter, gap(#v14), flexWrap])
  let min830 = minWBreakpoint(830)
  let min450 = minWBreakpoint(450)

  let block = twStyle([
    flex,
    flexCol,
    justifyCenter,
    itemsCenter,
    textCenter,
    p(#v6),
    hover([shadow(#xl2), rounded(#xl)]),
  ])
  // let icon = twStyle([mx(#auto)])
  let grid = twStyle([grid, gridCols(#v2)])

  let gridBreakpoints830 = twStyle([min830([gridCols(#v6)])])
  let gridBreakpoints450 = twStyle([min450([gridCols(#v3)])])
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
    </div>
  </div>
}

/*
    <div className=Styles.iconContainer>
  
      <div className=Styles.block>
        <div>
          <IonIcons.Outline.accessibility
            className={Tailwind.merge(.[
            Tailwind.twStyle([Tailwind.textColor(#black), Tailwind.mx(#auto)])
          ])}
          />
          <h2 className=Styles.h2>{"accessibility"->Utils.str}</h2>
        </div>
      </div>

      <div className=Styles.block>
        <IonIcons.Outline.add
          className={Tailwind.merge(.[
            Tailwind.twStyle([Tailwind.textColor(#black), Tailwind.mx(#auto)])
          ])}
        />
        <h2 className=Styles.h2>{"add"->Utils.str}</h2>
      </div>

      <div className=Styles.block>
        <IonIcons.Outline.addCircle
          className={Tailwind.merge(.[
            Tailwind.twStyle([Tailwind.textColor(#black), Tailwind.mx(#auto)])
          ])}
        />
        <h2 className=Styles.h2>{"addCircle"->Utils.str}</h2>
      </div>

      <div className=Styles.block>
        <IonIcons.Outline.airplane
          className={Tailwind.merge(.[
            Tailwind.twStyle([Tailwind.textColor(#black), Tailwind.mx(#auto)])
          ])}
        />
        <h2 className=Styles.h2>{"airplane"->Utils.str}</h2>
      </div>

      <div className=Styles.block>
        <IonIcons.Outline.alarm
          className={Tailwind.merge(.[
            Tailwind.twStyle([Tailwind.textColor(#black), Tailwind.mx(#auto)])
          ])}
        />
        <h2 className=Styles.h2>{"alarm"->Utils.str}</h2>
      </div>

      <div className=Styles.block>
        <IonIcons.Outline.album
          className={Tailwind.merge(.[
            Tailwind.twStyle([Tailwind.textColor(#black), Tailwind.mx(#auto)])
          ])}
        />
        <h2 className=Styles.h2>{"album"->Utils.str}</h2>
      </div>

      <div className=Styles.block>
        <IonIcons.Outline.alert
          className={Tailwind.merge(.[
            Tailwind.twStyle([Tailwind.textColor(#black), Tailwind.mx(#auto)])
          ])}
        />
        <h2 className=Styles.h2>{"alert"->Utils.str}</h2>
      </div>

      <div className=Styles.block>
        <IonIcons.Outline.alertCircle
          className={Tailwind.merge(.[
            Tailwind.twStyle([Tailwind.textColor(#black), Tailwind.mx(#auto)])
          ])}
        />
        <h2 className=Styles.h2>{"alertCircle"->Utils.str}</h2>
      </div>

      <div className=Styles.block>
        <IonIcons.Outline.americanFootball
          className={Tailwind.merge(.[
            Tailwind.twStyle([Tailwind.textColor(#black), Tailwind.mx(#auto)])
          ])}
        />
        <h2 className=Styles.h2>{"americanFootball"->Utils.str}</h2>
      </div>

      <div className=Styles.block>
        <IonIcons.Outline.analytics
          className={Tailwind.merge(.[
            Tailwind.twStyle([Tailwind.textColor(#black), Tailwind.mx(#auto)])
          ])}
        />
        <h2 className=Styles.h2>{"analytics"->Utils.str}</h2>
      </div>

      <div className=Styles.block>
        <IonIcons.Outline.aperture
          className={Tailwind.merge(.[
            Tailwind.twStyle([Tailwind.textColor(#black), Tailwind.mx(#auto)])
          ])}
        />
        <h2 className=Styles.h2>{"aperture"->Utils.str}</h2>
      </div>

      <div className=Styles.block>
        <IonIcons.Outline.apps
          className={Tailwind.merge(.[
            Tailwind.twStyle([Tailwind.textColor(#black), Tailwind.mx(#auto)])
          ])}
        />
        <h2 className=Styles.h2>{"apps"->Utils.str}</h2>
      </div>

      <div className=Styles.block>
        <IonIcons.Outline.archive
          className={Tailwind.merge(.[
            Tailwind.twStyle([Tailwind.textColor(#black), Tailwind.mx(#auto)])
          ])}
        />
        <h2 className=Styles.h2>{"archive"->Utils.str}</h2>
      </div>

      <div className=Styles.block>
        <IonIcons.Outline.arrowBack
          className={Tailwind.merge(.[
            Tailwind.twStyle([Tailwind.textColor(#black), Tailwind.mx(#auto)])
          ])}
        />
        <h2 className=Styles.h2>{"arrowBack"->Utils.str}</h2>
      </div>

      <div className=Styles.block>
        <IonIcons.Outline.arrowBackCircle
          className={Tailwind.merge(.[
            Tailwind.twStyle([Tailwind.textColor(#black), Tailwind.mx(#auto)])
          ])}
        />
        <h2 className=Styles.h2>{"arrowBackCircle"->Utils.str}</h2>
      </div>

      <div className=Styles.block>
        <IonIcons.Outline.arrowDown
          className={Tailwind.merge(.[
            Tailwind.twStyle([Tailwind.textColor(#black), Tailwind.mx(#auto)])
          ])}
        />
        <h2 className=Styles.h2>{"arrowDown"->Utils.str}</h2>
      </div>
    </div>

*/
