module Styles = {
  open Tailwind
  let header = twStyle([pt(#v6), xl([pb(#v6)])])
  let div1 = twStyle([spaceY(#v1), textCenter])
  let dl = twStyle([spaceY(#v10)])
  let dt = twStyle([srOnly])
  let dd = twStyle([text(#base), fontWeight(#v500), leading(#v6), textColor(#gray500)])
  let div2 = twStyle([
    divideY(#1),
    borderColor(#gray200),
    xl([divideY(#0), grid, gridCols(#v4), gapX(#v6)]),
  ])
  let dlAuthors = twStyle([pt(#v6), pb(#v10), xl([pt(#v11), borderB(#1), borderColor(#gray500)])])
  let dtAuthors = twStyle([srOnly])
  let ul = twStyle([
    flex,
    justifyCenter,
    spaceX(#v8),
    sm([spaceX(#v12)]),
    xl([spaceX(#v0), block, spaceY(#v8)]),
  ])
  let li = twStyle([flex, itemsCenter, spaceX(#v2)])
  let avatar = twStyle([w(#v14), h(#v14), rounded(#full)])
  let dlAuthors2 = twStyle([text(#sm), fontWeight(#v500), leading(#v5), whitespaceNowrap])
  let ddAuthors = twStyle([textColor(#gray900)])
  let mdxWrapper = twStyle([divideY(#1), borderColor(#gray200), xl([pb(#v0), col(#3), row(#v2)])])
}

let postDateTemplate: Global.dateTemplate = {
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
  let {slug, date, title, tags} = frontmatter

  // (date, title, tags, lastmod, draft, summary, images)->Utils.clog
  <SectionContainer>
    <Navigation />
    <article>
      <div>
        <header className=Styles.header>
          <div className=Styles.div1>
            <dl className=Styles.dl>
              <div>
                <dt className=Styles.dt> {"Published on"->Utils.str} </dt>
                <dd className=Styles.dd>
                  <time dateTime={date}>
                    {Js.Date.fromString(date)
                    ->Global.toLocaleDateStringWith(SiteMetadata.metadata.locale, postDateTemplate)
                    ->Utils.str}
                  </time>
                </dd>
              </div>
            </dl>
            <div> <PageTitle> {title->Utils.str} </PageTitle> </div>
          </div>
        </header>
        <div className=Styles.div2>
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
