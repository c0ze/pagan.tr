@module("./assets/pagan-band-photo.JPG") external paganBandPhoto: string = "default"

@react.component
let make = () => {
  <section id="biography" className="py-20 bg-background relative">
    <div className="container mx-auto px-4">
      <div className="max-w-6xl mx-auto">
        <h2 className="text-4xl md:text-5xl font-bold mb-12 text-center text-shadow-glow">
          {React.string("BIOGRAPHY")}
        </h2>
        <div className="grid md:grid-cols-2 gap-12 items-center">
          <div className="space-y-6 text-foreground/90 leading-relaxed">
            <p className="text-lg">
              <span className="text-primary font-bold"> {React.string("Pagan")} </span>
              {React.string(" is a black metal band from Istanbul, T\u00FCrkiye, formed in ")}
              <span className="text-primary"> {React.string("1995")} </span>
              {React.string(
                ". Pioneering the Turkish black metal scene, Pagan explores themes of paganism, shamanism, and mysticism through their raw and atmospheric sound.",
              )}
            </p>
            <p>
              {React.string(
                "The band was active during the formative years of extreme metal in Turkey from 1995 to 2007, releasing several influential demos and culminating in their full-length album ",
              )}
              <span className="italic text-primary">
                {React.string(`"Oz : In Transcendence"`)}
              </span>
              {React.string(" in 2007.")}
            </p>
            <p>
              {React.string(
                "After a 12-year hiatus, Pagan returned to the underground in ",
              )}
              <span className="text-primary"> {React.string("2019")} </span>
              {React.string(
                ", reinvigorated and ready to continue their journey into the darkness. In 2024, they released their latest work, the ",
              )}
              <span className="italic text-primary">
                {React.string(`"Acolytes"`)}
              </span>
              {React.string(
                " EP, showcasing their evolution while maintaining the raw essence that defines their sound.",
              )}
            </p>
            <div className="pt-4 border-t border-border">
              <h3 className="text-xl font-bold mb-3 text-primary">
                {React.string("Current Lineup")}
              </h3>
              <ul className="space-y-2 text-muted-foreground">
                {[
                  ("Talciron", "Guitars, Vocals"),
                  ("Noctivagus", "Guitars, Vocals"),
                  ("War", "Drums"),
                  ("Anker", "Bass"),
                ]
                ->Array.map(((name, role)) =>
                  <li key=name>
                    <span className="text-foreground font-semibold">
                      {React.string(name)}
                    </span>
                    {React.string(" - " ++ role)}
                  </li>
                )
                ->React.array}
              </ul>
            </div>
          </div>
          <div className="relative">
            <div className="border-2 border-primary/30 border-glow">
              <img
                src=paganBandPhoto
                alt="Pagan Band"
                className="w-full h-auto grayscale hover:grayscale-0 transition-all duration-500"
              />
            </div>
            <div
              className="absolute -bottom-4 -right-4 w-full h-full border-2 border-primary/20 -z-10"
            />
          </div>
        </div>
      </div>
    </div>
  </section>
}
