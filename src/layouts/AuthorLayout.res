module Styles = {
  open Tailwind
  let pageWrapper = twStyle([dividers([divideY(~color=#gray200, #1)])])
  let h1Wrapper = twStyle([pt(#6), pb(#8), dividers([spaceY(#2)]), md([dividers([spaceY(#5)])])])
  let h1 = twStyle([
    text(#xl3),
    fontWeight(#800),
    leading(#9),
    tracking(#tight),
    textColor(#gray900),
    dark([textColor(#gray100)]),
    sm([text(#xl4), leading(#10)]),
    md([text(#xl6), leading(#14)]),
  ])
  let bioGrid = twStyle([
    itemsStart,
    dividers([spaceY(#2)]),
    xl([grid, gridCols(#3), gapX(#8), dividers([spaceY(#0)])]),
  ])
  let bioFlex = twStyle([flex, flexCol, itemsCenter, pt(#8), dividers([spaceX(#2)])])

  let image = twStyle([w(#48), h(#48), rounded(#full)])
  let name = twStyle([pt(#4), pb(#2), text(#xl2), fontWeight(#700), leading(#8), tracking(#tight)])
  let bioParagraphs = twStyle([textColor(#gray500), dark([textColor(#gray400)])])
  let iconsWrapper = twStyle([flex, pt(#6), dividers([spaceX(#3)])])
  let childrenWrapper = twStyle([pt(#8), pb(#8), maxW(#none), xl([col(#1)])])
}

// TODO: Format avatar pictures to be at least 192x192

@react.component
let make = (~children, ~frontmatter: Static.authorFrontmatter) => {
  let {name, avatar, occupation, company, email, twitter, linkedin, github} = frontmatter
  <>
    <SEO.PageSEO title={`About - ${name}`} description={`About me - ${name}`} />
    <div>
      <div className=Styles.h1Wrapper> <h1 className=Styles.h1> {"About"->Utils.str} </h1> </div>
      <div className=Styles.bioGrid>
        <div className=Styles.bioFlex>
          <Image src={avatar} alt="avatar" width={192} height={192} className=Styles.image />
          <h3 className=Styles.name> {name->Utils.str} </h3>
          <div className=Styles.bioParagraphs> {occupation->Utils.str} </div>
          <div className=Styles.bioParagraphs> {company->Utils.str} </div>
          <div className=Styles.iconsWrapper>
            <SocialIcons kind=#mail href={`mailto:${email}`} />
            <SocialIcons kind=#github href={github} />
            <SocialIcons kind=#linkedin href={linkedin} />
            <SocialIcons kind=#twitter href={twitter} />
          </div>
        </div>
        <div className=Styles.childrenWrapper> {children} </div>
      </div>
    </div>
  </>
}
