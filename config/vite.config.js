import { defineConfig } from "vite";
import tailwindcss from "tailwindcss";
import autoprefixer from "autoprefixer";

export default defineConfig({
  base: "/",
  assetsInclude: ["**/*.JPG"],
  server: {
    host: "::",
    port: 8080,
  },
  css: {
    postcss: {
      plugins: [
        tailwindcss({ config: "./config/tailwind.config.js" }),
        autoprefixer(),
      ],
    },
  },
});
