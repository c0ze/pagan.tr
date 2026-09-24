import { execSync } from "child_process";
import fs from "fs";
import path from "path";
import { fileURLToPath } from "url";

const __filename = fileURLToPath(import.meta.url);
const __dirname = path.dirname(__filename);

const BASE_URL = "https://pagan.tr";
const OUTPUT_FILE = path.join(__dirname, "..", "dist", "sitemap.xml");

// The site is a single page; #section links are the same URL to crawlers.
const routes = [{ path: "/", priority: "1.0", changefreq: "monthly" }];

// Use the last commit date so lastmod only moves when the content does.
function lastModified() {
  try {
    return execSync("git log -1 --format=%cs", {
      encoding: "utf8",
      stdio: ["ignore", "pipe", "ignore"],
    }).trim();
  } catch {
    return new Date().toISOString().split("T")[0];
  }
}

function generateSitemapXml() {
  const lastmod = lastModified();

  const urlEntries = routes
    .map(
      (route) => `  <url>
    <loc>${BASE_URL}${route.path}</loc>
    <lastmod>${lastmod}</lastmod>
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
