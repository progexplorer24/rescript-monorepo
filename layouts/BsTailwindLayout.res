// TODO: Style basic mdx components and create interace for it.
// TODO:
module Styles = {
  open Tailwind
  let globalStyles = CssJs.merge(.[
    fontSans,
    CssJs.style(.[CssJs.fontFamilies([#custom("Nunito Sans")])]),
    mxAuto,
    wFull,
    hFull,
    overflowAuto,
    bgGray50,
    textCoolGray800,
  ])
  let container = CssJs.merge(.[maxW4Xl, mxAuto])

  let twStyles = CssJs.merge(.[flex, nspaceX4])
}

@react.component
let make = (~children) =>
  <div className=Styles.globalStyles>
    <Next.Head>
      <media name="viewport" content="width=device-width, initial-sacle=1.0" />
      <title> {"Bs-TailwindCSS"->Utils.str} </title>
      <link rel="preconnect" href="https://fonts.gstatic.com" />
      <link
        href="https://fonts.googleapis.com/css2?family=Nunito+Sans:wght@400;700;900&display=swap"
        rel="stylesheet"
      />
    </Next.Head>
    <div className=Styles.container> children </div>
  </div>
