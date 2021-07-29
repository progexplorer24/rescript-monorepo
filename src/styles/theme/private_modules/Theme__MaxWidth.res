type t = [
  | #none
  | #zero
  | #0
  | #xs
  | #sm
  | #md
  | #lg
  | #xl
  | #xl2
  | #xl3
  | #xl4
  | #xl5
  | #xl6
  | #xl7
  | #full
  | #prose
  | #screenSm
  | #screenMd
  | #screenLg
  | #screenXl
  | #screen2Xl
]

let toValue = width =>
  switch width {
  | #none => #none
  | #zero | #0 => #rem(0.)
  | #xs => #rem(20.)
  | #sm => #rem(24.)
  | #md => #rem(28.)
  | #lg => #rem(32.)
  | #xl => #rem(36.)
  | #xl2 => #rem(42.)
  | #xl3 => #rem(48.)
  | #xl4 => #rem(56.)
  | #xl5 => #rem(64.)
  | #xl6 => #rem(72.)
  | #xl7 => #rem(80.)
  | #full => #percent(100.)
  | #prose => #ch(65.)
  | #screenSm => #px(640)
  | #screenMd => #px(768)
  | #screenLg => #px(1024)
  | #screenXl => #px(1280)
  | #screen2Xl => #px(1536)
  }
