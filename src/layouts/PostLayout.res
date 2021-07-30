module Styles = {
  open Tailwind
  let wrapper = twStyle([xl([divideY(~color=#gray200, #1), dark([divideY(~color=#gray700, #1)])])])
  let header = twStyle([pt(#6), xl([pb(#6)])])
  let headerContainer = twStyle([spaceY(#1), textCenter])
  let dl = twStyle([spaceY(#10)])
  let dt = twStyle([srOnly])
  let dd = twStyle([
    text(#base),
    fontWeight(#500),
    leading(#6),
    textColor(#gray500),
    dark([textColor(#gray400)]),
  ])
  let mainContent = twStyle([
    pb(#8),
    divideY(~color=#gray200, #1),
    dark([divideY(~color=#gray700, #1)]),
    [CssJs.unsafe("gridTemplateRows", "auto 1fr")],
    xl([divideY(#0), grid, gridCols(#4), gapX(#6)]),
  ])
  let dlAuthors = twStyle([
    pt(#6),
    pb(#10),
    xl([pt(#11), borderB(#1), borderColor(#gray200), dark([borderColor(#gray700)])]),
  ])
  let dtAuthors = twStyle([srOnly])

  let ul = twStyle([
    flex,
    justifyCenter,
    spaceX(#8),
    sm([spaceX(#12)]),
    xl([spaceX(#0), spaceY(#8)]),
  ])
  let li = twStyle([flex, itemsCenter, spaceX(#2)])
  let avatar = twStyle([w(#14), h(#14), rounded(#full)])
  let dlAuthors2 = twStyle([text(#sm), fontWeight(#500), leading(#5), whitespaceNowrap])
  let ddAuthors = twStyle([textColor(#gray900)])
  let mdxWrapper = twStyle([divideY(#1), borderColor(#gray200), xl([pb(#0), col(#3), row(#2)])])
}

type dateTemplate = {
  weekday: string,
  year: string,
  month: string,
  day: string,
}

let postDateTemplate = {
  weekday: "long",
  year: "numeric",
  month: "long",
  day: "numeric",
}

let editUrl = fileName => `${SiteMetadata.metadata.siteRepo}/blob/master/data/blog/${fileName}`
let discussUrl = slug =>
  `https://mobile.twitter.com/search?q=${Js.Global.encodeURIComponent(
      `${SiteMetadata.metadata.siteUrl}/blog/${slug}`,
    )}`

@react.component
let make = (~children, ~frontmatter: Mdx__helpers.frontmatterAndSlug) => {
  let {slug, date, title, tags, _} = frontmatter

  // (date, title, tags, lastmod, draft, summary, images)->Utils.clog
  <SectionContainer>
    <article>
      <div className=Styles.wrapper>
        <header className=Styles.header>
          <div className=Styles.headerContainer>
            <dl className=Styles.dl>
              <div>
                <dt className=Styles.dt> {"Published on"->Utils.str} </dt>
                <dd className=Styles.dd>
                  <time dateTime={date}>
                    {Js.Date.fromString(date)
                    ->Global.toLocaleDateStringWithOptions(
                      SiteMetadata.metadata.locale,
                      postDateTemplate,
                    )
                    ->Utils.str}
                  </time>
                </dd>
              </div>
            </dl>
            <div> <PageTitle> {title->Utils.str} </PageTitle> </div>
          </div>
        </header>
        <div className=Styles.mainContent>
          <dl className=Styles.dlAuthors>
            <dt className=Styles.dtAuthors> {"Authors"->Utils.str} </dt>
            <dd>
              <ul className=Styles.ul>
                <li className=Styles.li>
                  <img src={SiteMetadata.metadata.image} alt="avatar" className=Styles.avatar />
                  <dl className=Styles.dlAuthors2>
                    <dt className=Styles.dtAuthors> {"Name"->Utils.str} </dt>
                    <dd className=Styles.ddAuthors> {SiteMetadata.metadata.author->Utils.str} </dd>
                    <dt className=Styles.dtAuthors> {"Twitter"->Utils.str} </dt>
                    <dd>
                      <Mdx.a href={SiteMetadata.metadata.twitter}>
                        {Js.String2.replace(
                          SiteMetadata.metadata.twitter,
                          "https://twitter.com/",
                          "@",
                        )->Utils.str}
                      </Mdx.a>
                    </dd>
                  </dl>
                </li>
              </ul>
            </dd>
          </dl>
          <div className=Styles.mdxWrapper>
            <div> {children} </div>
            <div className="pt-6 pb-6 text-sm text-gray-700 dark:text-gray-300">
              <Mdx.a href={discussUrl(slug)}> {"Discuss on Twitter"->Utils.str} </Mdx.a>
              {` • `->Utils.str}
              <Mdx.a href={editUrl(`${slug}.mdx`)}> {"View on GitHub"->Utils.str} </Mdx.a>
            </div>
          </div>
        </div>
      </div>
    </article>
  </SectionContainer>
}
