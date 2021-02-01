type t = [#v100 | #v200 | #v300 | #v400 | #v500 | #v600 | #v700 | #v800 | #v900]

let toValue = fontWeight =>
  switch fontWeight {
  | #v100 => #num(100)
  | #v200 => #num(200)
  | #v300 => #num(300)
  | #v400 => #num(400)
  | #v500 => #num(500)
  | #v600 => #num(600)
  | #v700 => #num(700)
  | #v800 => #num(800)
  | #v900 => #num(900)
  }
