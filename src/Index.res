type props = {
  allFrontmatter: array<Mdx__helpers.frontmatterAndSlug>,
  metadata: SiteMetadata.metadata,
}

module Styles = {
  open Tailwind
  let wrapper = twStyle([divideY(~color=#gray200, #1), dark([divideY(~color=#gray700, #1)])])

  let wrapper2 = twStyle([pt(#0), pb(#8), spaceY(#2), md([spaceY(#5)])])
  let h1 = twStyle([
    text(#xl3),
    fontWeight(#800),
    leading(#9),
    tracking(#tight),
    sm([text(#xl4), leading(#10)]),
    md([text(#xl6), leading(#14)]),
    textColor(#gray900),
    dark([textColor(#gray100)]),
  ])

  let h2 = twStyle([
    text(#xl2),
    fontWeight(#700),
    leading(#8),
    tracking(#tight),
    dark([textColor(#gray100)]),
  ])

  let p = twStyle([text(#lg), leading(#7), textColor(#gray500), dark([textColor(#gray400)])])

  let ul = twStyle([divideY(~color=#gray200, #1), dark([divideY(~color=#gray700, #1)])])

  let li = twStyle([py(#12)])
  let dt = twStyle([srOnly])

  let dd = twStyle([
    text(#base),
    fontWeight(#500),
    leading(#6),
    textColor(#gray500),
    dark([textColor(#gray400)]),
  ])

  let headerLink = twStyle([
    textColor(#gray900),
    fontWeight(#700),
    noUnderline,
    textColor(#gray900),
    dark([textColor(#gray100)]),
  ])

  let summary = twStyle([maxW(#none), textColor(#gray400), dark([textColor(#gray500)])])
  let readMoreSection = twStyle([text(#base), fontWeight(#500), leading(#6)])

  let readMoreLink = twStyle([
    textColor(#blue600),
    hover([textColor(#blue700)]),
    dark([hover([textColor(#blue400)])]),
  ])
  let allPosts = twStyle([flex, justifyEnd, text(#base), fontWeight(#500), leading(#6)])
}

let maxDisplay = 5

let default = (props: props) => {
  let {allFrontmatter, metadata} = props
  let description = metadata.description

  let arrLength = array => Belt.Array.length(array)

  let preparePostListArray = (~displayLimit=5, postsArray) =>
    arrLength(postsArray) == 0 ? [] : Belt.Array.slice(postsArray, ~len=displayLimit, ~offset=0)

  let latestPosts = switch preparePostListArray(allFrontmatter) {
  | [] => <> </>
  | array =>
    <ul className={Styles.ul}>
      {React.array(
        Belt.Array.map(array, frontmatter => {
          let {slug, date, title, summary, tags} = frontmatter

          <li key={slug} className=Styles.li>
            <article>
              <div>
                <dl>
                  <dt className=Styles.dt> {"Published on"->Utils.str} </dt>
                  <dd className={Styles.dd}> {date->Utils.str} </dd>
                </dl>
                <div>
                  <div>
                    <div>
                      <h2 className={Styles.h2}>
                        <Mdx.a className={Styles.headerLink} href=slug> {title->Utils.str} </Mdx.a>
                      </h2>
                      <div>
                        {React.array(Belt.Array.map(tags, tag => <Tag key={tag} text={tag} />))}
                      </div>
                    </div>
                    <div className={Styles.summary}> {summary->Utils.str} </div>
                  </div>
                  <div className=Styles.readMoreSection>
                    <Mdx.a href={slug} className={Styles.readMoreLink} ariaLabel={`Read ${title}`}>
                      {`Read more ${Utils.rarr}`->Utils.str}
                    </Mdx.a>
                  </div>
                </div>
              </div>
            </article>
          </li>
        }),
      )}
    </ul>
  }
  <>
    <div className={Styles.wrapper}>
      <div className=Styles.wrapper2>
        <h1 className={Styles.h1}> {"Latest"->Utils.str} </h1>
        <p className={Styles.p}> {description->Utils.str} </p>
      </div>
      {latestPosts}
    </div>
    {arrLength(allFrontmatter) > maxDisplay
      ? <div className=Styles.allPosts>
          <Mdx.a href="/blog" className={Styles.readMoreLink} ariaLabel="all posts">
            {`All Posts ${Utils.rarr}`->Utils.str}
          </Mdx.a>
        </div>
      : React.null}
  </>
}

let getStaticProps = _ctx => {
  let sortedFrontMatter = Mdx__helpers.getBlogPostsFromLatest()

  let metadata = SiteMetadata.metadata
  let props = {
    allFrontmatter: sortedFrontMatter,
    metadata: metadata,
  }

  Js.Promise.resolve({"props": props})
}
