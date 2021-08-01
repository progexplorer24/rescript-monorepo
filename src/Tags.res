// TODO: There are some problems with getting rid of a divider on larger screens. Maybe problem with CSS specifity or styles composition.
type props = {tags: Js.Dict.t<int>}

module Styles = {
  open Tailwind

  let pageWrapper = twStyle([
    flex,
    flexCol,
    itemsStart,
    justifyStart,
    dividers([divideY(~color=#gray200, #1), dark([divideY(~color=#gray800, #1)])]),
    md([
      justifyCenter,
      itemsCenter,
      flexRow,
      dividers([
        spaceX(#6),
        divideY(~color=#transparent, #1),
        dark([divideY(~color=#transparent, #1)]),
      ]),
      mt(#24),
    ]),
  ])
  let titleContainer = twStyle([
    pt(#6),
    pb(#8),
    dividers([spaceX(#2)]),
    md([dividers([spaceY(#5)])]),
  ])

  let h1 = twStyle([
    text(#xl3),
    fontWeight(#800),
    leading(#9),
    tracking(#tight),
    textColor(#gray900),
    md([
      text(#xl6),
      leading(#14),
      borderR(#2),
      px(#6),
      borderColor(#gray200),
      dark([borderColor(#gray700)]),
    ]),
    dark([textColor(#gray100)]),
  ])

  let tagsSection = twStyle([mt(#2), mb(#2), mr(#5)])
  let tagsWrapper = twStyle([flex, flexWrap, maxW(#lg)])

  let linkStyles = twStyle([
    nml(#2),
    text(#sm),
    fontWeight(#600),
    textColor(#gray600),
    uppercase,
    noUnderline,
    dark([textColor(#gray300)]),
  ])
}

let default = ({tags}) => {
  let byValue = (tuple1, tuple2) => {
    let (_, value1) = tuple1
    let (_, value2) = tuple2
    value2 - value1
  }
  let entries = Js.Dict.entries(tags)
  let sortedTags = entries->Js.Array2.sortInPlaceWith(byValue)

  let notTagsMsg =
    Js.Array2.length(entries) === 0 ? <> {"No tags found."->Utils.str} </> : React.null

  let renderTags = Js.Array2.map(sortedTags, ((key, value)) => {
    <div key className=Styles.tagsSection>
      <Tag text={key} />
      <Link href={`/tags/${key}`} className=Styles.linkStyles>
        {`(${Belt.Int.toString(value)})`->Utils.str}
      </Link>
    </div>
  })

  <>
    <SEO.PageSEO
      title={`Tags - ${SiteMetadata.metadata.author}`} description="Things I blog about"
    />
    <div className=Styles.pageWrapper>
      <div className=Styles.titleContainer>
        <h1 className={Emotion.merge(. [Styles.h1])}> {"Tags"->Utils.str} </h1>
      </div>
      <div className=Styles.tagsWrapper> notTagsMsg {React.array(renderTags)} </div>
    </div>
  </>
}

let getStaticProps = _ctx => {
  let tagsDictionary = Mdx__helpers.createTagsDictionary("blog")

  let props = {
    tags: tagsDictionary,
  }

  Js.Promise.resolve({"props": props})
}
