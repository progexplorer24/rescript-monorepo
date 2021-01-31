module Styles = {
  open Tailwind
  let wrapper = merge(.[twStyle([maxW(#xl6), mx(#auto), mt(#v6)])])
//   let hover = twStyle([selector("&:hover", tw([srOnly, noSrOnly, bg(#blue700, ~opacity=0.5)]))])

//   let shadow = twStyle([shadow(#xl)])
  let h1 = twStyle([text(#xl)])
  let icons = twStyle([flex, maxW(#xl6), mx(#auto), mt(#v6), justifyCenter, textCenter, itemsCenter, gap(#v24), flexWrap])
}

let default = () => {
  <div className=Styles.wrapper>
    <h1 className=Styles.h1>{"Outline Icons"->Utils.str}</h1>
    <div className=Styles.icons>
      <IonIcons.Outline.accessibility
        className={Tailwind.merge(.[
          Tailwind.twStyle([Tailwind.textColor(#black)]),
        ])}
      />
      <IonIcons.Outline.add
        className={Tailwind.merge(.[
          Tailwind.twStyle([Tailwind.textColor(#black)]),
        ])}
      />
      <IonIcons.Outline.addCircle
        className={Tailwind.merge(.[
          Tailwind.twStyle([Tailwind.textColor(#black)]),
        ])}
      />
      <IonIcons.Outline.airplane
        className={Tailwind.merge(.[
          Tailwind.twStyle([Tailwind.textColor(#black)]),
        ])}
      />
      <IonIcons.Outline.alarm
        className={Tailwind.merge(.[
          Tailwind.twStyle([Tailwind.textColor(#black)]),
        ])}
      />
      <IonIcons.Outline.album
        className={Tailwind.merge(.[
          Tailwind.twStyle([Tailwind.textColor(#black)]),
        ])}
      />
      <IonIcons.Outline.alert
        className={Tailwind.merge(.[
          Tailwind.twStyle([Tailwind.textColor(#black)]),
        ])}
      />
      <IonIcons.Outline.alertCircle
        className={Tailwind.merge(.[
          Tailwind.twStyle([Tailwind.textColor(#black)]),
        ])}
      />
    </div>
  </div>
}
