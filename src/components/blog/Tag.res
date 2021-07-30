module Styles = {
  open Tailwind
  let elementStyles = twStyle([
    mr(#3),
    text(#sm),
    fontWeight(#500),
    uppercase,
    textColor(#blue500),
    hover([textColor(#blue600)]),
    dark([hover([textColor(#blue400)])]),
  ])
}

@react.component
let make = (~text="", ~className="") => {
  <Next.Link href={`/tags/${Mdx__helpers.kebabCase(text)}`}>
    <a className={Tailwind.merge(. [Styles.elementStyles, className])}>
      {text->Js.String2.split(" ")->Js.Array2.joinWith("-")->Utils.str}
    </a>
  </Next.Link>
}
