# Pagan TR Herald

Official website for Pagan, a Turkish black metal band.

## Tech Stack

- **Language**: ReScript 11
- **UI**: @rescript/react (React 18 bindings)
- **Build Tool**: Vite 5
- **Styling**: Tailwind CSS 3.4 + CSS custom properties (HSL)
- **Deployment**: GitHub Pages (pagan.tr)

## Project Structure

```
config/
├── vite.config.js        # Vite config (with inline PostCSS)
└── tailwind.config.js    # Tailwind CSS config
src/
├── Main.res              # Entry point (CSS imports, root render)
├── App.res               # Root component
├── Hero.res              # Band logo, tagline, fog effect
├── Biography.res         # Band history and lineup
├── Discography.res       # Release cards with Spotify/Bandcamp links
├── Shop.res              # SSH shop terminal card
├── Media.res             # YouTube embed and social links
├── Links.res             # External links section
├── Footer.res            # Footer with social links
├── ThemeToggle.res       # Dark/light theme toggle (skull icon)
├── index.css             # Design system (CSS variables, Tailwind)
└── assets/
    ├── fog.css           # Atmospheric fog/mist animation
    ├── fog1.png, fog2.png
    ├── pagan-logo.jpg
    └── pagan-band-photo.JPG
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
npm run res:dev    # Watch mode for ReScript (run in separate terminal)
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
- Atmospheric fog CSS animation layer
- No shadcn/ui or component library - plain HTML elements with Tailwind
