type t = [
  | #transparent
  | #currentColor
  | #white
  | #black
  | #blueGray50
  | #blueGray100
  | #blueGray200
  | #blueGray300
  | #blueGray400
  | #blueGray500
  | #blueGray600
  | #blueGray700
  | #blueGray800
  | #blueGray900
  | #coolGray50
  | #coolGray100
  | #coolGray200
  | #coolGray300
  | #coolGray400
  | #coolGray500
  | #coolGray600
  | #coolGray700
  | #coolGray800
  | #coolGray900
  | #gray50
  | #gray100
  | #gray200
  | #gray300
  | #gray400
  | #gray500
  | #gray600
  | #gray700
  | #gray800
  | #gray900
  | #trueGray50
  | #trueGray100
  | #trueGray200
  | #trueGray300
  | #trueGray400
  | #trueGray500
  | #trueGray600
  | #trueGray700
  | #trueGray800
  | #trueGray900
  | #warmGray50
  | #warmGray100
  | #warmGray200
  | #warmGray300
  | #warmGray400
  | #warmGray500
  | #warmGray600
  | #warmGray700
  | #warmGray800
  | #warmGray900
  | #red50
  | #red100
  | #red200
  | #red300
  | #red400
  | #red500
  | #red600
  | #red700
  | #red800
  | #red900
  | #orange50
  | #orange100
  | #orange200
  | #orange300
  | #orange400
  | #orange500
  | #orange600
  | #orange700
  | #orange800
  | #orange900
  | #amber50
  | #amber100
  | #amber200
  | #amber300
  | #amber400
  | #amber500
  | #amber600
  | #amber700
  | #amber800
  | #amber900
  | #yellow50
  | #yellow100
  | #yellow200
  | #yellow300
  | #yellow400
  | #yellow500
  | #yellow600
  | #yellow700
  | #yellow800
  | #yellow900
  | #lime50
  | #lime100
  | #lime200
  | #lime300
  | #lime400
  | #lime500
  | #lime600
  | #lime700
  | #lime800
  | #lime900
  | #green50
  | #green100
  | #green200
  | #green300
  | #green400
  | #green500
  | #green600
  | #green700
  | #green800
  | #green900
  | #emerald50
  | #emerald100
  | #emerald200
  | #emerald300
  | #emerald400
  | #emerald500
  | #emerald600
  | #emerald700
  | #emerald800
  | #emerald900
  | #teal50
  | #teal100
  | #teal200
  | #teal300
  | #teal400
  | #teal500
  | #teal600
  | #teal700
  | #teal800
  | #teal900
  | #cyan50
  | #cyan100
  | #cyan200
  | #cyan300
  | #cyan400
  | #cyan500
  | #cyan600
  | #cyan700
  | #cyan800
  | #cyan900
  | #lightBlue50
  | #lightBlue100
  | #lightBlue200
  | #lightBlue300
  | #lightBlue400
  | #lightBlue500
  | #lightBlue600
  | #lightBlue700
  | #lightBlue800
  | #lightBlue900
  | #blue50
  | #blue100
  | #blue200
  | #blue300
  | #blue400
  | #blue500
  | #blue600
  | #blue700
  | #blue800
  | #blue900
  | #indigo50
  | #indigo100
  | #indigo200
  | #indigo300
  | #indigo400
  | #indigo500
  | #indigo600
  | #indigo700
  | #indigo800
  | #indigo900
  | #violet50
  | #violet100
  | #violet200
  | #violet300
  | #violet400
  | #violet500
  | #violet600
  | #violet700
  | #violet800
  | #violet900
  | #purple50
  | #purple100
  | #purple200
  | #purple300
  | #purple400
  | #purple500
  | #purple600
  | #purple700
  | #purple800
  | #purple900
  | #fuchsia50
  | #fuchsia100
  | #fuchsia200
  | #fuchsia300
  | #fuchsia400
  | #fuchsia500
  | #fuchsia600
  | #fuchsia700
  | #fuchsia800
  | #fuchsia900
  | #pink50
  | #pink100
  | #pink200
  | #pink300
  | #pink400
  | #pink500
  | #pink600
  | #pink700
  | #pink800
  | #pink900
  | #rose50
  | #rose100
  | #rose200
  | #rose300
  | #rose400
  | #rose500
  | #rose600
  | #rose700
  | #rose800
  | #rose900
]

let toColor = (~opacity=1., color: t) =>
  switch color {
  | #transparent => #transparent
  | #currentColor => #currentColor
  | #white => #rgba(255, 255, 255, #num(opacity))
  | #black => #rgba(0, 0, 0, #num(opacity))

  // NOTE: Blue Gray
  | #blueGray50 => #rgba(248, 250, 252, #num(opacity))
  | #blueGray100 => #rgba(241, 245, 249, #num(opacity))
  | #blueGray200 => #rgba(226, 232, 240, #num(opacity))
  | #blueGray300 => #rgba(203, 213, 225, #num(opacity))
  | #blueGray400 => #rgba(148, 163, 184, #num(opacity))
  | #blueGray500 => #rgba(100, 116, 139, #num(opacity))
  | #blueGray600 => #rgba(71, 85, 105, #num(opacity))
  | #blueGray700 => #rgba(51, 65, 85, #num(opacity))
  | #blueGray800 => #rgba(30, 41, 59, #num(opacity))
  | #blueGray900 => #rgba(15, 23, 42, #num(opacity))

  // NOTE: Cool Gray
  | #coolGray50 => #rgba(249, 250, 251, #num(opacity))
  | #coolGray100 => #rgba(243, 244, 246, #num(opacity))
  | #coolGray200 => #rgba(229, 231, 235, #num(opacity))
  | #coolGray300 => #rgba(209, 213, 219, #num(opacity))
  | #coolGray400 => #rgba(156, 163, 175, #num(opacity))
  | #coolGray500 => #rgba(107, 114, 128, #num(opacity))
  | #coolGray600 => #rgba(75, 85, 99, #num(opacity))
  | #coolGray700 => #rgba(55, 65, 81, #num(opacity))
  | #coolGray800 => #rgba(31, 41, 55, #num(opacity))
  | #coolGray900 => #rgba(17, 24, 39, #num(opacity))

  // NOTE: Gray
  | #gray50 => #rgba(249, 250, 251, #num(opacity))
  | #gray100 => #rgba(243, 244, 246, #num(opacity))
  | #gray200 => #rgba(229, 231, 235, #num(opacity))
  | #gray300 => #rgba(209, 213, 219, #num(opacity))
  | #gray400 => #rgba(156, 163, 175, #num(opacity))
  | #gray500 => #rgba(107, 114, 128, #num(opacity))
  | #gray600 => #rgba(75, 85, 99, #num(opacity))
  | #gray700 => #rgba(55, 65, 81, #num(opacity))
  | #gray800 => #rgba(31, 41, 55, #num(opacity))
  | #gray900 => #rgba(17, 24, 39, #num(opacity))

  // NOTE: True Gray
  | #trueGray50 => #rgba(250, 250, 250, #num(opacity))
  | #trueGray100 => #rgba(245, 245, 245, #num(opacity))
  | #trueGray200 => #rgba(229, 229, 229, #num(opacity))
  | #trueGray300 => #rgba(212, 212, 212, #num(opacity))
  | #trueGray400 => #rgba(163, 163, 163, #num(opacity))
  | #trueGray500 => #rgba(115, 115, 115, #num(opacity))
  | #trueGray600 => #rgba(82, 82, 82, #num(opacity))
  | #trueGray700 => #rgba(64, 64, 64, #num(opacity))
  | #trueGray800 => #rgba(38, 38, 38, #num(opacity))
  | #trueGray900 => #rgba(23, 23, 23, #num(opacity))

  // NOTE: Warm Gray
  | #warmGray50 => #rgba(250, 250, 249, #num(opacity))
  | #warmGray100 => #rgba(245, 245, 244, #num(opacity))
  | #warmGray200 => #rgba(231, 229, 228, #num(opacity))
  | #warmGray300 => #rgba(214, 211, 209, #num(opacity))
  | #warmGray400 => #rgba(168, 162, 158, #num(opacity))
  | #warmGray500 => #rgba(120, 113, 108, #num(opacity))
  | #warmGray600 => #rgba(87, 83, 78, #num(opacity))
  | #warmGray700 => #rgba(68, 64, 60, #num(opacity))
  | #warmGray800 => #rgba(41, 37, 36, #num(opacity))
  | #warmGray900 => #rgba(28, 25, 23, #num(opacity))

  // NOTE: Red
  | #red50 => #rgba(254, 242, 242, #num(opacity))
  | #red100 => #rgba(254, 226, 226, #num(opacity))
  | #red200 => #rgba(254, 202, 202, #num(opacity))
  | #red300 => #rgba(252, 165, 165, #num(opacity))
  | #red400 => #rgba(248, 113, 113, #num(opacity))
  | #red500 => #rgba(239, 68, 68, #num(opacity))
  | #red600 => #rgba(220, 38, 38, #num(opacity))
  | #red700 => #rgba(185, 28, 28, #num(opacity))
  | #red800 => #rgba(153, 27, 27, #num(opacity))
  | #red900 => #rgba(127, 29, 29, #num(opacity))

  // NOTE: Orange
  | #orange50 => #rgba(255, 247, 237, #num(opacity))
  | #orange100 => #rgba(255, 237, 213, #num(opacity))
  | #orange200 => #rgba(254, 215, 170, #num(opacity))
  | #orange300 => #rgba(253, 186, 116, #num(opacity))
  | #orange400 => #rgba(251, 146, 60, #num(opacity))
  | #orange500 => #rgba(249, 115, 22, #num(opacity))
  | #orange600 => #rgba(234, 88, 12, #num(opacity))
  | #orange700 => #rgba(194, 65, 12, #num(opacity))
  | #orange800 => #rgba(154, 52, 18, #num(opacity))
  | #orange900 => #rgba(124, 45, 18, #num(opacity))

  // NOTE: Amber
  | #amber50 => #rgba(255, 251, 235, #num(opacity))
  | #amber100 => #rgba(254, 243, 199, #num(opacity))
  | #amber200 => #rgba(253, 230, 138, #num(opacity))
  | #amber300 => #rgba(252, 211, 77, #num(opacity))
  | #amber400 => #rgba(251, 191, 36, #num(opacity))
  | #amber500 => #rgba(245, 158, 11, #num(opacity))
  | #amber600 => #rgba(217, 119, 6, #num(opacity))
  | #amber700 => #rgba(180, 83, 9, #num(opacity))
  | #amber800 => #rgba(146, 64, 14, #num(opacity))
  | #amber900 => #rgba(120, 53, 15, #num(opacity))

  // NOTE: Yellow
  | #yellow50 => #rgba(255, 251, 235, #num(opacity))
  | #yellow100 => #rgba(254, 243, 199, #num(opacity))
  | #yellow200 => #rgba(253, 230, 138, #num(opacity))
  | #yellow300 => #rgba(252, 211, 77, #num(opacity))
  | #yellow400 => #rgba(251, 191, 36, #num(opacity))
  | #yellow500 => #rgba(245, 158, 11, #num(opacity))
  | #yellow600 => #rgba(217, 119, 6, #num(opacity))
  | #yellow700 => #rgba(180, 83, 9, #num(opacity))
  | #yellow800 => #rgba(146, 64, 14, #num(opacity))
  | #yellow900 => #rgba(120, 53, 15, #num(opacity))

  // NOTE: Lime
  | #lime50 => #rgba(247, 254, 231, #num(opacity))
  | #lime100 => #rgba(236, 252, 203, #num(opacity))
  | #lime200 => #rgba(217, 249, 157, #num(opacity))
  | #lime300 => #rgba(190, 242, 100, #num(opacity))
  | #lime400 => #rgba(163, 230, 53, #num(opacity))
  | #lime500 => #rgba(132, 204, 22, #num(opacity))
  | #lime600 => #rgba(101, 163, 13, #num(opacity))
  | #lime700 => #rgba(77, 124, 15, #num(opacity))
  | #lime800 => #rgba(63, 98, 18, #num(opacity))
  | #lime900 => #rgba(54, 83, 20, #num(opacity))

  // NOTE: Green
  | #green50 => #rgba(236, 253, 245, #num(opacity))
  | #green100 => #rgba(209, 250, 229, #num(opacity))
  | #green200 => #rgba(167, 243, 208, #num(opacity))
  | #green300 => #rgba(110, 231, 183, #num(opacity))
  | #green400 => #rgba(52, 211, 153, #num(opacity))
  | #green500 => #rgba(16, 185, 129, #num(opacity))
  | #green600 => #rgba(5, 150, 105, #num(opacity))
  | #green700 => #rgba(4, 120, 87, #num(opacity))
  | #green800 => #rgba(6, 95, 70, #num(opacity))
  | #green900 => #rgba(6, 78, 59, #num(opacity))

  // NOTE: Emerald
  | #emerald50 => #rgba(236, 253, 245, #num(opacity))
  | #emerald100 => #rgba(209, 250, 229, #num(opacity))
  | #emerald200 => #rgba(167, 243, 208, #num(opacity))
  | #emerald300 => #rgba(110, 231, 183, #num(opacity))
  | #emerald400 => #rgba(52, 211, 153, #num(opacity))
  | #emerald500 => #rgba(16, 185, 129, #num(opacity))
  | #emerald600 => #rgba(5, 150, 105, #num(opacity))
  | #emerald700 => #rgba(4, 120, 87, #num(opacity))
  | #emerald800 => #rgba(6, 95, 70, #num(opacity))
  | #emerald900 => #rgba(6, 78, 59, #num(opacity))

  // NOTE: Teal
  | #teal50 => #rgba(240, 253, 250, #num(opacity))
  | #teal100 => #rgba(204, 251, 241, #num(opacity))
  | #teal200 => #rgba(153, 246, 228, #num(opacity))
  | #teal300 => #rgba(94, 234, 212, #num(opacity))
  | #teal400 => #rgba(45, 212, 191, #num(opacity))
  | #teal500 => #rgba(20, 184, 166, #num(opacity))
  | #teal600 => #rgba(13, 148, 136, #num(opacity))
  | #teal700 => #rgba(15, 118, 110, #num(opacity))
  | #teal800 => #rgba(17, 94, 89, #num(opacity))
  | #teal900 => #rgba(19, 78, 74, #num(opacity))

  // NOTE: Cyan
  | #cyan50 => #rgba(236, 254, 255, #num(opacity))
  | #cyan100 => #rgba(207, 250, 254, #num(opacity))
  | #cyan200 => #rgba(165, 243, 252, #num(opacity))
  | #cyan300 => #rgba(103, 232, 249, #num(opacity))
  | #cyan400 => #rgba(34, 211, 238, #num(opacity))
  | #cyan500 => #rgba(6, 182, 212, #num(opacity))
  | #cyan600 => #rgba(8, 145, 178, #num(opacity))
  | #cyan700 => #rgba(14, 116, 144, #num(opacity))
  | #cyan800 => #rgba(21, 94, 117, #num(opacity))
  | #cyan900 => #rgba(22, 78, 99, #num(opacity))

  // NOTE: Light Blue
  | #lightBlue50 => #rgba(240, 249, 255, #num(opacity))
  | #lightBlue100 => #rgba(224, 242, 254, #num(opacity))
  | #lightBlue200 => #rgba(186, 230, 253, #num(opacity))
  | #lightBlue300 => #rgba(125, 211, 252, #num(opacity))
  | #lightBlue400 => #rgba(56, 189, 248, #num(opacity))
  | #lightBlue500 => #rgba(14, 165, 233, #num(opacity))
  | #lightBlue600 => #rgba(2, 132, 199, #num(opacity))
  | #lightBlue700 => #rgba(3, 105, 161, #num(opacity))
  | #lightBlue800 => #rgba(7, 89, 133, #num(opacity))
  | #lightBlue900 => #rgba(12, 74, 110, #num(opacity))

  // NOTE: Blue
  | #blue50 => #rgba(239, 246, 255, #num(opacity))
  | #blue100 => #rgba(219, 234, 254, #num(opacity))
  | #blue200 => #rgba(191, 219, 254, #num(opacity))
  | #blue300 => #rgba(147, 197, 253, #num(opacity))
  | #blue400 => #rgba(96, 165, 250, #num(opacity))
  | #blue500 => #rgba(59, 130, 246, #num(opacity))
  | #blue600 => #rgba(37, 99, 235, #num(opacity))
  | #blue700 => #rgba(29, 78, 216, #num(opacity))
  | #blue800 => #rgba(30, 64, 175, #num(opacity))
  | #blue900 => #rgba(30, 58, 138, #num(opacity))

  // NOTE: Indigo
  | #indigo50 => #rgba(238, 242, 255, #num(opacity))
  | #indigo100 => #rgba(224, 231, 255, #num(opacity))
  | #indigo200 => #rgba(199, 210, 254, #num(opacity))
  | #indigo300 => #rgba(165, 180, 252, #num(opacity))
  | #indigo400 => #rgba(129, 140, 248, #num(opacity))
  | #indigo500 => #rgba(99, 102, 241, #num(opacity))
  | #indigo600 => #rgba(79, 70, 229, #num(opacity))
  | #indigo700 => #rgba(67, 56, 202, #num(opacity))
  | #indigo800 => #rgba(55, 48, 163, #num(opacity))
  | #indigo900 => #rgba(49, 46, 129, #num(opacity))

  // NOTE: Violet
  | #violet50 => #rgba(245, 243, 255, #num(opacity))
  | #violet100 => #rgba(237, 233, 254, #num(opacity))
  | #violet200 => #rgba(221, 214, 254, #num(opacity))
  | #violet300 => #rgba(196, 181, 253, #num(opacity))
  | #violet400 => #rgba(167, 139, 250, #num(opacity))
  | #violet500 => #rgba(139, 92, 246, #num(opacity))
  | #violet600 => #rgba(124, 58, 237, #num(opacity))
  | #violet700 => #rgba(109, 40, 217, #num(opacity))
  | #violet800 => #rgba(91, 33, 182, #num(opacity))
  | #violet900 => #rgba(76, 29, 149, #num(opacity))

  // NOTE: Purple
  | #purple50 => #rgba(245, 243, 255, #num(opacity))
  | #purple100 => #rgba(237, 233, 254, #num(opacity))
  | #purple200 => #rgba(221, 214, 254, #num(opacity))
  | #purple300 => #rgba(196, 181, 253, #num(opacity))
  | #purple400 => #rgba(167, 139, 250, #num(opacity))
  | #purple500 => #rgba(139, 92, 246, #num(opacity))
  | #purple600 => #rgba(124, 58, 237, #num(opacity))
  | #purple700 => #rgba(109, 40, 217, #num(opacity))
  | #purple800 => #rgba(91, 33, 182, #num(opacity))
  | #purple900 => #rgba(76, 29, 149, #num(opacity))

  // NOTE: Fuchsia
  | #fuchsia50 => #rgba(253, 244, 255, #num(opacity))
  | #fuchsia100 => #rgba(250, 232, 255, #num(opacity))
  | #fuchsia200 => #rgba(245, 208, 254, #num(opacity))
  | #fuchsia300 => #rgba(240, 171, 252, #num(opacity))
  | #fuchsia400 => #rgba(232, 121, 249, #num(opacity))
  | #fuchsia500 => #rgba(217, 70, 239, #num(opacity))
  | #fuchsia600 => #rgba(192, 38, 211, #num(opacity))
  | #fuchsia700 => #rgba(162, 28, 175, #num(opacity))
  | #fuchsia800 => #rgba(134, 25, 143, #num(opacity))
  | #fuchsia900 => #rgba(112, 26, 117, #num(opacity))

  // NOTE: Pink
  | #pink50 => #rgba(253, 242, 248, #num(opacity))
  | #pink100 => #rgba(252, 231, 243, #num(opacity))
  | #pink200 => #rgba(251, 207, 232, #num(opacity))
  | #pink300 => #rgba(249, 168, 212, #num(opacity))
  | #pink400 => #rgba(244, 114, 182, #num(opacity))
  | #pink500 => #rgba(236, 72, 153, #num(opacity))
  | #pink600 => #rgba(219, 39, 119, #num(opacity))
  | #pink700 => #rgba(190, 24, 93, #num(opacity))
  | #pink800 => #rgba(157, 23, 77, #num(opacity))
  | #pink900 => #rgba(131, 24, 67, #num(opacity))

  // NOTE: Rose
  | #rose50 => #rgba(255, 241, 242, #num(opacity))
  | #rose100 => #rgba(255, 228, 230, #num(opacity))
  | #rose200 => #rgba(254, 205, 211, #num(opacity))
  | #rose300 => #rgba(253, 164, 175, #num(opacity))
  | #rose400 => #rgba(251, 113, 133, #num(opacity))
  | #rose500 => #rgba(244, 63, 94, #num(opacity))
  | #rose600 => #rgba(225, 29, 72, #num(opacity))
  | #rose700 => #rgba(190, 18, 60, #num(opacity))
  | #rose800 => #rgba(159, 18, 57, #num(opacity))
  | #rose900 => #rgba(136, 19, 55, #num(opacity))
  }
