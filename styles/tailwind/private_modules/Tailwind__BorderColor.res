// NOTE: Border Color - Utilities for controlling the color of an element's borders.
open CssJs

let borderTransparent = style(.[borderColor(#transparent)])
let borderCurrent = style(.[borderColor(#currentColor)])
let borderBlack = opacity => style(.[borderColor(Theme.Colors.black(opacity))])
let borderWhite = opacity => style(.[borderColor(Theme.Colors.white(opacity))])

let borderGray50 = opacity => style(.[borderColor(Theme.Colors.gray50(opacity))])
let borderGray100 = opacity => style(.[borderColor(Theme.Colors.gray100(opacity))])
let borderGray200 = opacity => style(.[borderColor(Theme.Colors.gray200(opacity))])
let borderGray300 = opacity => style(.[borderColor(Theme.Colors.gray300(opacity))])
let borderGray400 = opacity => style(.[borderColor(Theme.Colors.gray400(opacity))])
let borderGray500 = opacity => style(.[borderColor(Theme.Colors.gray500(opacity))])
let borderGray600 = opacity => style(.[borderColor(Theme.Colors.gray600(opacity))])
let borderGray700 = opacity => style(.[borderColor(Theme.Colors.gray700(opacity))])
let borderGray800 = opacity => style(.[borderColor(Theme.Colors.gray800(opacity))])
let borderGray900 = opacity => style(.[borderColor(Theme.Colors.gray900(opacity))])

let borderBlueGray50 = opacity => style(.[borderColor(Theme.Colors.blueGray50(opacity))])
let borderBlueGray100 = opacity => style(.[borderColor(Theme.Colors.blueGray100(opacity))])
let borderBlueGray200 = opacity => style(.[borderColor(Theme.Colors.blueGray200(opacity))])
let borderBlueGray300 = opacity => style(.[borderColor(Theme.Colors.blueGray300(opacity))])
let borderBlueGray400 = opacity => style(.[borderColor(Theme.Colors.blueGray400(opacity))])
let borderBlueGray500 = opacity => style(.[borderColor(Theme.Colors.blueGray500(opacity))])
let borderBlueGray600 = opacity => style(.[borderColor(Theme.Colors.blueGray600(opacity))])
let borderBlueGray700 = opacity => style(.[borderColor(Theme.Colors.blueGray700(opacity))])
let borderBlueGray800 = opacity => style(.[borderColor(Theme.Colors.blueGray800(opacity))])
let borderBlueGray900 = opacity => style(.[borderColor(Theme.Colors.blueGray900(opacity))])

let borderCoolGray50 = opacity => style(.[borderColor(Theme.Colors.coolGray50(opacity))])
let borderCoolGray100 = opacity => style(.[borderColor(Theme.Colors.coolGray100(opacity))])
let borderCoolGray200 = opacity => style(.[borderColor(Theme.Colors.coolGray200(opacity))])
let borderCoolGray300 = opacity => style(.[borderColor(Theme.Colors.coolGray300(opacity))])
let borderCoolGray400 = opacity => style(.[borderColor(Theme.Colors.coolGray400(opacity))])
let borderCoolGray500 = opacity => style(.[borderColor(Theme.Colors.coolGray500(opacity))])
let borderCoolGray600 = opacity => style(.[borderColor(Theme.Colors.coolGray600(opacity))])
let borderCoolGray700 = opacity => style(.[borderColor(Theme.Colors.coolGray700(opacity))])
let borderCoolGray800 = opacity => style(.[borderColor(Theme.Colors.coolGray800(opacity))])
let borderCoolGray900 = opacity => style(.[borderColor(Theme.Colors.coolGray900(opacity))])

let borderTrueGray50 = opacity => style(.[borderColor(Theme.Colors.trueGray50(opacity))])
let borderTrueGray100 = opacity => style(.[borderColor(Theme.Colors.trueGray100(opacity))])
let borderTrueGray200 = opacity => style(.[borderColor(Theme.Colors.trueGray200(opacity))])
let borderTrueGray300 = opacity => style(.[borderColor(Theme.Colors.trueGray300(opacity))])
let borderTrueGray400 = opacity => style(.[borderColor(Theme.Colors.trueGray400(opacity))])
let borderTrueGray500 = opacity => style(.[borderColor(Theme.Colors.trueGray500(opacity))])
let borderTrueGray600 = opacity => style(.[borderColor(Theme.Colors.trueGray600(opacity))])
let borderTrueGray700 = opacity => style(.[borderColor(Theme.Colors.trueGray700(opacity))])
let borderTrueGray800 = opacity => style(.[borderColor(Theme.Colors.trueGray800(opacity))])
let borderTrueGray900 = opacity => style(.[borderColor(Theme.Colors.trueGray900(opacity))])

let borderWarmGray50 = opacity => style(.[borderColor(Theme.Colors.warmGray50(opacity))])
let borderWarmGray100 = opacity => style(.[borderColor(Theme.Colors.warmGray100(opacity))])
let borderWarmGray200 = opacity => style(.[borderColor(Theme.Colors.warmGray200(opacity))])
let borderWarmGray300 = opacity => style(.[borderColor(Theme.Colors.warmGray300(opacity))])
let borderWarmGray400 = opacity => style(.[borderColor(Theme.Colors.warmGray400(opacity))])
let borderWarmGray500 = opacity => style(.[borderColor(Theme.Colors.warmGray500(opacity))])
let borderWarmGray600 = opacity => style(.[borderColor(Theme.Colors.warmGray600(opacity))])
let borderWarmGray700 = opacity => style(.[borderColor(Theme.Colors.warmGray700(opacity))])
let borderWarmGray800 = opacity => style(.[borderColor(Theme.Colors.warmGray800(opacity))])
let borderWarmGray900 = opacity => style(.[borderColor(Theme.Colors.warmGray900(opacity))])

let borderRed50 = opacity => style(.[borderColor(Theme.Colors.red50(opacity))])
let borderRed100 = opacity => style(.[borderColor(Theme.Colors.red100(opacity))])
let borderRed200 = opacity => style(.[borderColor(Theme.Colors.red200(opacity))])
let borderRed300 = opacity => style(.[borderColor(Theme.Colors.red300(opacity))])
let borderRed400 = opacity => style(.[borderColor(Theme.Colors.red400(opacity))])
let borderRed500 = opacity => style(.[borderColor(Theme.Colors.red500(opacity))])
let borderRed600 = opacity => style(.[borderColor(Theme.Colors.red600(opacity))])
let borderRed700 = opacity => style(.[borderColor(Theme.Colors.red700(opacity))])
let borderRed800 = opacity => style(.[borderColor(Theme.Colors.red800(opacity))])
let borderRed900 = opacity => style(.[borderColor(Theme.Colors.red900(opacity))])

let borderOrange50 = opacity => style(.[borderColor(Theme.Colors.orange50(opacity))])
let borderOrange100 = opacity => style(.[borderColor(Theme.Colors.orange100(opacity))])
let borderOrange200 = opacity => style(.[borderColor(Theme.Colors.orange200(opacity))])
let borderOrange300 = opacity => style(.[borderColor(Theme.Colors.orange300(opacity))])
let borderOrange400 = opacity => style(.[borderColor(Theme.Colors.orange400(opacity))])
let borderOrange500 = opacity => style(.[borderColor(Theme.Colors.orange500(opacity))])
let borderOrange600 = opacity => style(.[borderColor(Theme.Colors.orange600(opacity))])
let borderOrange700 = opacity => style(.[borderColor(Theme.Colors.orange700(opacity))])
let borderOrange800 = opacity => style(.[borderColor(Theme.Colors.orange800(opacity))])
let borderOrange900 = opacity => style(.[borderColor(Theme.Colors.orange900(opacity))])

let borderAmber50 = opacity => style(.[borderColor(Theme.Colors.amber50(opacity))])
let borderAmber100 = opacity => style(.[borderColor(Theme.Colors.amber100(opacity))])
let borderAmber200 = opacity => style(.[borderColor(Theme.Colors.amber200(opacity))])
let borderAmber300 = opacity => style(.[borderColor(Theme.Colors.amber300(opacity))])
let borderAmber400 = opacity => style(.[borderColor(Theme.Colors.amber400(opacity))])
let borderAmber500 = opacity => style(.[borderColor(Theme.Colors.amber500(opacity))])
let borderAmber600 = opacity => style(.[borderColor(Theme.Colors.amber600(opacity))])
let borderAmber700 = opacity => style(.[borderColor(Theme.Colors.amber700(opacity))])
let borderAmber800 = opacity => style(.[borderColor(Theme.Colors.amber800(opacity))])
let borderAmber900 = opacity => style(.[borderColor(Theme.Colors.amber900(opacity))])

let borderYellow50 = opacity => style(.[borderColor(Theme.Colors.yellow50(opacity))])
let borderYellow100 = opacity => style(.[borderColor(Theme.Colors.yellow100(opacity))])
let borderYellow200 = opacity => style(.[borderColor(Theme.Colors.yellow200(opacity))])
let borderYellow300 = opacity => style(.[borderColor(Theme.Colors.yellow300(opacity))])
let borderYellow400 = opacity => style(.[borderColor(Theme.Colors.yellow400(opacity))])
let borderYellow500 = opacity => style(.[borderColor(Theme.Colors.yellow500(opacity))])
let borderYellow600 = opacity => style(.[borderColor(Theme.Colors.yellow600(opacity))])
let borderYellow700 = opacity => style(.[borderColor(Theme.Colors.yellow700(opacity))])
let borderYellow800 = opacity => style(.[borderColor(Theme.Colors.yellow800(opacity))])
let borderYellow900 = opacity => style(.[borderColor(Theme.Colors.yellow900(opacity))])

let borderLime50 = opacity => style(.[borderColor(Theme.Colors.lime50(opacity))])
let borderLime100 = opacity => style(.[borderColor(Theme.Colors.lime100(opacity))])
let borderLime200 = opacity => style(.[borderColor(Theme.Colors.lime200(opacity))])
let borderLime300 = opacity => style(.[borderColor(Theme.Colors.lime300(opacity))])
let borderLime400 = opacity => style(.[borderColor(Theme.Colors.lime400(opacity))])
let borderLime500 = opacity => style(.[borderColor(Theme.Colors.lime500(opacity))])
let borderLime600 = opacity => style(.[borderColor(Theme.Colors.lime600(opacity))])
let borderLime700 = opacity => style(.[borderColor(Theme.Colors.lime700(opacity))])
let borderLime800 = opacity => style(.[borderColor(Theme.Colors.lime800(opacity))])
let borderLime900 = opacity => style(.[borderColor(Theme.Colors.lime900(opacity))])

let borderGreen50 = opacity => style(.[borderColor(Theme.Colors.green50(opacity))])
let borderGreen100 = opacity => style(.[borderColor(Theme.Colors.green100(opacity))])
let borderGreen200 = opacity => style(.[borderColor(Theme.Colors.green200(opacity))])
let borderGreen300 = opacity => style(.[borderColor(Theme.Colors.green300(opacity))])
let borderGreen400 = opacity => style(.[borderColor(Theme.Colors.green400(opacity))])
let borderGreen500 = opacity => style(.[borderColor(Theme.Colors.green500(opacity))])
let borderGreen600 = opacity => style(.[borderColor(Theme.Colors.green600(opacity))])
let borderGreen700 = opacity => style(.[borderColor(Theme.Colors.green700(opacity))])
let borderGreen800 = opacity => style(.[borderColor(Theme.Colors.green800(opacity))])
let borderGreen900 = opacity => style(.[borderColor(Theme.Colors.green900(opacity))])

let borderEmerald50 = opacity => style(.[borderColor(Theme.Colors.emerald50(opacity))])
let borderEmerald100 = opacity => style(.[borderColor(Theme.Colors.emerald100(opacity))])
let borderEmerald200 = opacity => style(.[borderColor(Theme.Colors.emerald200(opacity))])
let borderEmerald300 = opacity => style(.[borderColor(Theme.Colors.emerald300(opacity))])
let borderEmerald400 = opacity => style(.[borderColor(Theme.Colors.emerald400(opacity))])
let borderEmerald500 = opacity => style(.[borderColor(Theme.Colors.emerald500(opacity))])
let borderEmerald600 = opacity => style(.[borderColor(Theme.Colors.emerald600(opacity))])
let borderEmerald700 = opacity => style(.[borderColor(Theme.Colors.emerald700(opacity))])
let borderEmerald800 = opacity => style(.[borderColor(Theme.Colors.emerald800(opacity))])
let borderEmerald900 = opacity => style(.[borderColor(Theme.Colors.emerald900(opacity))])

let borderTeal50 = opacity => style(.[borderColor(Theme.Colors.teal50(opacity))])
let borderTeal100 = opacity => style(.[borderColor(Theme.Colors.teal100(opacity))])
let borderTeal200 = opacity => style(.[borderColor(Theme.Colors.teal200(opacity))])
let borderTeal300 = opacity => style(.[borderColor(Theme.Colors.teal300(opacity))])
let borderTeal400 = opacity => style(.[borderColor(Theme.Colors.teal400(opacity))])
let borderTeal500 = opacity => style(.[borderColor(Theme.Colors.teal500(opacity))])
let borderTeal600 = opacity => style(.[borderColor(Theme.Colors.teal600(opacity))])
let borderTeal700 = opacity => style(.[borderColor(Theme.Colors.teal700(opacity))])
let borderTeal800 = opacity => style(.[borderColor(Theme.Colors.teal800(opacity))])
let borderTeal900 = opacity => style(.[borderColor(Theme.Colors.teal900(opacity))])

let borderCyan50 = opacity => style(.[borderColor(Theme.Colors.cyan50(opacity))])
let borderCyan100 = opacity => style(.[borderColor(Theme.Colors.cyan100(opacity))])
let borderCyan200 = opacity => style(.[borderColor(Theme.Colors.cyan200(opacity))])
let borderCyan300 = opacity => style(.[borderColor(Theme.Colors.cyan300(opacity))])
let borderCyan400 = opacity => style(.[borderColor(Theme.Colors.cyan400(opacity))])
let borderCyan500 = opacity => style(.[borderColor(Theme.Colors.cyan500(opacity))])
let borderCyan600 = opacity => style(.[borderColor(Theme.Colors.cyan600(opacity))])
let borderCyan700 = opacity => style(.[borderColor(Theme.Colors.cyan700(opacity))])
let borderCyan800 = opacity => style(.[borderColor(Theme.Colors.cyan800(opacity))])
let borderCyan900 = opacity => style(.[borderColor(Theme.Colors.cyan900(opacity))])

let borderLightBlue50 = opacity => style(.[borderColor(Theme.Colors.lightBlue50(opacity))])
let borderLightBlue100 = opacity => style(.[borderColor(Theme.Colors.lightBlue100(opacity))])
let borderLightBlue200 = opacity => style(.[borderColor(Theme.Colors.lightBlue200(opacity))])
let borderLightBlue300 = opacity => style(.[borderColor(Theme.Colors.lightBlue300(opacity))])
let borderLightBlue400 = opacity => style(.[borderColor(Theme.Colors.lightBlue400(opacity))])
let borderLightBlue500 = opacity => style(.[borderColor(Theme.Colors.lightBlue500(opacity))])
let borderLightBlue600 = opacity => style(.[borderColor(Theme.Colors.lightBlue600(opacity))])
let borderLightBlue700 = opacity => style(.[borderColor(Theme.Colors.lightBlue700(opacity))])
let borderLightBlue800 = opacity => style(.[borderColor(Theme.Colors.lightBlue800(opacity))])
let borderLightBlue900 = opacity => style(.[borderColor(Theme.Colors.lightBlue900(opacity))])

let borderBlue50 = opacity => style(.[borderColor(Theme.Colors.blue50(opacity))])
let borderBlue100 = opacity => style(.[borderColor(Theme.Colors.blue100(opacity))])
let borderBlue200 = opacity => style(.[borderColor(Theme.Colors.blue200(opacity))])
let borderBlue300 = opacity => style(.[borderColor(Theme.Colors.blue300(opacity))])
let borderBlue400 = opacity => style(.[borderColor(Theme.Colors.blue400(opacity))])
let borderBlue500 = opacity => style(.[borderColor(Theme.Colors.blue500(opacity))])
let borderBlue600 = opacity => style(.[borderColor(Theme.Colors.blue600(opacity))])
let borderBlue700 = opacity => style(.[borderColor(Theme.Colors.blue700(opacity))])
let borderBlue800 = opacity => style(.[borderColor(Theme.Colors.blue800(opacity))])
let borderBlue900 = opacity => style(.[borderColor(Theme.Colors.blue900(opacity))])

let borderIndigo50 = opacity => style(.[borderColor(Theme.Colors.indigo50(opacity))])
let borderIndigo100 = opacity => style(.[borderColor(Theme.Colors.indigo100(opacity))])
let borderIndigo200 = opacity => style(.[borderColor(Theme.Colors.indigo200(opacity))])
let borderIndigo300 = opacity => style(.[borderColor(Theme.Colors.indigo300(opacity))])
let borderIndigo400 = opacity => style(.[borderColor(Theme.Colors.indigo400(opacity))])
let borderIndigo500 = opacity => style(.[borderColor(Theme.Colors.indigo500(opacity))])
let borderIndigo600 = opacity => style(.[borderColor(Theme.Colors.indigo600(opacity))])
let borderIndigo700 = opacity => style(.[borderColor(Theme.Colors.indigo700(opacity))])
let borderIndigo800 = opacity => style(.[borderColor(Theme.Colors.indigo800(opacity))])
let borderIndigo900 = opacity => style(.[borderColor(Theme.Colors.indigo900(opacity))])

let borderViolet50 = opacity => style(.[borderColor(Theme.Colors.violet50(opacity))])
let borderViolet100 = opacity => style(.[borderColor(Theme.Colors.violet100(opacity))])
let borderViolet200 = opacity => style(.[borderColor(Theme.Colors.violet200(opacity))])
let borderViolet300 = opacity => style(.[borderColor(Theme.Colors.violet300(opacity))])
let borderViolet400 = opacity => style(.[borderColor(Theme.Colors.violet400(opacity))])
let borderViolet500 = opacity => style(.[borderColor(Theme.Colors.violet500(opacity))])
let borderViolet600 = opacity => style(.[borderColor(Theme.Colors.violet600(opacity))])
let borderViolet700 = opacity => style(.[borderColor(Theme.Colors.violet700(opacity))])
let borderViolet800 = opacity => style(.[borderColor(Theme.Colors.violet800(opacity))])
let borderViolet900 = opacity => style(.[borderColor(Theme.Colors.violet900(opacity))])

let borderPurple50 = opacity => style(.[borderColor(Theme.Colors.purple50(opacity))])
let borderPurple100 = opacity => style(.[borderColor(Theme.Colors.purple100(opacity))])
let borderPurple200 = opacity => style(.[borderColor(Theme.Colors.purple200(opacity))])
let borderPurple300 = opacity => style(.[borderColor(Theme.Colors.purple300(opacity))])
let borderPurple400 = opacity => style(.[borderColor(Theme.Colors.purple400(opacity))])
let borderPurple500 = opacity => style(.[borderColor(Theme.Colors.purple500(opacity))])
let borderPurple600 = opacity => style(.[borderColor(Theme.Colors.purple600(opacity))])
let borderPurple700 = opacity => style(.[borderColor(Theme.Colors.purple700(opacity))])
let borderPurple800 = opacity => style(.[borderColor(Theme.Colors.purple800(opacity))])
let borderPurple900 = opacity => style(.[borderColor(Theme.Colors.purple900(opacity))])

let borderFuchsia50 = opacity => style(.[borderColor(Theme.Colors.fuchsia50(opacity))])
let borderFuchsia100 = opacity => style(.[borderColor(Theme.Colors.fuchsia100(opacity))])
let borderFuchsia200 = opacity => style(.[borderColor(Theme.Colors.fuchsia200(opacity))])
let borderFuchsia300 = opacity => style(.[borderColor(Theme.Colors.fuchsia300(opacity))])
let borderFuchsia400 = opacity => style(.[borderColor(Theme.Colors.fuchsia400(opacity))])
let borderFuchsia500 = opacity => style(.[borderColor(Theme.Colors.fuchsia500(opacity))])
let borderFuchsia600 = opacity => style(.[borderColor(Theme.Colors.fuchsia600(opacity))])
let borderFuchsia700 = opacity => style(.[borderColor(Theme.Colors.fuchsia700(opacity))])
let borderFuchsia800 = opacity => style(.[borderColor(Theme.Colors.fuchsia800(opacity))])
let borderFuchsia900 = opacity => style(.[borderColor(Theme.Colors.fuchsia900(opacity))])

let borderPink50 = opacity => style(.[borderColor(Theme.Colors.pink50(opacity))])
let borderPink100 = opacity => style(.[borderColor(Theme.Colors.pink100(opacity))])
let borderPink200 = opacity => style(.[borderColor(Theme.Colors.pink200(opacity))])
let borderPink300 = opacity => style(.[borderColor(Theme.Colors.pink300(opacity))])
let borderPink400 = opacity => style(.[borderColor(Theme.Colors.pink400(opacity))])
let borderPink500 = opacity => style(.[borderColor(Theme.Colors.pink500(opacity))])
let borderPink600 = opacity => style(.[borderColor(Theme.Colors.pink600(opacity))])
let borderPink700 = opacity => style(.[borderColor(Theme.Colors.pink700(opacity))])
let borderPink800 = opacity => style(.[borderColor(Theme.Colors.pink800(opacity))])
let borderPink900 = opacity => style(.[borderColor(Theme.Colors.pink900(opacity))])

let borderRose50 = opacity => style(.[borderColor(Theme.Colors.rose50(opacity))])
let borderRose100 = opacity => style(.[borderColor(Theme.Colors.rose100(opacity))])
let borderRose200 = opacity => style(.[borderColor(Theme.Colors.rose200(opacity))])
let borderRose300 = opacity => style(.[borderColor(Theme.Colors.rose300(opacity))])
let borderRose400 = opacity => style(.[borderColor(Theme.Colors.rose400(opacity))])
let borderRose500 = opacity => style(.[borderColor(Theme.Colors.rose500(opacity))])
let borderRose600 = opacity => style(.[borderColor(Theme.Colors.rose600(opacity))])
let borderRose700 = opacity => style(.[borderColor(Theme.Colors.rose700(opacity))])
let borderRose800 = opacity => style(.[borderColor(Theme.Colors.rose800(opacity))])
let borderRose900 = opacity => style(.[borderColor(Theme.Colors.rose900(opacity))])
