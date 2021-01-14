// x y  blur spread
// INFO: Accept multiple box shadow values
open CssJs
type boxShadows = array<Shadow.t<Shadow.box>>
let sm: boxShadows = [
  Shadow.box(~x=#px(0), ~y=#px(1), ~blur=#px(3), ~spread=#px(0), #rgba(0, 0, 0, #num(0.1))),
  Shadow.box(~x=#px(0), ~y=#px(1), ~blur=#px(2), ~spread=#px(0), #rgba(0, 0, 0, #num(0.06))),
]

let default: boxShadows = [
  Shadow.box(~x=#px(0), ~y=#px(1), ~blur=#px(3), ~spread=#px(0), #rgba(0, 0, 0, #num(0.1))),
  Shadow.box(~x=#px(0), ~y=#px(1), ~blur=#px(2), ~spread=#px(0), #rgba(0, 0, 0, #num(0.06))),
]

let md: boxShadows = [
  Shadow.box(~x=#px(0), ~y=#px(4), ~blur=#px(6), ~spread=#px(-1), #rgba(0, 0, 0, #num(0.1))),
  Shadow.box(~x=#px(0), ~y=#px(2), ~blur=#px(4), ~spread=#px(-1), #rgba(0, 0, 0, #num(0.06))),
]
let lg: boxShadows = [
  Shadow.box(~x=#px(0), ~y=#px(10), ~blur=#px(15), ~spread=#px(-3), #rgba(0, 0, 0, #num(0.1))),
  Shadow.box(~x=#px(0), ~y=#px(4), ~blur=#px(6), ~spread=#px(-2), #rgba(0, 0, 0, #num(0.05))),
]
let xl: boxShadows = [
  Shadow.box(~x=#px(0), ~y=#px(20), ~blur=#px(25), ~spread=#px(-5), #rgba(0, 0, 0, #num(0.1))),
  Shadow.box(~x=#px(0), ~y=#px(10), ~blur=#px(10), ~spread=#px(-5), #rgba(0, 0, 0, #num(0.04))),
]
let _2xl: boxShadows = [
  Shadow.box(~x=#px(0), ~y=#px(25), ~blur=#px(50), ~spread=#px(-12), #rgba(0, 0, 0, #num(0.25))),
]

let inner: boxShadows = [
  Shadow.box(
    ~x=#px(0),
    ~y=#px(2),
    ~blur=#px(4),
    ~spread=#px(0),
    ~inset=true,
    #rgba(0, 0, 0, #num(0.06)),
  ),
]
