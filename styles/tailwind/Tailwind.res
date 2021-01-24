include Tailwind__TransitionsAndAnimations

include Tailwind__Layout

include Tailwind__Flexbox

include Tailwind__Grid

include Tailwind__BoxAlignment

include Tailwind__Spacing

include Tailwind__Sizing

include Tailwind__Typography

include Tailwind__Backgrounds

include Tailwind__Borders

include Tailwind__Effects

include Tailwind__Tables

include Tailwind__Interactivity

include Tailwind__SVG

include Tailwind__Accessibility

let merge = CssJs.merge

let style = CssJs.style

let tw = rules => Belt.Array.concatMany(rules)

let twStyle = rules => CssJs.style(. Belt.Array.concatMany(rules))

let selector = (string, rules) => [CssJs.selector(string, rules)]
