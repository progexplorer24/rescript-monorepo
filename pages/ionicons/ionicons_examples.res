module Styles = {
  open Tailwind
  let wrapper = merge(.[twStyle([maxW(#xl6), mx(#auto), mt(#v6)])])
//   let hover = twStyle([selector("&:hover", tw([srOnly, noSrOnly, bg(#blue700, ~opacity=0.5)]))])

//   let shadow = twStyle([shadow(#xl)])
  let h1Title = twStyle([text(#xl2), p(#v6), textCenter])
  let h1 = twStyle([text(#xl), p(#v6)])
  let h2 = twStyle([text(#base), p(#v2)])
  let icons = twStyle([flex, maxW(#xl6), mx(#auto), mt(#v6), justifyCenter, textCenter, itemsCenter, gap(#v24), flexWrap])
  let block = twStyle([flex, flexCol, justifyCenter, itemsCenter, hover([animateBounce])])
}

let default = () => {
  <div className=Styles.wrapper>
    
    <h1 className=Styles.h1Title>{"Welcome to IonIcons Component"->Utils.str}</h1>
    <h1 className=Styles.h1>{"Outline Icons"->Utils.str}</h1>
    <div className=Styles.icons>
      <div className=Styles.block>
        <IonIcons.Outline.accessibility
          className={Tailwind.merge(.[
            Tailwind.twStyle([Tailwind.textColor(#black)]),
          ])}
        />
        <h2 className=Styles.h2>{"accessibility"->Utils.str}</h2>
      </div>
      <div className=Styles.block>
        <IonIcons.Outline.add
          className={Tailwind.merge(.[
            Tailwind.twStyle([Tailwind.textColor(#black)]),
          ])}
        />
        <h2 className=Styles.h2>{"add"->Utils.str}</h2>
      </div>
      <div className=Styles.block>
        <IonIcons.Outline.addCircle
          className={Tailwind.merge(.[
            Tailwind.twStyle([Tailwind.textColor(#black)]),
          ])}
        />
        <h2 className=Styles.h2>{"addCircle"->Utils.str}</h2>
      </div>
      <div className=Styles.block>
        <IonIcons.Outline.airplane
          className={Tailwind.merge(.[
            Tailwind.twStyle([Tailwind.textColor(#black)]),
          ])}
        />
        <h2 className=Styles.h2>{"airplane"->Utils.str}</h2>
      </div>
      <div className=Styles.block>
        <IonIcons.Outline.alarm
          className={Tailwind.merge(.[
            Tailwind.twStyle([Tailwind.textColor(#black)]),
          ])}
        />
        <h2 className=Styles.h2>{"alarm"->Utils.str}</h2>
      </div>
      <div className=Styles.block>
        <IonIcons.Outline.album
          className={Tailwind.merge(.[
            Tailwind.twStyle([Tailwind.textColor(#black)]),
          ])}
        />
        <h2 className=Styles.h2>{"album"->Utils.str}</h2>
      </div>
      <div className=Styles.block>
        <IonIcons.Outline.alert
          className={Tailwind.merge(.[
            Tailwind.twStyle([Tailwind.textColor(#black)]),
          ])}
        />
        <h2 className=Styles.h2>{"alert"->Utils.str}</h2>
      </div>
      <div className=Styles.block>
        <IonIcons.Outline.alertCircle
          className={Tailwind.merge(.[
            Tailwind.twStyle([Tailwind.textColor(#black)]),
          ])}
        />
        <h2 className=Styles.h2>{"alertCircle"->Utils.str}</h2>
      </div>
    </div>
  </div>
}
