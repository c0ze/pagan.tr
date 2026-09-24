# Pagan TR Herald

Official website for Pagan, a Turkish black metal band.

## Tech Stack

- **Language**: ReScript 12 (its standard library replaces @rescript/core)
- **UI**: @rescript/react 0.15 (React 19 bindings)
- **Build Tool**: Vite 8 (Node `^20.19.0 || >=22.12.0`; CI uses Node 24)
- **Styling**: Tailwind CSS 4 (Vite plugin, CSS-first config in index.css) + CSS custom properties (HSL)
- **Deployment**: GitHub Pages (pagan.tr)

## Project Structure

```
config/
└── vite.config.js        # Vite config (Tailwind 4 plugin)
src/
├── Main.res              # Entry point (root render; CSS is linked from index.html)
├── App.res               # Root component
├── Hero.res              # Band logo, tagline, fog effect
├── Biography.res         # Band history and lineup
├── Discography.res       # Release cards with Spotify/Bandcamp links
├── Shop.res              # SSH shop terminal card
├── Media.res             # YouTube embed and social links
├── Links.res             # External links section
├── Footer.res            # Footer with social links
├── ThemeToggle.res       # Dark/light theme toggle (skull icon)
├── index.css             # Design system: Tailwind import, @theme tokens, CSS variables, custom utilities
└── assets/
    ├── fog.css           # Atmospheric fog/mist animation
    ├── fog1.webp, fog2.webp
    ├── pagan-logo.webp   # Hero logo (LCP image, preloaded from index.html)
    ├── pagan-band-photo.webp
    └── PAGAN-old.logo.png  # Legacy logo master, not shipped
scripts/
└── generate-sitemap.js   # Post-build sitemap generator
rescript.json             # ReScript compiler config
```

## Design System

### Themes

- **Dark (default)**: Black metal aesthetic with icy blue accents
- **Light**: Inverted theme for accessibility
- Theme is persisted in localStorage, applied via class on `<html>`

### Color Tokens (HSL)

- `--background`: Page background
- `--foreground`: Text color
- `--primary`: Icy blue accent (200 90% 55%)
- `--secondary`: Subtle backgrounds
- `--muted`: Disabled/subtle elements
- `--card`: Card backgrounds
- `--border`: Border color

### Custom Utilities

- `.text-shadow-glow`: Glowing text effect
- `.border-glow`: Glowing border effect
- `.bg-gradient-dark`: Dark gradient background

## Commands

```bash
npm run res:build  # Compile ReScript to JS
npm run res:dev    # Watch mode for ReScript (`rescript watch`; run in separate terminal)
npm run res:clean  # Clean ReScript build artifacts
npm run dev        # Build ReScript + start Vite dev server
npm run build      # Full production build (ReScript + Vite + sitemap)
npm run preview    # Preview production build
```

## Development Workflow

1. Run `npm run res:dev` in one terminal (watches .res files)
2. Run `npx vite --config config/vite.config.js` in another (dev server)

Or simply `npm run dev` for a one-shot build + dev server.

## Notes

- Single-page application with semantic sections (no router needed)
- ReScript compiles to `.res.mjs` files in-source (gitignored)
- SEO optimized with JSON-LD structured data (MusicGroup schema)
- Mobile responsive design
- Atmospheric fog CSS animation layer (transform-based; static under prefers-reduced-motion)
- Images are WebP. Give every <img> intrinsic width/height; lazy-load anything below the fold
- Band facts live in three places: JSON-LD in index.html, public/llms.txt, and the .res components. Keep them in sync
- public/images/og-image.png is the 1200x630 share card referenced by og:image, twitter:image and JSON-LD
- No shadcn/ui or component library - plain HTML elements with Tailwind
- Tailwind 4 notes: `dark:` is a class variant (`@custom-variant` in index.css); sections use `mx-auto w-full px-4` rather than `container`, whose v4 breakpoint max-widths would change the layout
