let currentYear: string = %raw(`String(new Date().getFullYear())`)

type footerLink = {
  href: string,
  label: string,
  rel: string,
}

let socialLinks = [
  {href: "https://www.facebook.com/pagan.tr/", label: "Facebook", rel: "noopener noreferrer"},
  {href: "https://www.youtube.com/@pagan-tr/", label: "YouTube", rel: "noopener noreferrer"},
  {
    href: "https://www.metal-archives.com/bands/Pagan/4260",
    label: "Metal Archives",
    rel: "noopener noreferrer",
  },
  {href: "https://metalhead.club/@Pagan", label: "Mastodon", rel: "me noopener noreferrer"},
]

@react.component
let make = () => {
  <footer className="py-12 bg-background border-t border-border">
    <div className="container mx-auto px-4">
      <div className="max-w-6xl mx-auto text-center space-y-6">
        <div
          className="flex flex-col md:flex-row items-center justify-center gap-6 text-sm text-muted-foreground">
          {socialLinks
          ->Array.mapWithIndex((link, index) =>
            <React.Fragment key=link.label>
              {if index > 0 {
                <span className="hidden md:inline text-primary">
                  {React.string(`\u2022`)}
                </span>
              } else {
                React.null
              }}
              <a
                href=link.href
                target="_blank"
                rel=link.rel
                className="hover:text-primary transition-colors">
                {React.string(link.label)}
              </a>
            </React.Fragment>
          )
          ->React.array}
        </div>
        <div className="text-sm text-muted-foreground">
          <p className="mb-2">
            <span className="text-primary font-bold">
              {React.string("PAGAN")}
            </span>
            {React.string(" - Turkish Black Metal")}
          </p>
          <p> {React.string(`Istanbul, T\u00FCrkiye \u2022 Est. 1995`)} </p>
        </div>
        <div className="text-xs text-muted-foreground/60">
          {React.string(`\u00A9 ` ++ currentYear ++ " Pagan. All rights reserved.")}
        </div>
      </div>
    </div>
  </footer>
}
