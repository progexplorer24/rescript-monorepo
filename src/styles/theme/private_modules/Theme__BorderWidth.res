type t = [#1 | #0 | #2 | #4 | #8]

let toWidth = width =>
  switch width {
  | #0 => #px(0)
  | #1 => #px(1)
  | #2 => #px(2)
  | #4 => #px(4)
  | #8 => #px(8)
  }
