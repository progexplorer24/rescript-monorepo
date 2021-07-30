module Styles = {
  open Tailwind
  let mainWrapper = twStyle([pt(#6), pb(#8), spaceY(#2), md([spaceY(#5)])])
  let nav = twStyle([flex, justifyBetween])
  // "cursor-auto disabled:opacity-50"
  let disabled = twStyle([cursorAuto, disabled([opacity(#50)])])
}

@react.component
let make = (~totalPages: int, ~currentPage: int) => {
  let prevPage = currentPage - 1 > 0
  let nextPage = currentPage + 1 <= totalPages

  let renderPrev = prevPage
    ? <Link
        href={currentPage - 1 === 1
          ? `/blog/`
          : `/blog/page/${Belt.Int.toString(currentPage - 1)}`}>
        <button rel="previous"> {"Previous"->Utils.str} </button>
      </Link>
    : <button rel="previous" className=Styles.disabled disabled={!prevPage}>
        {"Previous"->Utils.str}
      </button>

  let renderNext = nextPage
    ? <Link href={`/blog/page/${Belt.Int.toString(currentPage + 1)}`}>
        <button rel="next"> {"Next"->Utils.str} </button>
      </Link>
    : <button rel="next" className=Styles.disabled disabled={!nextPage}>
        {"Next"->Utils.str}
      </button>

  <div className=Styles.mainWrapper>
    <nav className=Styles.nav>
      renderPrev
      <span>
        {`${Belt.Int.toString(currentPage)} of ${Belt.Int.toString(totalPages)}`->Utils.str}
      </span>
      renderNext
    </nav>
  </div>
}
