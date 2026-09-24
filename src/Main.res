@send external hasChildNodes: Dom.element => bool = "hasChildNodes"

switch ReactDOM.querySelector("#root") {
| Some(rootElement) =>
  // Built pages arrive prerendered (scripts/prerender.js); the dev server's don't.
  if rootElement->hasChildNodes {
    ReactDOM.Client.hydrateRoot(rootElement, <App />)->ignore
  } else {
    let root = ReactDOM.Client.createRoot(rootElement)
    ReactDOM.Client.Root.render(root, <App />)
  }
| None => ()
}
