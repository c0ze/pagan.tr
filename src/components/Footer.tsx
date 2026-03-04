export const Footer = () => {
  return (
    <footer className="py-12 bg-background border-t border-border">
      <div className="container mx-auto px-4">
        <div className="max-w-6xl mx-auto text-center space-y-6">
          <div className="flex flex-col md:flex-row items-center justify-center gap-6 text-sm text-muted-foreground">
            <a
              href="https://www.facebook.com/pagan.tr/"
              target="_blank"
              rel="noopener noreferrer"
              className="hover:text-primary transition-colors"
            >
              Facebook
            </a>
            <span className="hidden md:inline text-primary">•</span>
            <a
              href="https://www.youtube.com/@pagan-tr/"
              target="_blank"
              rel="noopener noreferrer"
              className="hover:text-primary transition-colors"
            >
              YouTube
            </a>
            <span className="hidden md:inline text-primary">•</span>
            <a
              href="https://www.metal-archives.com/bands/Pagan/4260"
              target="_blank"
              rel="noopener noreferrer"
              className="hover:text-primary transition-colors"
            >
              Metal Archives
            </a>
            <span className="hidden md:inline text-primary">•</span>
            <a
              href="https://metalhead.club/@Pagan"
              target="_blank"
              rel="me noopener noreferrer"
              className="hover:text-primary transition-colors"
            >
              Mastodon
            </a>
          </div>

          <div className="text-sm text-muted-foreground">
            <p className="mb-2">
              <span className="text-primary font-bold">PAGAN</span> - Turkish Black Metal
            </p>
            <p>
              Istanbul, Türkiye • Est. 1995
            </p>
          </div>

          <div className="text-xs text-muted-foreground/60">
            © {new Date().getFullYear()} Pagan. All rights reserved.
          </div>
        </div>
      </div>
    </footer>
  );
};
