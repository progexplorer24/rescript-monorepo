module Styles = {
  open Tailwind
  let elementStyles = twStyle([
    mr(#v3),
    text(#sm),
    fontWeight(#v500),
    uppercase,
    hover([textColor(#blue600)]),
  ])
}

@react.component
let make = (~text="", ~className="") =>
  <Next.Link href={`/tags/${Mdx__helpers.kebabCase(text)}`}>
    <a className={Tailwind.merge(. [Styles.elementStyles, className])}> {text->Utils.str} </a>
  </Next.Link>
