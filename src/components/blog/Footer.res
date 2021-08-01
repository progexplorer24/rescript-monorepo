module Styles = {
  open Tailwind
  let footerWrapper = twStyle([flex, flexCol, itemsCenter, mt(#16)])
  let iconsWrapper = twStyle([flex, mb(#3), dividers([spaceX(#4)])])
  let footerInfo = twStyle([
    flex,
    flexWrap,
    justifyCenter,
    leading(#loose),
    mb(#2),
    dividers([spaceX(#2)]),
    text(#sm),
    textColor(#gray500),
    selector(Selectors.allChildren, [pt(#1)]),
    dark([textColor(#gray400)]),
  ])
  let linkColors = twStyle([textColor(#gray500), noUnderline, dark([textColor(#gray400)])])
  let githubSection = twStyle([mb(#8), text(#sm)])
}

@react.component
let make = () => {
  <footer>
    <div className=Styles.footerWrapper>
      <div className=Styles.iconsWrapper>
        <SocialIcons kind=#mail href={`mailto:${SiteMetadata.metadata.email}`} />
        <SocialIcons kind=#github href={SiteMetadata.metadata.github} />
        <SocialIcons kind=#facebook href={SiteMetadata.metadata.facebook} />
        <SocialIcons kind=#youtube href={SiteMetadata.metadata.youtube} />
        <SocialIcons kind=#linkedin href={SiteMetadata.metadata.facebook} />
        <SocialIcons kind=#twitter href={SiteMetadata.metadata.twitter} />
      </div>
      <div className={Tailwind.merge(. [Styles.footerInfo, Styles.linkColors])}>
        <div> {SiteMetadata.metadata.author->Utils.str} </div>
        <div> {` • `->Utils.str} </div>
        <div> {`© ${Belt.Float.toString(Js.Date.getFullYear(Js.Date.make()))}`->Utils.str} </div>
        <div> {` • `->Utils.str} </div>
        <Link href="/" className={Styles.linkColors}>
          {SiteMetadata.metadata.title->Utils.str}
        </Link>
      </div>
      <div className={Styles.githubSection}>
        <Link
          href="https://github.com/progexplorer24/rescript-monorepo" className={Styles.linkColors}>
          {"iSensei - Personal Blog"->Utils.str}
        </Link>
      </div>
    </div>
  </footer>
}
