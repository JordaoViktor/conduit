GlobalStyles.includeStyles()
open Render
@react.component
let make = () => {
  <div>
    <Button block={true}> {s("sign in")}</Button>
  </div>
}