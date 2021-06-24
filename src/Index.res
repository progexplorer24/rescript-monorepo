type props = {allFrontmatter: array<Mdx__helpers.frontmatterAndSlug>, metadata: JSON.data}

module Styles = {
  open Tailwind
  let wrapper = twStyle([divideY(#1), borderColor(#gray200)])
  let wrapper2 = twStyle([pt(#v0), pb(#v8), spaceY(#v2), md([spaceY(#v5)])])
  let h1 = twStyle([
    text(#xl3),
    fontWeight(#v800),
    leading(#v9),
    tracking(#tight),
    textColor(#gray900),
    sm([text(#xl4), leading(#v10)]),
    md([text(#xl6), leading(#v14)]),
  ])

  let h2 = twStyle([text(#xl2), fontWeight(#v700), leading(#v8), tracking(#tight)])

  let p = twStyle([text(#lg), leading(#v7), textColor(#gray500)])

  let li = twStyle([py(#v12)])
  let dt = twStyle([srOnly])

  let dd = twStyle([text(#base), fontWeight(#v500), leading(#v6), textColor(#gray500)])
  let summaryStyles = twStyle([textColor(#gray500), maxW(#none)])
  let readMoreSection = twStyle([text(#base), fontWeight(#v500), leading(#v6)])
  let readMoreLink = twStyle([textColor(#blue600), hover([textColor(#blue700)])])
}

let default = (props: props) => {
  let {allFrontmatter, metadata} = props
  let description = metadata["description"]

  let arrLength = array => Belt.Array.length(array)

  // Utils.clog(props)

  let preparePostListArray = (~displayLimit=5, postsArray) =>
    arrLength(postsArray) == 0 ? [] : Belt.Array.slice(postsArray, ~len=displayLimit, ~offset=0)

  let latestPosts = switch preparePostListArray(allFrontmatter) {
  | [] => <> </>
  | array =>
    <ul>
      {React.array(
        Belt.Array.map(array, frontmatter => {
          let {slug, date, title, summary, tags} = frontmatter

          Utils.clog(frontmatter)
          <li key={slug} className=Styles.li>
            <article>
              <div>
                <dl>
                  <dt className=Styles.dt> {"Published on"->Utils.str} </dt>
                  <dd className=Styles.dd> {date->Utils.str} </dd>
                </dl>
                <div>
                  <div>
                    <div>
                      <h2 className=Styles.h2>
                        <Next.Link href=slug> <a> {title->Utils.str} </a> </Next.Link>
                      </h2>
                      <div>
                        {React.array(Belt.Array.map(tags, tag => <Tag key={tag} text={tag} />))}
                      </div>
                    </div>
                    <div className=Styles.summaryStyles> {summary->Utils.str} </div>
                  </div>
                  <div className=Styles.readMoreSection>
                    <Mdx.a href={slug} className=Styles.readMoreLink ariaLabel={`Read ${title}`}>
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
  <LayoutWrapper headerTitle={metadata["headerTitle"]}>
    <div className=Styles.wrapper>
      <div className=Styles.wrapper2>
        <h1 className=Styles.h1> {"Latest"->Utils.str} </h1>
        <p className=Styles.p> {description->Utils.str} </p>
      </div>
      {latestPosts}
    </div>
  </LayoutWrapper>
}

let getStaticProps = _ctx => {
  let sortedFrontMatter = Mdx__helpers.getBlogPostsFromLatest()

  let metadata = Mdx__helpers.returnSiteMetadata()
  let props = {
    allFrontmatter: sortedFrontMatter,
    metadata: metadata,
  }

  Js.Promise.resolve({"props": props})
}
