// Build-time entry: scripts/prerender.js renders the page with this so the
// HTML already holds the content before the JS bundle runs.
let render = () => ReactDOMServer.renderToString(<App />)
