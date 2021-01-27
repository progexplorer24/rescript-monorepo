type t = [#screenSm | #screenMd | #screenLg | #screenXl | #screenXl2]

let sm = #px(640)
let md = #px(768)
let lg = #px(1024)
let xl = #px(1280)
let _2xl = #px(1536)

let toValue = size =>
  switch size {
  | #screenSm => sm
  | #screenMd => md
  | #screenLg => lg
  | #screenXl => xl
  | #screenXl2 => _2xl
  }
