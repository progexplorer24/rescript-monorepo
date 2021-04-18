module Styles = {
  open Tailwind
  let container = twStyle([maxW(#xl4), mx(#auto)])
  let heading = twStyle([textCenter])
  let row = twStyle([flex])
}

let default = () =>
  <div className=Styles.container>
    <Mdx.h2 className=Styles.heading> {"Card Deck"->Utils.str} </Mdx.h2>
    <div className=Styles.row>
      <DA /> <D2 /> <D3 /> <D4 /> <D5 /> <D6 /> <D7 /> <D8 /> <D9 /> <DT /> <DJ /> <DQ /> <DK />
    </div>
    <div className=Styles.row>
      <SA /> <S2 /> <S3 /> <S4 /> <S5 /> <S6 /> <S7 /> <S8 /> <S9 /> <ST /> <SJ /> <SQ /> <SK />
    </div>
    <div className=Styles.row>
      <HA /> <H2 /> <H3 /> <H4 /> <H5 /> <H6 /> <H7 /> <H8 /> <H9 /> <HT /> <HJ /> <HQ /> <HK />
    </div>
    <div className=Styles.row>
      <CA /> <C2 /> <C3 /> <C4 /> <C5 /> <C6 /> <C7 /> <C8 /> <C9 /> <CT /> <CJ /> <CQ /> <CK />
    </div>
  </div>
