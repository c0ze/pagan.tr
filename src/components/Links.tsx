export const Links = () => {
  return (
    <section id="links" className="py-20 bg-card/50 relative">
      <div className="container mx-auto px-4">
        <div className="max-w-4xl mx-auto text-center">
          <h2 className="text-4xl md:text-5xl font-bold mb-12 text-shadow-glow">
            LINKS
          </h2>

          <div className="grid md:grid-cols-2 gap-6 mb-12">
            <a
              href="https://www.metal-archives.com/bands/Pagan/4260"
              target="_blank"
              rel="noopener noreferrer"
              className="p-8 bg-card border-2 border-border hover:border-primary transition-all duration-300 group"
            >
              <h3 className="text-2xl font-bold mb-2 group-hover:text-primary transition-colors">
                Metal Archives
              </h3>
              <p className="text-muted-foreground">Complete band information and discography</p>
            </a>

            <a
              href="https://www.facebook.com/pagan.tr/"
              target="_blank"
              rel="noopener noreferrer"
              className="p-8 bg-card border-2 border-border hover:border-primary transition-all duration-300 group"
            >
              <h3 className="text-2xl font-bold mb-2 group-hover:text-primary transition-colors">
                Facebook
              </h3>
              <p className="text-muted-foreground">Latest news and updates</p>
            </a>

            <a
              href="https://www.youtube.com/@pagan-tr/"
              target="_blank"
              rel="noopener noreferrer"
              className="p-8 bg-card border-2 border-border hover:border-primary transition-all duration-300 group"
            >
              <h3 className="text-2xl font-bold mb-2 group-hover:text-primary transition-colors">
                YouTube
              </h3>
              <p className="text-muted-foreground">Videos and live performances</p>
            </a>

            <a
              href="https://www.stygianblackhand.com/"
              target="_blank"
              rel="noopener noreferrer"
              className="p-8 bg-card border-2 border-border hover:border-primary transition-all duration-300 group"
            >
              <h3 className="text-2xl font-bold mb-2 group-hover:text-primary transition-colors">
                Stygian Black Hand
              </h3>
              <p className="text-muted-foreground">Current label</p>
            </a>

            <a
              href="https://metalhead.club/@Pagan"
              target="_blank"
              rel="me noopener noreferrer"
              className="p-8 bg-card border-2 border-border hover:border-primary transition-all duration-300 group"
            >
              <h3 className="text-2xl font-bold mb-2 group-hover:text-primary transition-colors">
                Mastodon
              </h3>
              <p className="text-muted-foreground">Follow us on the Fediverse</p>
            </a>
          </div>

          <div className="pt-8 border-t border-border">
            <p className="text-muted-foreground mb-4">For bookings and inquiries</p>
            <a
              href="mailto:contact@pagan.tr"
              className="text-lg text-primary hover:text-primary/80 transition-colors font-semibold"
            >
              contact@pagan.tr
            </a>
          </div>
        </div>
      </div>
    </section>
  );
};
