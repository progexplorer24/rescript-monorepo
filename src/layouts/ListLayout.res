type pagination = {
  currentPage: int,
  totalPages: int,
}

module Styles = {
  open Tailwind
  let divider = twStyle([divideY(~color=#gray300, #1)])
  let searchSection = twStyle([pt(#6), pb(#8), spaceY(#2), md([spaceY(#5)])])
  // text-3xl font-extrabold leading-9 tracking-tight text-gray-900 dark:text-gray-100 sm:text-4xl sm:leading-10 md:text-6xl md:leading-14
  let h1 = twStyle([
    text(#xl3),
    fontWeight(#800),
    leading(#9),
    tracking(#tight),
    textColor(#gray900),
    dark([textColor(#gray100)]),
    sm([text(#xl4), leading(#10)]),
    md([text(#xl6), leading(#14)]),
  ])

  let inputWrapper = twStyle([relative, maxW(#lg)])
  // "block w-full px-4 py-2 text-gray-900 bg-white border border-gray-300 rounded-md dark:border-gray-900 focus:ring-primary-500 focus:border-primary-500 dark:bg-gray-800 dark:text-gray-100"
  let input = twStyle([
    block,
    w(#full),
    px(#4),
    py(#2),
    textColor(#gray900),
    bg(#white),
    border(#1),
    borderColor(#gray300),
    rounded(#md),
    placeholder(#gray500),
    dark([borderColor(#gray900), bg(#gray800), textColor(#gray100)]),
    focus([ring(Theme.Colors.toColor(#blue500)), borderColor(#blue500)]),
  ])
  let searchIcon = twStyle([
    absolute,
    w(#5),
    h(#5),
    textColor(#gray400),
    right(#3),
    top(#3),
    dark([textColor(#gray300)]),
  ])

  let li = twStyle([py(#4)])
  // "space-y-2 xl:grid xl:grid-cols-4 xl:space-y-0 xl:items-baseline"
  let article = twStyle([spaceY(#2), xl([grid, gridCols(#4), spaceY(#0), itemsBaseline])])
  let dt = twStyle([srOnly])
  // text-base font-medium leading-6 text-gray-500 dark:text-gray-400
  let dd = twStyle([
    text(#base),
    fontWeight(#500),
    leading(#6),
    textColor(#gray500),
    dark([textColor(#gray400)]),
  ])
  let contentSection = twStyle([spaceY(#3), xl([col(#3)])])
  let h3Link = twStyle([
    text(#xl2),
    fontWeight(#700),
    leading(#8),
    tracking(#tight),
    textColor(#gray900),
    noUnderline,
    dark([textColor(#gray100)]),
  ])

  let flexWrapper = twStyle([flex, flexWrap, mt(#1)])
  // "prose text-gray-500 max-w-none dark:text-gray-400"
  let summary = twStyle([
    textColor(#gray500),
    maxW(#none),
    leadingFloat(1.75),
    dark([textColor(#gray400)]),
  ])
}

@react.component
let make = (
  ~posts: array<Mdx__helpers.frontmatterAndSlug>,
  ~title,
  ~initialDisplayPosts=[],
  ~pagination: pagination,
) => {
  let (searchValue, setSearchValue) = React.useState(_ => "")
  let filteredBlogPosts = Js.Array2.filter(posts, frontMatter => {
    let searchContent =
      frontMatter.title ++ frontMatter.summary ++ Js.Array2.joinWith(frontMatter.tags, " ")
    Js.String2.toLocaleLowerCase(searchContent)->Js.String2.includes(
      Js.String2.toLocaleLowerCase(searchValue),
    )
  })

  let onChange = e => {
    let value = ReactEvent.Form.target(e)["value"]
    setSearchValue(_ => value)
  }

  let isEmptyList = list =>
    Js.Array2.length(list) === 0 ? <li> {"No posts found."->Utils.str} </li> : React.null

  // If initialDisplayPosts exist, display it if no searchValue is specified
  let displayPosts =
    Js.Array2.length(initialDisplayPosts) > 0 && searchValue === ""
      ? initialDisplayPosts
      : filteredBlogPosts

  let renderPosts = displayPosts->Js.Array2.map(frontmatter => {
    let {slug, date, title, summary, tags} = frontmatter

    <li key={slug} className=Styles.li>
      <article className=Styles.article>
        <dl>
          <dt className=Styles.dt> {"Published on"->Utils.str} </dt>
          <dd className=Styles.dd>
            <time dateTime={date}> {Mdx__helpers.formatDateString(date)->Utils.str} </time>
          </dd>
        </dl>
        <div className=Styles.contentSection>
          <div>
            <h3>
              <Link href={`/blog/${slug}`} className=Styles.h3Link> {title->Utils.str} </Link>
            </h3>
            <div className=Styles.flexWrapper>
              {React.array(tags->Js.Array2.map(tag => <Tag key={tag} text={tag} />))}
            </div>
          </div>
          <div className=Styles.summary> {summary->Utils.str} </div>
        </div>
      </article>
    </li>
  })

  let renderPagination =
    pagination.totalPages > 1 && searchValue === ""
      ? <Pagination currentPage={pagination.currentPage} totalPages={pagination.totalPages} />
      : React.null

  <>
    <div className=Styles.divider>
      <div className=Styles.searchSection>
        <h1 className=Styles.h1> {title->Utils.str} </h1>
        <div className=Styles.inputWrapper>
          <input
            ariaLabel="Search articles"
            type_="text"
            onChange
            placeholder="Search articles"
            className=Styles.input
          />
          <svg
            className=Styles.searchIcon
            xmlns="http://www.w3.org/2000/svg"
            fill="none"
            viewBox="0 0 24 24"
            stroke="currentColor">
            <path
              strokeLinecap="round"
              strokeLinejoin="round"
              strokeWidth="2"
              d="M21 21l-6-6m2-5a7 7 0 11-14 0 7 7 0 0114 0z"
            />
          </svg>
        </div>
      </div>
      <ul> {isEmptyList(filteredBlogPosts)} {React.array(renderPosts)} </ul>
    </div>
    renderPagination
  </>
}
