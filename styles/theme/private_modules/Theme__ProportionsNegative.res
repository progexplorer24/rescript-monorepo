type t = [
  | #v1By2
  | #v1By3
  | #v2By3
  | #v1By4
  | #v2By4
  | #v3By4
  | #v1By5
  | #v2By5
  | #v3By5
  | #v4By5
  | #v1By6
  | #v2By6
  | #v3By6
  | #v4By6
  | #v5By6
  | #v1By12
  | #v2By12
  | #v3By12
  | #v4By12
  | #v5By12
  | #v6By12
  | #v7By12
  | #v8By12
  | #v9By12
  | #v10By12
  | #v11By12
]

let _1By2 = #percent(-50.)
let _1By3 = #percent(-33.333333)
let _2By3 = #percent(-66.666667)
let _1By4 = #percent(-25.)
let _2By4 = #percent(-50.)
let _3By4 = #percent(-75.)
let _1By5 = #percent(-20.)
let _2By5 = #percent(-40.)
let _3By5 = #percent(-60.)
let _4By5 = #percent(-80.)
let _1By6 = #percent(-16.666667)
let _2By6 = #percent(-33.333333)
let _3By6 = #percent(-50.)
let _4By6 = #percent(-66.666667)
let _5By6 = #percent(-83.333333)
let _1By12 = #percent(-8.333333)
let _2By12 = #percent(-16.666667)
let _3By12 = #percent(-25.)
let _4By12 = #percent(-33.333333)
let _5By12 = #percent(-41.666667)
let _6By12 = #percent(-50.)
let _7By12 = #percent(-58.333333)
let _8By12 = #percent(-66.666667)
let _9By12 = #percent(-75.)
let _10By12 = #percent(-83.333333)
let _11By12 = #percent(-91.666667)

let toValue = value =>
  switch value {
  | #v1By2 => _1By2
  | #v1By3 => _1By3
  | #v2By3 => _2By3
  | #v1By4 => _1By4
  | #v2By4 => _2By4
  | #v3By4 => _3By4
  | #v1By5 => _1By5
  | #v2By5 => _2By5
  | #v3By5 => _3By5
  | #v4By5 => _4By5
  | #v1By6 => _1By6
  | #v2By6 => _2By6
  | #v3By6 => _3By6
  | #v4By6 => _4By6
  | #v5By6 => _5By6
  | #v1By12 => _1By12
  | #v2By12 => _2By12
  | #v3By12 => _3By12
  | #v4By12 => _4By12
  | #v5By12 => _5By12
  | #v6By12 => _6By12
  | #v7By12 => _7By12
  | #v8By12 => _8By12
  | #v9By12 => _9By12
  | #v10By12 => _10By12
  | #v11By12 => _11By12
  }
