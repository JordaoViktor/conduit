open CssJs

type background = 
  | Hex(string)
  | Rgb((int, int, int))

let button = (~block) => style(.[
  background(Theme.Colors.blue -> hex),
  borderStyle(none),
  color(Theme.Colors.white -> hex),
  height(5.5 -> rem),
  minWidth(block ? 100.0 -> rem : 20.0 -> rem),
  borderRadius(Theme.Radius.small),
  cursor(pointer),
  fontFamily(Theme.fontFamily)
])

@react.component
let make = (~children, ~block=false) => <button className={button(~block)}> children </button>