let maybeElement = ReactDOM.querySelector("#root")

let _ = switch maybeElement {
  | None => Js.log("componente root nao encontrado")
  | Some(element) => ReactDOM.render(<App />, element)
}