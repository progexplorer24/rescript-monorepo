module Styles = {
  open Tailwind
  let elementStyles = twStyle([])
}

// title (required)
// date (required)
// tags (required, can be empty array)
// lastmod (optional)
// draft (optional)
// summary (optional)
// images (optional, if none provided defaults to socialBanner in siteMetadata config)

type date = string
type imgLocation = string

type frontmatter = {
  title: string,
  date: date,
  tags: array<string>,
  lastmod: date,
  draft: bool,
  summary: string,
  images: array<imgLocation>,
}

@react.component
let make = (~children) => {
  // let {date, title, tags, lastmod, draft, summary, images} = frontmatter
  // (date, title, tags, lastmod, draft, summary, images)->Utils.clog
  <SectionContainer>
    <article>
      <div> <dl> <dt> {"Published on"->Utils.str} </dt> <dd> <time /> </dd> </dl> </div>
    </article>
    children
  </SectionContainer>
}
