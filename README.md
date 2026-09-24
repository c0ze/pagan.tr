# pagan.tr

Official website of Pagan, Turkish black metal from Istanbul since 1995.
Live at <https://pagan.tr>.

A single page built with ReScript, React, Vite and Tailwind CSS.

## Develop

Requires Node.js `^20.19.0 || >=22.12.0` (Vite 8); CI uses 24.

```sh
npm ci
npm run dev       # compile ReScript, start Vite on :8080
npm run res:dev   # optional: recompile .res files on save in another terminal
```

## Build

```sh
npm run build     # ReScript -> Vite -> dist/ (+ sitemap.xml)
npm run preview   # serve dist/ locally
```

## Deploy

Every push to `main` builds and publishes to GitHub Pages through
`.github/workflows/deploy.yml`. The custom domain (`pagan.tr`) is set in the
repository's Pages settings; Actions deployments ignore the `CNAME` file.

## Layout

- `src/*.res`: one component per page section
- `src/assets/`: logo, band photo and fog layers (WebP), `fog.css`
- `public/`: copied as-is (favicons, share image, `robots.txt`, `llms.txt`)
- `index.html`: head meta, JSON-LD band data, theme bootstrap script

Band facts (releases, links, lineup) appear in `index.html` (JSON-LD),
`public/llms.txt` and the `.res` components. Update all three together.

## The shop

The Shop section points to `ssh shop.pagan.tr`, a separate project in
[`c0ze/shop.pagan.tr`](https://github.com/c0ze/shop.pagan.tr).
