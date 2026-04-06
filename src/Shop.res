module TerminalIcon = {
  @react.component
  let make = (~className="") => {
    <svg
      xmlns="http://www.w3.org/2000/svg"
      width="24"
      height="24"
      viewBox="0 0 24 24"
      fill="none"
      stroke="currentColor"
      strokeWidth="2"
      strokeLinecap="round"
      strokeLinejoin="round"
      className>
      <polyline points="4 17 10 11 4 5" />
      <line x1="12" x2="20" y1="19" y2="19" />
    </svg>
  }
}

@react.component
let make = () => {
  <section id="shop" className="py-20 bg-background relative border-t border-border/50">
    <div className="container mx-auto px-4">
      <div className="max-w-4xl mx-auto text-center">
        <h2 className="text-4xl md:text-5xl font-bold mb-6 text-shadow-glow">
          {React.string("MERCHANDISE")}
        </h2>
        <p className="text-muted-foreground mb-12 text-lg">
          {React.string("Purchase our physical artifacts directly from the void.")}
        </p>
        <div
          className="bg-card border border-primary/20 max-w-2xl mx-auto overflow-hidden group hover:border-primary/50 transition-all duration-300 rounded-lg">
          <div className="bg-muted/10 border-b border-border p-6 pb-4">
            <h3
              className="flex items-center justify-center gap-3 font-mono text-xl text-primary font-semibold">
              <TerminalIcon className="w-6 h-6" />
              <span> {React.string("SSH Shop")} </span>
            </h3>
          </div>
          <div className="p-8">
            <p className="text-muted-foreground mb-6">
              {React.string(
                "Connect to our terminal-based shop to browse and purchase available CDs and merchandise.",
              )}
            </p>
            <div
              className="bg-black rounded-lg p-6 border border-primary/20 relative group-hover:border-primary/30 transition-colors">
              <code className="font-mono text-xl text-green-500 break-all sm:break-normal">
                {React.string("ssh shop.pagan.tr")}
              </code>
            </div>
            <p className="mt-4 text-xs text-muted-foreground">
              {React.string("* Requires an SSH client. Keys not stored.")}
            </p>
          </div>
        </div>
      </div>
    </div>
  </section>
}
