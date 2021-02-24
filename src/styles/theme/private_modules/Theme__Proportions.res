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

let toValue = value =>
  switch value {
  | #v1By2 => #percent(50.)

  | #v1By3 => #percent(33.333333)
  | #v2By3 => #percent(66.666667)

  | #v1By4 => #percent(25.)
  | #v2By4 => #percent(50.)
  | #v3By4 => #percent(75.)

  | #v1By5 => #percent(20.)
  | #v2By5 => #percent(40.)
  | #v3By5 => #percent(60.)
  | #v4By5 => #percent(80.)

  | #v1By6 => #percent(16.666667)
  | #v2By6 => #percent(33.333333)
  | #v3By6 => #percent(50.)
  | #v4By6 => #percent(66.666667)
  | #v5By6 => #percent(83.333333)

  | #v1By12 => #percent(8.333333)
  | #v2By12 => #percent(16.666667)
  | #v3By12 => #percent(25.)
  | #v4By12 => #percent(33.333333)
  | #v5By12 => #percent(41.666667)
  | #v6By12 => #percent(50.)
  | #v7By12 => #percent(58.333333)
  | #v8By12 => #percent(66.666667)
  | #v9By12 => #percent(75.)
  | #v10By12 => #percent(83.333333)
  | #v11By12 => #percent(91.666667)
  }
