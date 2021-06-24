module Styles = {
  open Tailwind
  // [CssJs.backgroundColor(#hex("2E2E33"))],
  let cell = twStyle([
    h(#20),
    w(#20),
    bg(#coolGray900),
    border(#1),
    borderCollapse,
    borderColor(#coolGray800),
    m(#0),
    textCenter,
    textColor(#coolGray100),
    fontWeight(#700),
    flex,
    itemsCenter,
    justifyCenter,
  ])
  let row = twStyle([flex, justifyCenter])
  let matrix = twStyle([mb(#16)])
}

type pairs = [
  | #aces
  | #kings
  | #queens
  | #jacks
  | #tens
  | #nines
  | #eights
  | #sevens
  | #sixs
  | #fives
  | #fours
  | #threes
  | #twos
]

type suited = [
  | #ace_king_suited
  | #ace_queen_suited
  | #ace_jack_suited
  | #ace_ten_suited
  | #ace_nine_suited
  | #ace_eight_suited
  | #ace_seven_suited
  | #ace_six_suited
  | #ace_five_suited
  | #ace_four_suited
  | #ace_three_suited
  | #ace_two_suited
  | #king_queen_suited
  | #king_jack_suited
  | #king_ten_suited
  | #king_nine_suited
  | #king_eight_suited
  | #king_seven_suited
  | #king_six_suited
  | #king_five_suited
  | #king_four_suited
  | #king_three_suited
  | #king_two_suited
  | #queen_jack_suited
  | #queen_ten_suited
  | #queen_nine_suited
  | #queen_eight_suited
  | #queen_seven_suited
  | #queen_six_suited
  | #queen_five_suited
  | #queen_four_suited
  | #queen_three_suited
  | #queen_two_suited
  | #jack_ten_suited
  | #jack_nine_suited
  | #jack_eight_suited
  | #jack_seven_suited
  | #jack_six_suited
  | #jack_five_suited
  | #jack_four_suited
  | #jack_three_suited
  | #jack_two_suited
  | #ten_nine_suited
  | #ten_eight_suited
  | #ten_seven_suited
  | #ten_six_suited
  | #ten_five_suited
  | #ten_four_suited
  | #ten_three_suited
  | #ten_two_suited
  | #nine_eight_suited
  | #nine_seven_suited
  | #nine_six_suited
  | #nine_five_suited
  | #nine_four_suited
  | #nine_three_suited
  | #nine_two_suited
  | #eight_seven_suited
  | #eight_six_suited
  | #eight_five_suited
  | #eight_four_suited
  | #eight_three_suited
  | #eight_two_suited
  | #seven_six_suited
  | #seven_five_suited
  | #seven_four_suited
  | #seven_three_suited
  | #seven_two_suited
  | #six_five_suited
  | #six_four_suited
  | #six_three_suited
  | #six_two_suited
  | #five_four_suited
  | #five_three_suited
  | #five_two_suited
  | #four_three_suited
  | #four_two_suited
  | #three_two_suited
]

type off = [
  | #ace_king_off
  | #ace_queen_off
  | #ace_jack_off
  | #ace_ten_off
  | #ace_nine_off
  | #ace_eight_off
  | #ace_seven_off
  | #ace_six_off
  | #ace_five_off
  | #ace_four_off
  | #ace_three_off
  | #ace_two_off
  | #king_queen_off
  | #king_jack_off
  | #king_ten_off
  | #king_nine_off
  | #king_eight_off
  | #king_seven_off
  | #king_six_off
  | #king_five_off
  | #king_four_off
  | #king_three_off
  | #king_two_off
  | #queen_jack_off
  | #queen_ten_off
  | #queen_nine_off
  | #queen_eight_off
  | #queen_seven_off
  | #queen_six_off
  | #queen_five_off
  | #queen_four_off
  | #queen_three_off
  | #queen_two_off
  | #jack_ten_off
  | #jack_nine_off
  | #jack_eight_off
  | #jack_seven_off
  | #jack_six_off
  | #jack_five_off
  | #jack_four_off
  | #jack_three_off
  | #jack_two_off
  | #ten_nine_off
  | #ten_eight_off
  | #ten_seven_off
  | #ten_six_off
  | #ten_five_off
  | #ten_four_off
  | #ten_three_off
  | #ten_two_off
  | #nine_eight_off
  | #nine_seven_off
  | #nine_six_off
  | #nine_five_off
  | #nine_four_off
  | #nine_three_off
  | #nine_two_off
  | #eight_seven_off
  | #eight_six_off
  | #eight_five_off
  | #eight_four_off
  | #eight_three_off
  | #eight_two_off
  | #seven_six_off
  | #seven_five_off
  | #seven_four_off
  | #seven_three_off
  | #seven_two_off
  | #six_five_off
  | #six_four_off
  | #six_three_off
  | #six_two_off
  | #five_four_off
  | #five_three_off
  | #five_two_off
  | #four_three_off
  | #four_two_off
  | #three_two_off
]

// let toRangeValue = combination => switch combination {

// }

let rangeMatrix = [
  ["AA", "AKs", "AQs", "AJs", "ATs", "A9s", "A8s", "A7s", "A6s", "A5s", "A4s", "A3s", "A2s"],
  ["AKo", "KK", "KQs", "KJs", "KTs", "K9s", "K8s", "K7s", "K6s", "K5s", "K4s", "K3s", "K2s"],
  ["AQo", "KQo", "QQ", "QJs", "QTs", "Q9s", "Q8s", "Q7s", "Q6s", "Q5s", "Q4s", "Q3s", "Q2s"],
  ["AJo", "KJo", "QJo", "JJ", "JTs", "J9s", "J8s", "J7s", "J6s", "J5s", "J4s", "J3s", "J2s"],
  ["ATo", "KTo", "QTo", "JTo", "TT", "T9s", "T8s", "T7s", "T6s", "T5s", "T4s", "T3s", "T2s"],
  ["A9o", "K9o", "Q9o", "J9o", "T9o", "99", "98s", "97s", "96s", "95s", "94s", "93s", "92s"],
  ["A8o", "K8o", "Q8o", "J8o", "T8o", "98o", "88", "87s", "86s", "85s", "84s", "83s", "82s"],
  ["A7o", "K7o", "Q7o", "J7o", "T7o", "97o", "87o", "77", "76s", "75s", "74s", "73s", "72s"],
  ["A6o", "K6o", "Q6o", "J6o", "T6o", "96o", "86o", "76o", "66", "65s", "64s", "63s", "62s"],
  ["A5o", "K5o", "Q5o", "J5o", "T5o", "95o", "85o", "75o", "65o", "55", "54s", "53s", "52s"],
  ["A4o", "K4o", "Q4o", "J4o", "T4o", "94o", "84o", "74o", "64o", "54o", "44", "43s", "42s"],
  ["A3o", "K3o", "Q3o", "J3o", "T3o", "93o", "83o", "73o", "63o", "53o", "43o", "33", "32s"],
  ["A2o", "K2o", "Q2o", "J2o", "T2o", "92o", "82o", "72o", "62o", "52o", "42o", "32o", "22"],
]

let isPair = string => Js.String2.charAt(string, 0) == Js.String2.charAt(string, 1) ? true : false
let isOffsuit = string => Js.String2.endsWith(string, "o")
let isSuited = string => Js.String2.endsWith(string, "s")

// let chooseShade = combination =>
//   switch combination {
//   | isPair => Tailwind.bg(#coolGray700)
//   | isOffsuit => Tailwind.bg(#coolGray600)
//   | isSuited => Tailwind.bg(#coolGray500)
//   }

@react.component
let make = () => {
  let renderRow = array =>
    Belt.Array.map(array, combination => {
      <div className={Tailwind.merge(. [Styles.cell])}> {combination->Utils.str} </div>
    })
  let renderMatrix = Belt.Array.map(rangeMatrix, matrixRow =>
    <div className={CssJs.merge(. [Styles.row])}> {React.array(renderRow(matrixRow))} </div>
  )

  <div className={CssJs.merge(. [Styles.matrix])}> {React.array(renderMatrix)} </div>
}
