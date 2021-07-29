type themeSwitcher = Light | Dark

type themeObject = {
  theme: @string
  [
    | #dark
    | #light
  ],
  setTheme: @string
  [
    | #dark
    | #light
  ] => unit,
  resolvedTheme: @string
  [
    | #dark
    | #light
  ],
  systemTheme: string,
  themes: array<themeSwitcher>,
}

@module("next-themes") external useTheme: unit => themeObject = "useTheme"
