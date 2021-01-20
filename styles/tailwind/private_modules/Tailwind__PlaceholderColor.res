// NOTE: Placeholder Color - Utilities for controlling the color of placeholder text.
open CssJs

let placeholderTransparent = style(.[placeholder([color(#transparent)])])
let placeholderCurrent = style(.[placeholder([color(#currentColor)])])
let placeholderBlack = opacity => style(.[placeholder([color(Theme.Colors.black(opacity))])])
let placeholderWhite = opacity => style(.[placeholder([color(Theme.Colors.white(opacity))])])

let placeholderGray50 = opacity => style(.[placeholder([color(Theme.Colors.gray50(opacity))])])
let placeholderGray100 = opacity => style(.[placeholder([color(Theme.Colors.gray100(opacity))])])
let placeholderGray200 = opacity => style(.[placeholder([color(Theme.Colors.gray200(opacity))])])
let placeholderGray300 = opacity => style(.[placeholder([color(Theme.Colors.gray300(opacity))])])
let placeholderGray400 = opacity => style(.[placeholder([color(Theme.Colors.gray400(opacity))])])
let placeholderGray500 = opacity => style(.[placeholder([color(Theme.Colors.gray500(opacity))])])
let placeholderGray600 = opacity => style(.[placeholder([color(Theme.Colors.gray600(opacity))])])
let placeholderGray700 = opacity => style(.[placeholder([color(Theme.Colors.gray700(opacity))])])
let placeholderGray800 = opacity => style(.[placeholder([color(Theme.Colors.gray800(opacity))])])
let placeholderGray900 = opacity => style(.[placeholder([color(Theme.Colors.gray900(opacity))])])

let placeholderBlueGray50 = opacity =>
  style(.[placeholder([color(Theme.Colors.blueGray50(opacity))])])
let placeholderBlueGray100 = opacity =>
  style(.[placeholder([color(Theme.Colors.blueGray100(opacity))])])
let placeholderBlueGray200 = opacity =>
  style(.[placeholder([color(Theme.Colors.blueGray200(opacity))])])
let placeholderBlueGray300 = opacity =>
  style(.[placeholder([color(Theme.Colors.blueGray300(opacity))])])
let placeholderBlueGray400 = opacity =>
  style(.[placeholder([color(Theme.Colors.blueGray400(opacity))])])
let placeholderBlueGray500 = opacity =>
  style(.[placeholder([color(Theme.Colors.blueGray500(opacity))])])
let placeholderBlueGray600 = opacity =>
  style(.[placeholder([color(Theme.Colors.blueGray600(opacity))])])
let placeholderBlueGray700 = opacity =>
  style(.[placeholder([color(Theme.Colors.blueGray700(opacity))])])
let placeholderBlueGray800 = opacity =>
  style(.[placeholder([color(Theme.Colors.blueGray800(opacity))])])
let placeholderBlueGray900 = opacity =>
  style(.[placeholder([color(Theme.Colors.blueGray900(opacity))])])

let placeholderCoolGray50 = opacity =>
  style(.[placeholder([color(Theme.Colors.coolGray50(opacity))])])
let placeholderCoolGray100 = opacity =>
  style(.[placeholder([color(Theme.Colors.coolGray100(opacity))])])
let placeholderCoolGray200 = opacity =>
  style(.[placeholder([color(Theme.Colors.coolGray200(opacity))])])
let placeholderCoolGray300 = opacity =>
  style(.[placeholder([color(Theme.Colors.coolGray300(opacity))])])
let placeholderCoolGray400 = opacity =>
  style(.[placeholder([color(Theme.Colors.coolGray400(opacity))])])
let placeholderCoolGray500 = opacity =>
  style(.[placeholder([color(Theme.Colors.coolGray500(opacity))])])
let placeholderCoolGray600 = opacity =>
  style(.[placeholder([color(Theme.Colors.coolGray600(opacity))])])
let placeholderCoolGray700 = opacity =>
  style(.[placeholder([color(Theme.Colors.coolGray700(opacity))])])
let placeholderCoolGray800 = opacity =>
  style(.[placeholder([color(Theme.Colors.coolGray800(opacity))])])
let placeholderCoolGray900 = opacity =>
  style(.[placeholder([color(Theme.Colors.coolGray900(opacity))])])

let placeholderTrueGray50 = opacity =>
  style(.[placeholder([color(Theme.Colors.trueGray50(opacity))])])
let placeholderTrueGray100 = opacity =>
  style(.[placeholder([color(Theme.Colors.trueGray100(opacity))])])
let placeholderTrueGray200 = opacity =>
  style(.[placeholder([color(Theme.Colors.trueGray200(opacity))])])
let placeholderTrueGray300 = opacity =>
  style(.[placeholder([color(Theme.Colors.trueGray300(opacity))])])
let placeholderTrueGray400 = opacity =>
  style(.[placeholder([color(Theme.Colors.trueGray400(opacity))])])
let placeholderTrueGray500 = opacity =>
  style(.[placeholder([color(Theme.Colors.trueGray500(opacity))])])
let placeholderTrueGray600 = opacity =>
  style(.[placeholder([color(Theme.Colors.trueGray600(opacity))])])
let placeholderTrueGray700 = opacity =>
  style(.[placeholder([color(Theme.Colors.trueGray700(opacity))])])
let placeholderTrueGray800 = opacity =>
  style(.[placeholder([color(Theme.Colors.trueGray800(opacity))])])
let placeholderTrueGray900 = opacity =>
  style(.[placeholder([color(Theme.Colors.trueGray900(opacity))])])

let placeholderWarmGray50 = opacity =>
  style(.[placeholder([color(Theme.Colors.warmGray50(opacity))])])
let placeholderWarmGray100 = opacity =>
  style(.[placeholder([color(Theme.Colors.warmGray100(opacity))])])
let placeholderWarmGray200 = opacity =>
  style(.[placeholder([color(Theme.Colors.warmGray200(opacity))])])
let placeholderWarmGray300 = opacity =>
  style(.[placeholder([color(Theme.Colors.warmGray300(opacity))])])
let placeholderWarmGray400 = opacity =>
  style(.[placeholder([color(Theme.Colors.warmGray400(opacity))])])
let placeholderWarmGray500 = opacity =>
  style(.[placeholder([color(Theme.Colors.warmGray500(opacity))])])
let placeholderWarmGray600 = opacity =>
  style(.[placeholder([color(Theme.Colors.warmGray600(opacity))])])
let placeholderWarmGray700 = opacity =>
  style(.[placeholder([color(Theme.Colors.warmGray700(opacity))])])
let placeholderWarmGray800 = opacity =>
  style(.[placeholder([color(Theme.Colors.warmGray800(opacity))])])
let placeholderWarmGray900 = opacity =>
  style(.[placeholder([color(Theme.Colors.warmGray900(opacity))])])

let placeholderRed50 = opacity => style(.[placeholder([color(Theme.Colors.red50(opacity))])])
let placeholderRed100 = opacity => style(.[placeholder([color(Theme.Colors.red100(opacity))])])
let placeholderRed200 = opacity => style(.[placeholder([color(Theme.Colors.red200(opacity))])])
let placeholderRed300 = opacity => style(.[placeholder([color(Theme.Colors.red300(opacity))])])
let placeholderRed400 = opacity => style(.[placeholder([color(Theme.Colors.red400(opacity))])])
let placeholderRed500 = opacity => style(.[placeholder([color(Theme.Colors.red500(opacity))])])
let placeholderRed600 = opacity => style(.[placeholder([color(Theme.Colors.red600(opacity))])])
let placeholderRed700 = opacity => style(.[placeholder([color(Theme.Colors.red700(opacity))])])
let placeholderRed800 = opacity => style(.[placeholder([color(Theme.Colors.red800(opacity))])])
let placeholderRed900 = opacity => style(.[placeholder([color(Theme.Colors.red900(opacity))])])

let placeholderOrange50 = opacity => style(.[placeholder([color(Theme.Colors.orange50(opacity))])])
let placeholderOrange100 = opacity =>
  style(.[placeholder([color(Theme.Colors.orange100(opacity))])])
let placeholderOrange200 = opacity =>
  style(.[placeholder([color(Theme.Colors.orange200(opacity))])])
let placeholderOrange300 = opacity =>
  style(.[placeholder([color(Theme.Colors.orange300(opacity))])])
let placeholderOrange400 = opacity =>
  style(.[placeholder([color(Theme.Colors.orange400(opacity))])])
let placeholderOrange500 = opacity =>
  style(.[placeholder([color(Theme.Colors.orange500(opacity))])])
let placeholderOrange600 = opacity =>
  style(.[placeholder([color(Theme.Colors.orange600(opacity))])])
let placeholderOrange700 = opacity =>
  style(.[placeholder([color(Theme.Colors.orange700(opacity))])])
let placeholderOrange800 = opacity =>
  style(.[placeholder([color(Theme.Colors.orange800(opacity))])])
let placeholderOrange900 = opacity =>
  style(.[placeholder([color(Theme.Colors.orange900(opacity))])])

let placeholderAmber50 = opacity => style(.[placeholder([color(Theme.Colors.amber50(opacity))])])
let placeholderAmber100 = opacity => style(.[placeholder([color(Theme.Colors.amber100(opacity))])])
let placeholderAmber200 = opacity => style(.[placeholder([color(Theme.Colors.amber200(opacity))])])
let placeholderAmber300 = opacity => style(.[placeholder([color(Theme.Colors.amber300(opacity))])])
let placeholderAmber400 = opacity => style(.[placeholder([color(Theme.Colors.amber400(opacity))])])
let placeholderAmber500 = opacity => style(.[placeholder([color(Theme.Colors.amber500(opacity))])])
let placeholderAmber600 = opacity => style(.[placeholder([color(Theme.Colors.amber600(opacity))])])
let placeholderAmber700 = opacity => style(.[placeholder([color(Theme.Colors.amber700(opacity))])])
let placeholderAmber800 = opacity => style(.[placeholder([color(Theme.Colors.amber800(opacity))])])
let placeholderAmber900 = opacity => style(.[placeholder([color(Theme.Colors.amber900(opacity))])])

let placeholderYellow50 = opacity => style(.[placeholder([color(Theme.Colors.yellow50(opacity))])])
let placeholderYellow100 = opacity =>
  style(.[placeholder([color(Theme.Colors.yellow100(opacity))])])
let placeholderYellow200 = opacity =>
  style(.[placeholder([color(Theme.Colors.yellow200(opacity))])])
let placeholderYellow300 = opacity =>
  style(.[placeholder([color(Theme.Colors.yellow300(opacity))])])
let placeholderYellow400 = opacity =>
  style(.[placeholder([color(Theme.Colors.yellow400(opacity))])])
let placeholderYellow500 = opacity =>
  style(.[placeholder([color(Theme.Colors.yellow500(opacity))])])
let placeholderYellow600 = opacity =>
  style(.[placeholder([color(Theme.Colors.yellow600(opacity))])])
let placeholderYellow700 = opacity =>
  style(.[placeholder([color(Theme.Colors.yellow700(opacity))])])
let placeholderYellow800 = opacity =>
  style(.[placeholder([color(Theme.Colors.yellow800(opacity))])])
let placeholderYellow900 = opacity =>
  style(.[placeholder([color(Theme.Colors.yellow900(opacity))])])

let placeholderLime50 = opacity => style(.[placeholder([color(Theme.Colors.lime50(opacity))])])
let placeholderLime100 = opacity => style(.[placeholder([color(Theme.Colors.lime100(opacity))])])
let placeholderLime200 = opacity => style(.[placeholder([color(Theme.Colors.lime200(opacity))])])
let placeholderLime300 = opacity => style(.[placeholder([color(Theme.Colors.lime300(opacity))])])
let placeholderLime400 = opacity => style(.[placeholder([color(Theme.Colors.lime400(opacity))])])
let placeholderLime500 = opacity => style(.[placeholder([color(Theme.Colors.lime500(opacity))])])
let placeholderLime600 = opacity => style(.[placeholder([color(Theme.Colors.lime600(opacity))])])
let placeholderLime700 = opacity => style(.[placeholder([color(Theme.Colors.lime700(opacity))])])
let placeholderLime800 = opacity => style(.[placeholder([color(Theme.Colors.lime800(opacity))])])
let placeholderLime900 = opacity => style(.[placeholder([color(Theme.Colors.lime900(opacity))])])

let placeholderGreen50 = opacity => style(.[placeholder([color(Theme.Colors.green50(opacity))])])
let placeholderGreen100 = opacity => style(.[placeholder([color(Theme.Colors.green100(opacity))])])
let placeholderGreen200 = opacity => style(.[placeholder([color(Theme.Colors.green200(opacity))])])
let placeholderGreen300 = opacity => style(.[placeholder([color(Theme.Colors.green300(opacity))])])
let placeholderGreen400 = opacity => style(.[placeholder([color(Theme.Colors.green400(opacity))])])
let placeholderGreen500 = opacity => style(.[placeholder([color(Theme.Colors.green500(opacity))])])
let placeholderGreen600 = opacity => style(.[placeholder([color(Theme.Colors.green600(opacity))])])
let placeholderGreen700 = opacity => style(.[placeholder([color(Theme.Colors.green700(opacity))])])
let placeholderGreen800 = opacity => style(.[placeholder([color(Theme.Colors.green800(opacity))])])
let placeholderGreen900 = opacity => style(.[placeholder([color(Theme.Colors.green900(opacity))])])

let placeholderEmerald50 = opacity =>
  style(.[placeholder([color(Theme.Colors.emerald50(opacity))])])
let placeholderEmerald100 = opacity =>
  style(.[placeholder([color(Theme.Colors.emerald100(opacity))])])
let placeholderEmerald200 = opacity =>
  style(.[placeholder([color(Theme.Colors.emerald200(opacity))])])
let placeholderEmerald300 = opacity =>
  style(.[placeholder([color(Theme.Colors.emerald300(opacity))])])
let placeholderEmerald400 = opacity =>
  style(.[placeholder([color(Theme.Colors.emerald400(opacity))])])
let placeholderEmerald500 = opacity =>
  style(.[placeholder([color(Theme.Colors.emerald500(opacity))])])
let placeholderEmerald600 = opacity =>
  style(.[placeholder([color(Theme.Colors.emerald600(opacity))])])
let placeholderEmerald700 = opacity =>
  style(.[placeholder([color(Theme.Colors.emerald700(opacity))])])
let placeholderEmerald800 = opacity =>
  style(.[placeholder([color(Theme.Colors.emerald800(opacity))])])
let placeholderEmerald900 = opacity =>
  style(.[placeholder([color(Theme.Colors.emerald900(opacity))])])

let placeholderTeal50 = opacity => style(.[placeholder([color(Theme.Colors.teal50(opacity))])])
let placeholderTeal100 = opacity => style(.[placeholder([color(Theme.Colors.teal100(opacity))])])
let placeholderTeal200 = opacity => style(.[placeholder([color(Theme.Colors.teal200(opacity))])])
let placeholderTeal300 = opacity => style(.[placeholder([color(Theme.Colors.teal300(opacity))])])
let placeholderTeal400 = opacity => style(.[placeholder([color(Theme.Colors.teal400(opacity))])])
let placeholderTeal500 = opacity => style(.[placeholder([color(Theme.Colors.teal500(opacity))])])
let placeholderTeal600 = opacity => style(.[placeholder([color(Theme.Colors.teal600(opacity))])])
let placeholderTeal700 = opacity => style(.[placeholder([color(Theme.Colors.teal700(opacity))])])
let placeholderTeal800 = opacity => style(.[placeholder([color(Theme.Colors.teal800(opacity))])])
let placeholderTeal900 = opacity => style(.[placeholder([color(Theme.Colors.teal900(opacity))])])

let placeholderCyan50 = opacity => style(.[placeholder([color(Theme.Colors.cyan50(opacity))])])
let placeholderCyan100 = opacity => style(.[placeholder([color(Theme.Colors.cyan100(opacity))])])
let placeholderCyan200 = opacity => style(.[placeholder([color(Theme.Colors.cyan200(opacity))])])
let placeholderCyan300 = opacity => style(.[placeholder([color(Theme.Colors.cyan300(opacity))])])
let placeholderCyan400 = opacity => style(.[placeholder([color(Theme.Colors.cyan400(opacity))])])
let placeholderCyan500 = opacity => style(.[placeholder([color(Theme.Colors.cyan500(opacity))])])
let placeholderCyan600 = opacity => style(.[placeholder([color(Theme.Colors.cyan600(opacity))])])
let placeholderCyan700 = opacity => style(.[placeholder([color(Theme.Colors.cyan700(opacity))])])
let placeholderCyan800 = opacity => style(.[placeholder([color(Theme.Colors.cyan800(opacity))])])
let placeholderCyan900 = opacity => style(.[placeholder([color(Theme.Colors.cyan900(opacity))])])

let placeholderLightBlue50 = opacity =>
  style(.[placeholder([color(Theme.Colors.lightBlue50(opacity))])])
let placeholderLightBlue100 = opacity =>
  style(.[placeholder([color(Theme.Colors.lightBlue100(opacity))])])
let placeholderLightBlue200 = opacity =>
  style(.[placeholder([color(Theme.Colors.lightBlue200(opacity))])])
let placeholderLightBlue300 = opacity =>
  style(.[placeholder([color(Theme.Colors.lightBlue300(opacity))])])
let placeholderLightBlue400 = opacity =>
  style(.[placeholder([color(Theme.Colors.lightBlue400(opacity))])])
let placeholderLightBlue500 = opacity =>
  style(.[placeholder([color(Theme.Colors.lightBlue500(opacity))])])
let placeholderLightBlue600 = opacity =>
  style(.[placeholder([color(Theme.Colors.lightBlue600(opacity))])])
let placeholderLightBlue700 = opacity =>
  style(.[placeholder([color(Theme.Colors.lightBlue700(opacity))])])
let placeholderLightBlue800 = opacity =>
  style(.[placeholder([color(Theme.Colors.lightBlue800(opacity))])])
let placeholderLightBlue900 = opacity =>
  style(.[placeholder([color(Theme.Colors.lightBlue900(opacity))])])

let placeholderBlue50 = opacity => style(.[placeholder([color(Theme.Colors.blue50(opacity))])])
let placeholderBlue100 = opacity => style(.[placeholder([color(Theme.Colors.blue100(opacity))])])
let placeholderBlue200 = opacity => style(.[placeholder([color(Theme.Colors.blue200(opacity))])])
let placeholderBlue300 = opacity => style(.[placeholder([color(Theme.Colors.blue300(opacity))])])
let placeholderBlue400 = opacity => style(.[placeholder([color(Theme.Colors.blue400(opacity))])])
let placeholderBlue500 = opacity => style(.[placeholder([color(Theme.Colors.blue500(opacity))])])
let placeholderBlue600 = opacity => style(.[placeholder([color(Theme.Colors.blue600(opacity))])])
let placeholderBlue700 = opacity => style(.[placeholder([color(Theme.Colors.blue700(opacity))])])
let placeholderBlue800 = opacity => style(.[placeholder([color(Theme.Colors.blue800(opacity))])])
let placeholderBlue900 = opacity => style(.[placeholder([color(Theme.Colors.blue900(opacity))])])

let placeholderIndigo50 = opacity => style(.[placeholder([color(Theme.Colors.indigo50(opacity))])])
let placeholderIndigo100 = opacity =>
  style(.[placeholder([color(Theme.Colors.indigo100(opacity))])])
let placeholderIndigo200 = opacity =>
  style(.[placeholder([color(Theme.Colors.indigo200(opacity))])])
let placeholderIndigo300 = opacity =>
  style(.[placeholder([color(Theme.Colors.indigo300(opacity))])])
let placeholderIndigo400 = opacity =>
  style(.[placeholder([color(Theme.Colors.indigo400(opacity))])])
let placeholderIndigo500 = opacity =>
  style(.[placeholder([color(Theme.Colors.indigo500(opacity))])])
let placeholderIndigo600 = opacity =>
  style(.[placeholder([color(Theme.Colors.indigo600(opacity))])])
let placeholderIndigo700 = opacity =>
  style(.[placeholder([color(Theme.Colors.indigo700(opacity))])])
let placeholderIndigo800 = opacity =>
  style(.[placeholder([color(Theme.Colors.indigo800(opacity))])])
let placeholderIndigo900 = opacity =>
  style(.[placeholder([color(Theme.Colors.indigo900(opacity))])])

let placeholderViolet50 = opacity => style(.[placeholder([color(Theme.Colors.violet50(opacity))])])
let placeholderViolet100 = opacity =>
  style(.[placeholder([color(Theme.Colors.violet100(opacity))])])
let placeholderViolet200 = opacity =>
  style(.[placeholder([color(Theme.Colors.violet200(opacity))])])
let placeholderViolet300 = opacity =>
  style(.[placeholder([color(Theme.Colors.violet300(opacity))])])
let placeholderViolet400 = opacity =>
  style(.[placeholder([color(Theme.Colors.violet400(opacity))])])
let placeholderViolet500 = opacity =>
  style(.[placeholder([color(Theme.Colors.violet500(opacity))])])
let placeholderViolet600 = opacity =>
  style(.[placeholder([color(Theme.Colors.violet600(opacity))])])
let placeholderViolet700 = opacity =>
  style(.[placeholder([color(Theme.Colors.violet700(opacity))])])
let placeholderViolet800 = opacity =>
  style(.[placeholder([color(Theme.Colors.violet800(opacity))])])
let placeholderViolet900 = opacity =>
  style(.[placeholder([color(Theme.Colors.violet900(opacity))])])

let placeholderPurple50 = opacity => style(.[placeholder([color(Theme.Colors.purple50(opacity))])])
let placeholderPurple100 = opacity =>
  style(.[placeholder([color(Theme.Colors.purple100(opacity))])])
let placeholderPurple200 = opacity =>
  style(.[placeholder([color(Theme.Colors.purple200(opacity))])])
let placeholderPurple300 = opacity =>
  style(.[placeholder([color(Theme.Colors.purple300(opacity))])])
let placeholderPurple400 = opacity =>
  style(.[placeholder([color(Theme.Colors.purple400(opacity))])])
let placeholderPurple500 = opacity =>
  style(.[placeholder([color(Theme.Colors.purple500(opacity))])])
let placeholderPurple600 = opacity =>
  style(.[placeholder([color(Theme.Colors.purple600(opacity))])])
let placeholderPurple700 = opacity =>
  style(.[placeholder([color(Theme.Colors.purple700(opacity))])])
let placeholderPurple800 = opacity =>
  style(.[placeholder([color(Theme.Colors.purple800(opacity))])])
let placeholderPurple900 = opacity =>
  style(.[placeholder([color(Theme.Colors.purple900(opacity))])])

let placeholderFuchsia50 = opacity =>
  style(.[placeholder([color(Theme.Colors.fuchsia50(opacity))])])
let placeholderFuchsia100 = opacity =>
  style(.[placeholder([color(Theme.Colors.fuchsia100(opacity))])])
let placeholderFuchsia200 = opacity =>
  style(.[placeholder([color(Theme.Colors.fuchsia200(opacity))])])
let placeholderFuchsia300 = opacity =>
  style(.[placeholder([color(Theme.Colors.fuchsia300(opacity))])])
let placeholderFuchsia400 = opacity =>
  style(.[placeholder([color(Theme.Colors.fuchsia400(opacity))])])
let placeholderFuchsia500 = opacity =>
  style(.[placeholder([color(Theme.Colors.fuchsia500(opacity))])])
let placeholderFuchsia600 = opacity =>
  style(.[placeholder([color(Theme.Colors.fuchsia600(opacity))])])
let placeholderFuchsia700 = opacity =>
  style(.[placeholder([color(Theme.Colors.fuchsia700(opacity))])])
let placeholderFuchsia800 = opacity =>
  style(.[placeholder([color(Theme.Colors.fuchsia800(opacity))])])
let placeholderFuchsia900 = opacity =>
  style(.[placeholder([color(Theme.Colors.fuchsia900(opacity))])])

let placeholderPink50 = opacity => style(.[placeholder([color(Theme.Colors.pink50(opacity))])])
let placeholderPink100 = opacity => style(.[placeholder([color(Theme.Colors.pink100(opacity))])])
let placeholderPink200 = opacity => style(.[placeholder([color(Theme.Colors.pink200(opacity))])])
let placeholderPink300 = opacity => style(.[placeholder([color(Theme.Colors.pink300(opacity))])])
let placeholderPink400 = opacity => style(.[placeholder([color(Theme.Colors.pink400(opacity))])])
let placeholderPink500 = opacity => style(.[placeholder([color(Theme.Colors.pink500(opacity))])])
let placeholderPink600 = opacity => style(.[placeholder([color(Theme.Colors.pink600(opacity))])])
let placeholderPink700 = opacity => style(.[placeholder([color(Theme.Colors.pink700(opacity))])])
let placeholderPink800 = opacity => style(.[placeholder([color(Theme.Colors.pink800(opacity))])])
let placeholderPink900 = opacity => style(.[placeholder([color(Theme.Colors.pink900(opacity))])])

let placeholderRose50 = opacity => style(.[placeholder([color(Theme.Colors.rose50(opacity))])])
let placeholderRose100 = opacity => style(.[placeholder([color(Theme.Colors.rose100(opacity))])])
let placeholderRose200 = opacity => style(.[placeholder([color(Theme.Colors.rose200(opacity))])])
let placeholderRose300 = opacity => style(.[placeholder([color(Theme.Colors.rose300(opacity))])])
let placeholderRose400 = opacity => style(.[placeholder([color(Theme.Colors.rose400(opacity))])])
let placeholderRose500 = opacity => style(.[placeholder([color(Theme.Colors.rose500(opacity))])])
let placeholderRose600 = opacity => style(.[placeholder([color(Theme.Colors.rose600(opacity))])])
let placeholderRose700 = opacity => style(.[placeholder([color(Theme.Colors.rose700(opacity))])])
let placeholderRose800 = opacity => style(.[placeholder([color(Theme.Colors.rose800(opacity))])])
let placeholderRose900 = opacity => style(.[placeholder([color(Theme.Colors.rose900(opacity))])])
