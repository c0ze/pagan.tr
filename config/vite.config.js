import { defineConfig } from "vite";
import tailwindcss from "@tailwindcss/vite";

export default defineConfig({
  base: "/",
  plugins: [tailwindcss()],
  // Shared by the client and prerender builds so the footer year hydrates cleanly.
  define: {
    __BUILD_YEAR__: JSON.stringify(String(new Date().getFullYear())),
  },
  server: {
    host: "::",
    port: 8080,
  },
});
