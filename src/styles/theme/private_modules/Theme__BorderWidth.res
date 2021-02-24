type t = [#v1 | #v0 | #v4 | #v8]

let toWidth = width =>
  switch width {
  | #v0 => #px(0)
  | #v1 => #px(1)
  | #v2 => #px(2)
  | #v4 => #px(4)
  | #v8 => #px(8)
  }
