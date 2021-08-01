module Styles = {
  open Tailwind
  let link = twStyle([textColor(#coolGray900), noUnderline, fontWeight(#500)])
}

@react.component
let make = (~children, ~href="/", ~className="", ~ariaLabel="", ~rel: option<string>=?) => {
  if Js.String2.startsWith(href, "/") {
    <Next.Link href={href}>
      <a className={Tailwind.merge(. [Styles.link, className])} ?rel ariaLabel> children </a>
    </Next.Link>
  } else if Js.String2.startsWith(href, "#") {
    <a ariaLabel className={Tailwind.merge(. [Styles.link, className])} ?rel href={href}>
      children
    </a>
  } else {
    <a
      className={Tailwind.merge(. [Styles.link, className])}
      ariaLabel
      target="_blank"
      rel={Js.Array2.joinWith(
        switch rel {
        | Some(string) => ["noopener", "noreferrer", string]
        | None => ["noopener", "noreferrer"]
        },
        " ",
      )}
      href={href}>
      children
    </a>
  }
}
