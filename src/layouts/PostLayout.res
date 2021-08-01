module Styles = {
  open Tailwind
  let wrapper = twStyle([xl([divideY(~color=#gray200, #1), dark([divideY(~color=#gray700, #1)])])])
  let header = twStyle([pt(#6), xl([pb(#6)])])
  let headerContainer = twStyle([spaceY(#1), textCenter])
  let dl = twStyle([spaceY(#10)])
  let dt = twStyle([srOnly])
  let dateStyles = twStyle([
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
    xl([spaceX(#0), block, spaceY(#8)]),
  ])
  let li = twStyle([flex, itemsCenter, spaceX(#2)])
  let avatar = twStyle([w(#14), h(#14), rounded(#full)])
  let dlAuthors2 = twStyle([text(#sm), fontWeight(#500), leading(#5), whitespaceNowrap])
  let ddAuthors = twStyle([textColor(#gray900), dark([textColor(#gray100)])])
  let twitterLink = twStyle([
    textColor(#blue500),
    hover([textColor(#blue600)]),
    dark([hover([textColor(#blue400)])]),
  ])
  let mdxWrapper = twStyle([
    divideY(~color=#gray200, #1),
    dark([divideY(~color=#gray700, #1)]),
    xl([pb(#0), col(#3), row(#2)]),
  ])
  // TODO: Work on tailwind typography and prose class application
  let childrenWrapper = twStyle([pt(#10), pb(#8), dark([maxW(#none)])])
  // pt-6 pb-6 text-sm text-gray-700 dark:text-gray-300
  let articleLinksSection = twStyle([
    pt(#6),
    pb(#6),
    text(#sm),
    fontWeight(#400),
    textColor(#gray700),
    dark([textColor(#gray300)]),
  ])
  let articleLink = twStyle([
    text(#sm),
    fontWeight(#400),
    textColor(#gray700),
    dark([textColor(#gray300)]),
  ])
  // "text-sm font-medium leading-5 divide-gray-200 xl:divide-y dark:divide-gray-700 xl:col-start-1 xl:row-start-2"
  let footerWrapper = twStyle([
    text(#sm),
    fontWeight(#500),
    leading(#5),
    divideY(~color=#gray200, #0),
    dark([divideY(~color=#gray700, #0)]),
    xl([divideY(~color=#gray200, #1), colStart(#1), rowStart(#2)]),
  ])
  let tagsSection = twStyle([py(#4), xl([py(#8)])])
  let tagsTitle = twStyle([
    text(#xs),
    tracking(#wide),
    textColor(#gray500),
    uppercase,
    dark([textColor(#gray400)]),
  ])
  let tagsWrapper = twStyle([flex, flexWrap])

  let paginationWrapper = twStyle([flex, justifyBetween, py(#4), xl([block, spaceY(#8), py(#8)])])

  let paginationTitle = twStyle([
    text(#xs),
    tracking(#wide),
    textColor(#gray500),
    uppercase,
    dark([textColor(#gray400)]),
  ])
  // "text-primary-500 hover:text-primary-600 dark:hover:text-primary-400"
  // "text-primary-500 hover:text-primary-600 dark:hover:text-primary-400"
  let paginationLink = twStyle([
    textColor(#blue500),
    hover([textColor(#blue600)]),
    dark([hover([textColor(#blue400)])]),
  ])

  let goBackSection = twStyle([pt(#4), xl([pt(#8)])])
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

type authorsArray = array<Static.authorFrontmatter>
@react.component
let make = (
  ~children,
  ~frontmatter: Mdx__helpers.frontmatterAndSlug,
  ~authorsArray: authorsArray,
  ~next: Js.Null.t<Mdx__helpers.frontmatterAndSlug>,
  ~prev: Js.Null.t<Mdx__helpers.frontmatterAndSlug>,
) => {
  let {slug, date, title, tags, _} = frontmatter

  let renderAuthors = (authorsArray: authorsArray) =>
    <ul className=Styles.ul>
      {React.array(
        Js.Array2.map(authorsArray, author =>
          <li key={author.name} className=Styles.li>
            <Image
              src={author.avatar} alt="avatar" width={56} height={56} className=Styles.avatar
            />
            <dl className=Styles.dlAuthors2>
              <dt className=Styles.dtAuthors> {"Name"->Utils.str} </dt>
              <dd className=Styles.ddAuthors> {SiteMetadata.metadata.author->Utils.str} </dd>
              <dt className=Styles.dtAuthors> {"Twitter"->Utils.str} </dt>
              <dd>
                <Link href={SiteMetadata.metadata.twitter} className=Styles.twitterLink>
                  {Js.String2.replace(
                    SiteMetadata.metadata.twitter,
                    "https://twitter.com/",
                    "@",
                  )->Utils.str}
                </Link>
              </dd>
            </dl>
          </li>
        ),
      )}
    </ul>

  let renderTags =
    Js.Array2.length(tags) === 0
      ? React.null
      : <div className=Styles.tagsSection>
          <h2 className=Styles.tagsTitle> {"Tags"->Utils.str} </h2>
          <div className="flex flex-wrap">
            {React.array(Js.Array2.map(tags, tag => <Tag key={tag} text={tag} />))}
          </div>
        </div>

  let renderPrev = switch Js.Null.toOption(prev) {
  | Some(value) =>
    <div>
      <h2 className=Styles.paginationTitle> {"Previous Article"->Utils.str} </h2>
      <div>
        <Link href={`/blog/${value.slug}`} className=Styles.paginationLink>
          {value.title->Utils.str}
        </Link>
      </div>
    </div>
  | None => React.null
  }

  let renderNext = switch Js.Null.toOption(next) {
  | Some(value) =>
    <div>
      <h2 className=Styles.paginationTitle> {"Next Article"->Utils.str} </h2>
      <div>
        <Link href={`/blog/${value.slug}`} className=Styles.paginationLink>
          {value.title->Utils.str}
        </Link>
      </div>
    </div>
  | None => React.null
  }

  let renderPrevAndNext = {
    let prev = Js.Null.toOption(prev)
    let next = Js.Null.toOption(next)

    switch (prev, next) {
    | (None, None) => React.null
    | _ => <div className=Styles.paginationWrapper> renderPrev renderNext </div>
    }
  }

  let renderFooter =
    <footer>
      <div className=Styles.footerWrapper> renderTags renderPrevAndNext </div>
      <div className=Styles.goBackSection>
        <Link href="/blog" className=Styles.paginationLink>
          {`${Utils.larr} Back to the blog`->Utils.str}
        </Link>
      </div>
    </footer>

  <SectionContainer>
    <article>
      <div className=Styles.wrapper>
        <header className=Styles.header>
          <div className=Styles.headerContainer>
            <dl className=Styles.dl>
              <div>
                <dt className=Styles.dt> {"Published on"->Utils.str} </dt>
                <dd className=Styles.dateStyles>
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
            <dd> {renderAuthors(authorsArray)} </dd>
          </dl>
          <div className=Styles.mdxWrapper>
            <div className=Styles.childrenWrapper> {children} </div>
            <div className=Styles.articleLinksSection>
              <Link href={discussUrl(slug)} className=Styles.articleLink rel="nofollow">
                {"Discuss on Twitter"->Utils.str}
              </Link>
              {` • `->Utils.str}
              <Link href={editUrl(`${slug}.mdx`)} className=Styles.articleLink>
                {"View on GitHub"->Utils.str}
              </Link>
            </div>
          </div>
          renderFooter
        </div>
      </div>
    </article>
  </SectionContainer>
}
