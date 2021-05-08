module Styles = {
  open Tailwind
  let container = twStyle([mx(#auto)])
  let header = twStyle([textCenter])
}

let default = () =>
  <div>
    <div className=Styles.container>
      <Mdx.h2 className=Styles.header> {"Range Explorer"->Utils.str} </Mdx.h2> <Matrix />
    </div>
  </div>
