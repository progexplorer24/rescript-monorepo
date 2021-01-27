type t = [#v100 | #v200 | #v300 | #v400 | #v500 | #v600 | #v700 | #v800 | #v900]

let _100 = #num(100)
let _200 = #num(200)
let _300 = #num(300)
let _400 = #num(400)
let _500 = #num(500)
let _600 = #num(600)
let _700 = #num(700)
let _800 = #num(800)
let _900 = #num(900)

let toValue = fontWeight =>
  switch fontWeight {
  | #v100 => _100
  | #v200 => _200
  | #v300 => _300
  | #v400 => _400
  | #v500 => _500
  | #v600 => _600
  | #v700 => _700
  | #v800 => _800
  | #v900 => _900
  }
