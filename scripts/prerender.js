import fs from "fs";
import path from "path";
import { fileURLToPath } from "url";
import { build } from "vite";

const root = path.join(path.dirname(fileURLToPath(import.meta.url)), "..");
const indexFile = path.join(root, "dist", "index.html");
const ssrDir = path.join(root, "dist-ssr");
const marker = '<div id="root"></div>';

// Build src/Server.res.mjs for Node with the same Vite config, so asset URLs
// match the client build's hashed files, then render it into dist/index.html.
await build({
  configFile: path.join(root, "config", "vite.config.js"),
  logLevel: "warn",
  build: {
    ssr: "src/Server.res.mjs",
    outDir: ssrDir,
    emptyOutDir: true,
    rollupOptions: { output: { entryFileNames: "server.mjs" } },
  },
});

try {
  const { render } = await import(path.join(ssrDir, "server.mjs"));
  const html = fs.readFileSync(indexFile, "utf8");
  if (!html.includes(marker)) {
    throw new Error(`${marker} not found in dist/index.html`);
  }
  fs.writeFileSync(indexFile, html.replace(marker, `<div id="root">${render()}</div>`));
  console.log("Prerendered dist/index.html");
} finally {
  fs.rmSync(ssrDir, { recursive: true, force: true });
}
