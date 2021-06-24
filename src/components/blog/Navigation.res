module Styles = {
  open Tailwind

  let header = twStyle([flex, itemsCenter, justifyBetween, pt(#4), pb(#6), sm([py(#10)])])
  let linkWrapper = twStyle([flex, itemsCenter, justifyBetween])
  let linkDiv = twStyle([text(#base), fontWeight(#800)])
  let titleStyles = twStyle([noUnderline])

  let linksBlock = twStyle([flex, itemsCenter, leading(#5)])
  let hideForSm = twStyle([hidden, sm([block])])
}

@react.component
let make = (~className="", ~headerTitle=SiteMetadata.metadata.headerTitle) => {
  let renderLinks = (links: array<Blog__Data.link>) =>
    Belt.Array.map(links, link =>
      <HeaderLink
        key={link.title} href={link.href} className={Tailwind.twStyle([Tailwind.noUnderline])}>
        {link.title->Utils.str}
      </HeaderLink>
    )

  <header className={Tailwind.merge(. [Styles.header, className])}>
    <div>
      <Mdx.a href="/" className=Styles.titleStyles ariaLabel="iSensei Personal Blog">
        <div className=Styles.linkWrapper>
          <div className=Styles.linkDiv> {headerTitle->Utils.str} </div>
        </div>
      </Mdx.a>
    </div>
    <div className=Styles.linksBlock>
      <div className=Styles.hideForSm> {React.array(renderLinks(Blog__Data.headerNavLinks))} </div>
    </div>
  </header>
}
