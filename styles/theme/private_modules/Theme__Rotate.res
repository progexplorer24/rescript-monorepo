type t = [
  | #v0
  | #v1
  | #v2
  | #v3
  | #v6
  | #v12
  | #v45
  | #v90
  | #v180
  | #neg1
  | #neg1
  | #neg2
  | #neg6
  | #neg12
  | #neg45
  | #neg90
  | #neg180
]

let _0 = #deg(0.)
let _1 = #deg(1.)
let _2 = #deg(2.)
let _3 = #deg(3.)
let _6 = #deg(6.)
let _12 = #deg(12.)
let _45 = #deg(45.)
let _90 = #deg(90.)
let _180 = #deg(180.)
let n1 = #deg(-1.)
let n2 = #deg(-2.)
let n3 = #deg(-3.)
let n6 = #deg(-6.)
let n12 = #deg(-12.)
let n45 = #deg(-45.)
let n90 = #deg(-90.)
let n180 = #deg(-180.)

let toValue = rotate =>
  switch rotate {
  | #v0 => _0
  | #v1 => _1
  | #v2 => _2
  | #v3 => _3
  | #v6 => _6
  | #v12 => _12
  | #v45 => _45
  | #v90 => _90
  | #v180 => _180
  | #neg1 => n1
  | #neg2 => n2
  | #neg3 => n3
  | #neg6 => n6
  | #neg12 => n12
  | #neg45 => n45
  | #neg90 => n90
  | #neg180 => n180
  }
