type t = [
  | #v3
  | #v4
  | #v5
  | #v6
  | #v7
  | #v8
  | #v9
  | #v10
  | #v11
  | #v12
  | #v13
  | #v14
  | #none
  | #tight
  | #snug
  | #normal
  | #relaxed
  | #loose
]

let toValue = lineHeight =>
  switch lineHeight {
  | #v3 => #rem(0.75)
  | #v4 => #rem(1.)
  | #v5 => #rem(1.25)
  | #v6 => #rem(1.5)
  | #v7 => #rem(1.75)
  | #v8 => #rem(2.)
  | #v9 => #rem(2.25)
  | #v10 => #rem(2.5)
  | #v11 => #rem(2.75)
  | #v12 => #rem(3.)
  | #v13 => #rem(3.25)
  | #v14 => #rem(3.5)
  | #none => #abs(1.)
  | #tight => #abs(1.25)
  | #snug => #abs(1.375)
  | #normal => #abs(1.5)
  | #relaxed => #abs(1.625)
  | #loose => #abs(2.)
  }
