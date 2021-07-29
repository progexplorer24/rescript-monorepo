type props = {tags: Js.Dict.t<int>}

module Styles = {
  open Tailwind
  // "flex flex-col items-start justify-start divide-y divide-gray-200 dark:divide-gray-700 md:justify-center md:items-center md:divide-y-0 md:flex-row md:space-x-6 md:mt-24"
  let pageWrapper = twStyle([
    flex,
    flexCol,
    itemsStart,
    justifyStart,
    md([justifyCenter, itemsCenter, flexRow, spaceX(#6), mt(#24)]),
    dark([divideY(~color=#gray700, #1)]),
  ])
  let titleContainer = twStyle([pt(#6), pb(#8), spaceX(#2), md([spaceY(#5)])])
  // text-3xl font-extrabold leading-9 tracking-tight text-gray-900 dark:text-gray-100 sm:text-4xl sm:leading-10 md:text-6xl md:leading-14 md:border-r-2 md:px-6
  let h1Small = Css.sm(twStyle([text(#xl4), leading(#10)]))
  let h1New = Css.color("FF00FF")
  let h1New2 = Css.responsiveBreakpoint(~breakpoint=440, ~css=Css.colorRaw("FF0000"), ())
  let h1 = twStyle([
    text(#xl3),
    fontWeight(#800),
    leading(#9),
    tracking(#tight),
    textColor(#gray900),
    // sm([text(#xl4), leading(#10)]),
    // smNew([textColor(#teal600)]),
    md([text(#xl6), leading(#14), borderR(#2), px(#6)]),
    dark([textColor(#gray100)]),
  ])

  let tagsSection = twStyle([mt(#2), mb(#2), mr(#5)])
  let tagsWrapper = twStyle([
    flex,
    flexWrap,
    maxW(#lg),
    borderT(#1),
    borderColor(#gray300),
    dark([borderColor(#gray700), md([borderT(#0)])]),
  ])
  // "-ml-2 text-sm font-semibold text-gray-600 uppercase dark:text-gray-300"
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
  Js.log(sortedTags)

  Js.log(Styles.h1New2)

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
        <h1 className={Emotion.merge(. [Styles.h1, Styles.h1Small])}> {"Tags"->Utils.str} </h1>
        <h1 className={Emotion.merge(. [Styles.h1New, Styles.h1New2])}> {"Tags"->Utils.str} </h1>
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
