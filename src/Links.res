type link = {
  href: string,
  title: string,
  description: string,
  rel: string,
}

let links = [
  {
    href: "https://www.metal-archives.com/bands/Pagan/4260",
    title: "Metal Archives",
    description: "Complete band information and discography",
    rel: "noopener noreferrer",
  },
  {
    href: "https://www.facebook.com/pagan.tr/",
    title: "Facebook",
    description: "Latest news and updates",
    rel: "noopener noreferrer",
  },
  {
    href: "https://www.youtube.com/@pagan-tr/",
    title: "YouTube",
    description: "Videos and live performances",
    rel: "noopener noreferrer",
  },
  {
    href: "https://www.stygianblackhand.com/",
    title: "Stygian Black Hand",
    description: "Current label",
    rel: "noopener noreferrer",
  },
  {
    href: "https://metalhead.club/@Pagan",
    title: "Mastodon",
    description: "Follow us on the Fediverse",
    rel: "me noopener noreferrer",
  },
]

@react.component
let make = () => {
  <section id="links" className="py-20 bg-card/50 relative">
    <div className="container mx-auto px-4">
      <div className="max-w-4xl mx-auto text-center">
        <h2 className="text-4xl md:text-5xl font-bold mb-12 text-shadow-glow">
          {React.string("LINKS")}
        </h2>
        <div className="grid md:grid-cols-2 gap-6 mb-12">
          {links
          ->Array.map(link =>
            <a
              key=link.title
              href=link.href
              target="_blank"
              rel=link.rel
              className="p-8 bg-card border-2 border-border hover:border-primary transition-all duration-300 group">
              <h3
                className="text-2xl font-bold mb-2 group-hover:text-primary transition-colors">
                {React.string(link.title)}
              </h3>
              <p className="text-muted-foreground">
                {React.string(link.description)}
              </p>
            </a>
          )
          ->React.array}
        </div>
        <div className="pt-8 border-t border-border">
          <p className="text-muted-foreground mb-4">
            {React.string("For bookings and inquiries")}
          </p>
          <a
            href="mailto:contact@pagan.tr"
            className="text-lg text-primary hover:text-primary/80 transition-colors font-semibold">
            {React.string("contact@pagan.tr")}
          </a>
        </div>
      </div>
    </div>
  </section>
}
