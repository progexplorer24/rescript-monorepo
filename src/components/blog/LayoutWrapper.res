module Navigation = {
  module Styles = {
    open Tailwind

    let header = twStyle([flex, itemsCenter, justifyBetween, py(#10)])
    let linkWrapper = twStyle([
      flex,
      itemsCenter,
      justifyBetween,
      text(#base),
      fontWeight(#800),
      textColor(#gray900),
      dark([textColor(#gray100)]),
    ])

    let titleStyles = twStyle([noUnderline])

    let linksBlock = twStyle([flex, itemsCenter, text(#base), leading(#5)])
    let hideForSm = twStyle([hidden, sm([block])])

    let headerLink = twStyle([
      p(#1),
      fontWeight(#500),
      noUnderline,
      sm([p(#4)]),
      textColor(#gray900),
      dark([textColor(#gray100)]),
    ])
  }

  module HeaderLink = {
    @react.component
    let make = (~children, ~className="", ~href) => {
      <Link href className={Tailwind.merge(. [Styles.headerLink, className])}> children </Link>
    }
  }

  @react.component
  let make = (~className="", ~headerTitle=SiteMetadata.metadata.headerTitle) => {
    let renderLinks = (links: array<HeaderNavLinks.link>) =>
      Belt.Array.map(links, link =>
        <HeaderLink key={link.title} href={link.href}> {link.title->Utils.str} </HeaderLink>
      )

    <header className={Tailwind.merge(. [Styles.header, className])}>
      <div>
        <Link href="/" className=Styles.titleStyles ariaLabel="iSensei Personal Blog">
          <div className=Styles.linkWrapper> {headerTitle->Utils.str} </div>
        </Link>
      </div>
      <div className=Styles.linksBlock>
        <div className=Styles.hideForSm>
          {React.array(renderLinks(HeaderNavLinks.headerNavLinks))}
        </div>
        <ThemeSwitch />
      </div>
    </header>
  }
}

module Styles = {
  open Tailwind
  let mainWrapper = twStyle([
    flex,
    flexCol,
    justifyBetween,
    minHScreen,
    [CssJs.fontFamily(#custom("Inter"))],
  ])
  let flexWrapper = twStyle([flex, flexCol, justifyBetween])
  let mainStyles = twStyle([[CssJs.marginBottom(#auto)]])
}

@react.component
let make = (~children) => {
  <SectionContainer>
    <div className=Styles.mainWrapper>
      <Navigation /> <main className=Styles.mainStyles> children </main> <Footer />
    </div>
  </SectionContainer>
}
