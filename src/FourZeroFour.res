module Styles = {
  open Tailwind
  let wrapper = twStyle([
    flex,
    flexCol,
    itemsCenter,
    justifyStart,
    md([justifyCenter, itemsCenter, flexRow, dividers([spaceX(#6)]), mt(#24)]),
  ])

  let titleSection = twStyle([pt(#6), pb(#8), dividers([spaceX(#2)]), md([dividers([spaceY(#5)])])])

  let h1 = twStyle([
    text(#xl6),
    fontWeight(#800),
    leading(#9),
    tracking(#tight),
    textColor(#gray900),
    md([text(#xl8), leading(#14), borderR(#2), px(#6)]),
    dark([textColor(#gray100), md([borderColor(#gray700)])]),
  ])

  let maxW = twStyle([maxW(#md), flex, flexCol, itemsCenter])
  let p1 = twStyle([
    mb(#4),
    text(#xl),
    fontWeight(#700),
    leading(#normal),
    md([text(#xl2), textLeft]),
    textCenter,
  ])
  let p2 = twStyle([mb(#8), textCenter, md([textLeft])])

  let backIcon = twStyle([h(#8), w(#8), inline, mr(#2), mb(#"1_5"), textColor(#gray300)])
  let button = twStyle([
    inline,
    px(#4),
    py(#2),
    text(#sm),
    fontWeight(#600),
    leading(#5),
    borderColor(#transparent),
    rounded(#lg),
    bg(#gray900),
    textColor(#gray100),
    hover([bg(#gray800)]),
    focus([ring(Theme.Colors.toColor(#gray700))]),
    dark([border(#1), borderColor(#gray100), focus([ring(Theme.Colors.toColor(#gray600))])]),
  ])

  let link = twStyle([noUnderline])
}

module BackIcon = {
  @react.component
  let make = (~className="") => {
    <svg xmlns="http://www.w3.org/2000/svg" viewBox="0 0 24 24" className fill="currentColor">
      <path d="M0 0h24v24H0z" fill="none" />
      <path d="M10 9V5l-7 7 7 7v-4.1c5 0 8.5 1.6 11 5.1-1-5-4-10-11-11z" />
    </svg>
  }
}

let default = () => {
  <div className=Styles.wrapper>
    <div className=Styles.titleSection> <h1 className={Styles.h1}> {"404"->Utils.str} </h1> </div>
    <div className=Styles.maxW>
      <p className=Styles.p1> {"Sorry we couldn't find this page."->Utils.str} </p>
      <p className=Styles.p2>
        {"But dont worry, you can find plenty of other things on our homepage."->Utils.str}
      </p>
      <Link href="/" className=Styles.link>
        <button className=Styles.button>
          <BackIcon className=Styles.backIcon /> {"Back to homepage"->Utils.str}
        </button>
      </Link>
    </div>
  </div>
}
