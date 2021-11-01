type variant = [#h1 | #text]

module Styles = {
  open CssJs 

  let h1 = style(.[
    fontSize(3.2->rem),
    fontFamily(Theme.fontFamily),
    fontWeight(#bold),
    color(Theme.Colors.black->hex)
  ])

  let text = style(.[
    fontSize(2.0->rem),
    fontFamily(Theme.fontFamily),
    letterSpacing(-0.02->rem)
  ])
}

@react.component
let make = (~variant=#text,~children) =>{
 switch variant {
  | #h1 => <h1 className={Styles.h1}>children</h1>
  | #text => <p>children</p>
 }
}