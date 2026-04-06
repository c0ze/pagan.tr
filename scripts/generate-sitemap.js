import fs from "fs";
import path from "path";
import { fileURLToPath } from "url";

const __filename = fileURLToPath(import.meta.url);
const __dirname = path.dirname(__filename);

const BASE_URL = "https://pagan.tr";
const OUTPUT_FILE = path.join(__dirname, "..", "dist", "sitemap.xml");

const routes = [
  { path: "/", priority: "1.0", changefreq: "monthly" },
  { path: "/#biography", priority: "0.8", changefreq: "monthly" },
  { path: "/#discography", priority: "0.9", changefreq: "monthly" },
  { path: "/#media", priority: "0.7", changefreq: "monthly" },
  { path: "/#links", priority: "0.6", changefreq: "monthly" },
];

function generateSitemapXml() {
  const today = new Date().toISOString().split("T")[0];

  const urlEntries = routes
    .map(
      (route) => `  <url>
    <loc>${BASE_URL}${route.path}</loc>
    <lastmod>${today}</lastmod>
    <changefreq>${route.changefreq}</changefreq>
    <priority>${route.priority}</priority>
  </url>`
    )
    .join("\n");

  return `<?xml version="1.0" encoding="UTF-8"?>
<urlset xmlns="http://www.sitemaps.org/schemas/sitemap/0.9">
${urlEntries}
</urlset>`;
}

const distDir = path.dirname(OUTPUT_FILE);
if (!fs.existsSync(distDir)) {
  fs.mkdirSync(distDir, { recursive: true });
}

const sitemapContent = generateSitemapXml();
fs.writeFileSync(OUTPUT_FILE, sitemapContent);

console.log(`Sitemap generated at: ${OUTPUT_FILE}`);
console.log(`  Total URLs: ${routes.length}`);
