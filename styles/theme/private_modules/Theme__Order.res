type t = [
  | #none
  | #v1
  | #v2
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
  | #first
  | #last
]

let toValue = order =>
  switch order {
  | #none => 0
  | #first => 9999
  | #last => -9999
  | #v1 => 1
  | #v2 => 2
  | #v3 => 3
  | #v4 => 4
  | #v5 => 5
  | #v6 => 6
  | #v7 => 7
  | #v8 => 8
  | #v9 => 9
  | #v10 => 10
  | #v11 => 11
  | #v12 => 12
  }
