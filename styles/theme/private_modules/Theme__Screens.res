type t = [#screenSm | #screenMd | #screenLg | #screenXl | #screenXl2]

let toValue = size =>
  switch size {
  | #screenSm => #px(640)
  | #screenMd => #px(768)
  | #screenLg => #px(1024)
  | #screenXl => #px(1280)
  | #screenXl2 => #px(1536)
  }
