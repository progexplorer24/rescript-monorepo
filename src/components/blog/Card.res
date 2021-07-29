module Styles = {
  open Tailwind
  //  className="p-4 md:w-1/2 md" style={{ maxWidth: '544px' }}

  let mainWrapper = twStyle([p(#4), maxWPx(544), md([w(#v1By2)])])
  // h-full overflow-hidden border-2 border-gray-200 rounded-md border-opacity-60 dark:border-gray-700
  let card = twStyle([
    h(#full),
    overflowHidden,
    border(#2),
    borderColor(~opacity=0.6, #gray200),
    rounded(#md),
    dark([borderColor(#gray700)]),
  ])
  let image = twStyle([objectCover, objectCenter, lg([h(#48)]), md([h(#36)])])

  let descriptionSection = twStyle([p(#6)])
  let h2 = twStyle([mb(#3)])
  let p = twStyle([mb(#3), textColor(#gray500), maxW(#none), dark([textColor(#gray400)])])
  let bottomLink = twStyle([
    text(#base),
    fontWeight(#500),
    leading(#6),
    textColor(#blue500),
    hover([textColor(#blue600)]),
    dark([hover([textColor(#blue400)])]),
  ])

  let linkStyles = twStyle([
    noUnderline,
    text(#xl2),
    fontWeight(#700),
    leading(#8),
    tracking(#tight),
    dark([textColor(#gray100)]),
  ])
}

@react.component
let make = (~title, ~description, ~imgSrc, ~href=?) => {
  let renderCard = switch href {
  | Some(href) =>
    <Link href={href} ariaLabel={`Link to ${title}`}>
      <Image alt={title} src={imgSrc} className=Styles.image width={544} height={306} />
    </Link>
  | None => <Image alt={title} src={imgSrc} className=Styles.image width={544} height={306} />
  }

  let renderTitle = switch href {
  | Some(href) =>
    <h2 className=Styles.h2>
      <Link href={href} ariaLabel={`Link to ${title}`} className=Styles.linkStyles>
        {title->Utils.str}
      </Link>
    </h2>
  | None =>
    <h2 className={Tailwind.merge(. [Styles.h2, Styles.linkStyles])}> {title->Utils.str} </h2>
  }

  let renderLink = switch href {
  | Some(href) =>
    <Link href={href} className=Styles.bottomLink ariaLabel={`Link to ${title}`}>
      {`Learn more ${Utils.rarr}`->Utils.str}
    </Link>
  | None => React.null
  }

  <div className=Styles.mainWrapper>
    <div className=Styles.card>
      renderCard
      <div className=Styles.descriptionSection>
        renderTitle <p className=Styles.p> {description->Utils.str} </p> renderLink
      </div>
    </div>
  </div>
}
