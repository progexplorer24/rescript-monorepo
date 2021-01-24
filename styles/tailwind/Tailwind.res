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

let fontFamilies = fonts => [CssJs.fontFamilies(fonts)]

// INFO: Selectors

let selector = (string, rules) => [CssJs.selector(string, rules)]

let active = rules => [CssJs.active(rules)]
let checked = rules => [CssJs.checked(rules)]
let default = rules => [CssJs.default(rules)]
let defined = rules => [CssJs.defined(rules)]
let disabled = rules => [CssJs.disabled(rules)]
let empty = rules => [CssJs.empty(rules)]
let enabled = rules => [CssJs.enabled(rules)]
let first = rules => [CssJs.first(rules)]
let firstChild = rules => [CssJs.firstChild(rules)]
let firstOfType = rules => [CssJs.firstOfType(rules)]
let focus = rules => [CssJs.focus(rules)]
let focusWithin = rules => [CssJs.focusWithin(rules)]
// TODO: host selector

let hover = rules => [CssJs.hover(rules)]
let indeterminate = rules => [CssJs.indeterminate(rules)]
let inRange = rules => [CssJs.inRange(rules)]
let invalid = rules => [CssJs.invalid(rules)]
// TODO: lang selector

let lastChild = rules => [CssJs.lastChild(rules)]
let lastOfType = rules => [CssJs.lastOfType(rules)]
let link = rules => [CssJs.lastOfType(rules)]
let not = rules => [CssJs.not__(rules)]
// TODO: Nth selectors

let onlyChild = rules => [CssJs.onlyChild(rules)]
let onlyOfType = rules => [CssJs.onlyOfType(rules)]
let optional = rules => [CssJs.optional(rules)]
let outOfRange = rules => [CssJs.outOfRange(rules)]
let readOnly = rules => [CssJs.readOnly(rules)]
let readWrite = rules => [CssJs.readWrite(rules)]
let required = rules => [CssJs.required(rules)]
// TODO: why right selector is commented out?
let root = rules => [CssJs.root(rules)]
let scope = rules => [CssJs.scope(rules)]
let target = rules => [CssJs.target(rules)]
let valid = rules => [CssJs.valid(rules)]
let visited = rules => [CssJs.visited(rules)]

let after = rules => [CssJs.after(rules)]
let before = rules => [CssJs.before(rules)]
let firstLetter = rules => [CssJs.firstLetter(rules)]
let firstLine = rules => [CssJs.firstLine(rules)]
let selection = rules => [CssJs.selection(rules)]
