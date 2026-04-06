@module("./assets/pagan-logo.jpg") external paganLogo: string = "default"

@react.component
let make = () => {
  <section
    className="relative min-h-screen flex items-center justify-center bg-gradient-dark overflow-hidden">
    <div className="absolute top-4 right-4 z-20">
      <ThemeToggle />
    </div>
    <div className="fogwrapper absolute inset-0 z-0 pointer-events-none dark:block hidden">
      <div id="foglayer_01" className="fog">
        <div className="image01" />
        <div className="image02" />
      </div>
      <div id="foglayer_02" className="fog">
        <div className="image01" />
        <div className="image02" />
      </div>
      <div id="foglayer_03" className="fog">
        <div className="image01" />
        <div className="image02" />
      </div>
    </div>
    <div className="mistwrapper absolute inset-0 z-0 pointer-events-none dark:hidden block">
      <div id="mistlayer_01" className="mist">
        <div className="image01" />
        <div className="image02" />
      </div>
      <div id="mistlayer_02" className="mist">
        <div className="image01" />
        <div className="image02" />
      </div>
    </div>
    <div
      className="absolute inset-0 bg-[url('data:image/svg+xml;base64,PHN2ZyB3aWR0aD0iMjAwIiBoZWlnaHQ9IjIwMCIgeG1sbnM9Imh0dHA6Ly93d3cudzMub3JnLzIwMDAvc3ZnIj48ZGVmcz48cGF0dGVybiBpZD0iZ3JpZCIgd2lkdGg9IjQwIiBoZWlnaHQ9IjQwIiBwYXR0ZXJuVW5pdHM9InVzZXJTcGFjZU9uVXNlIj48cGF0aCBkPSJNIDQwIDAgTCAwIDAgMCA0MCIgZmlsbD0ibm9uZSIgc3Ryb2tlPSJyZ2JhKDI1NSwyNTUsMjU1LDAuMDMpIiBzdHJva2Utd2lkdGg9IjEiLz48L3BhdHRlcm4+PC9kZWZzPjxyZWN0IHdpZHRoPSIxMDAlIiBoZWlnaHQ9IjEwMCUiIGZpbGw9InVybCgjZ3JpZCkiLz48L3N2Zz4=')] opacity-30 z-[1]"
    />
    <div className="container mx-auto px-4 py-20 relative z-10">
      <div className="max-w-4xl mx-auto text-center space-y-12">
        <div className="flex justify-center">
          <img
            src=paganLogo
            alt="Pagan Logo"
            className="w-full max-w-2xl h-auto dark:invert-0 invert"
          />
        </div>
        <div className="space-y-4">
          <p
            className="text-xl md:text-2xl text-muted-foreground uppercase tracking-[0.3em] font-light">
            {React.string("Turkish Black Metal")}
          </p>
          <div
            className="flex items-center justify-center gap-4 text-sm text-muted-foreground">
            <span> {React.string(`Istanbul, T\u00FCrkiye`)} </span>
            <span className="text-primary"> {React.string(`\u2022`)} </span>
            <span> {React.string("Since 1995")} </span>
          </div>
        </div>
        <nav className="flex flex-wrap justify-center gap-6 pt-8">
          {[("biography", "Biography"), ("discography", "Discography"), ("media", "Media"), ("links", "Links")]
          ->Array.map(((id, label)) =>
            <a
              key=id
              href={"#" ++ id}
              className="text-foreground hover:text-primary transition-colors duration-300 uppercase tracking-wider text-sm font-medium">
              {React.string(label)}
            </a>
          )
          ->React.array}
        </nav>
      </div>
    </div>
  </section>
}
