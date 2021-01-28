module Styles = {
  open Tailwind
  let globalStyles = merge(.[
    twStyle([
      fontFamilies([#custom("Lato")]),
      w(#full),
      h(#full),
      mx(#auto),
      overflowAuto,
      bg(#gray50),
      textColor(#coolGray800),
      fontSans,
    ]),
  ])
  let container = twStyle([maxW(#xl4), mx(#auto)])
}

@react.component
let make = (~children) =>
  <div className=Styles.globalStyles>
    <Next.Head>
      <media name="viewport" content="width=device-width, initial-sacle=1.0" />
      <title> {"Loruki"->Utils.str} </title>
      <link rel="preconnect" href="https://fonts.gstatic.com" />
      <link
        href="https://fonts.googleapis.com/css2?family=Lato:wght@300&display=swap" rel="stylesheet"
      />
    </Next.Head>
    <div className=Styles.container> children </div>
  </div>
