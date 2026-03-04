import { Card, CardContent, CardHeader, CardTitle } from "@/components/ui/card";

interface Release {
  title: string;
  type: string;
  year: number;
  description?: string;
  spotify?: string;
  bandcamp?: string;
}

const releases: Release[] = [
  {
    title: "Acolytes",
    type: "EP",
    year: 2024,
    description: "Latest offering from the depths of the underground",
    spotify: "https://open.spotify.com/album/02azDsT2v1xCQ0yjLob72H",
    bandcamp: "https://pagantr.bandcamp.com/album/acolytes"
  },
  {
    title: "Heathen Upheaval (Remaster)",
    type: "Re-release",
    year: 2022,
    description: "Remaster of the critically acclaimed 1998 demo. Released via Saturnal Records.",
    spotify: "https://open.spotify.com/album/0uWo78eCphS18kjcqBWzA1",
    bandcamp: "https://pagantr.bandcamp.com/album/heathen-upheaval"
  },
  {
    title: "Rehearsal Tape '19",
    type: "Demo",
    year: 2019,
    description: "Marking the return after years of silence",
    spotify: "https://open.spotify.com/album/3sUQFGTH8HVpiX597Wh4H4",
    bandcamp: "https://pagantr.bandcamp.com/album/rehearsal-tape-19"
  },
  {
    title: "Oz : In Transcendence",
    type: "Full-length",
    year: 2007,
    description: "The band's magnum opus, exploring mystical realms",
    spotify: "https://open.spotify.com/album/22vacS185EF58q4mV79J6Y"
  },
  {
    title: "Heathen Upheaval",
    type: "Demo",
    year: 1998,
    description: "Raw and uncompromising blackened assault",
    spotify: "https://open.spotify.com/album/0uWo78eCphS18kjcqBWzA1",
    bandcamp: "https://pagantr.bandcamp.com/album/heathen-upheaval"
  },
  {
    title: "Rehearsal Tape '96",
    type: "Demo",
    year: 1996,
    description: "Early recordings showcasing primitive intensity"
  },
  {
    title: "In Hoc Signo Vinces",
    type: "Demo",
    year: 1995,
    description: "The beginning - first recorded material"
  }
];

export const Discography = () => {
  return (
    <section id="discography" className="py-20 bg-secondary relative">
      <div className="container mx-auto px-4">
        <div className="max-w-6xl mx-auto">
          <h2 className="text-4xl md:text-5xl font-bold mb-4 text-center text-shadow-glow">
            DISCOGRAPHY
          </h2>
          <p className="text-center text-muted-foreground mb-12">
            Nearly three decades of darkness
          </p>

          <div className="grid md:grid-cols-2 lg:grid-cols-3 gap-6">
            {releases.map((release, index) => (
              <Card
                key={index}
                className="bg-card border-border hover:border-primary/50 transition-all duration-300 group"
              >
                <CardHeader>
                  <div className="flex items-start justify-between mb-2">
                    <span className="text-4xl font-bold text-primary/30 group-hover:text-primary/50 transition-colors">
                      {release.year}
                    </span>
                    <span className="text-xs uppercase tracking-wider px-2 py-1 bg-primary/20 text-primary rounded">
                      {release.type}
                    </span>
                  </div>
                  <CardTitle className="text-xl group-hover:text-primary transition-colors">
                    {release.title}
                  </CardTitle>
                </CardHeader>
                <CardContent>
                  <p className="text-sm text-muted-foreground mb-4">
                    {release.description}
                  </p>
                  <div className="flex flex-col gap-2">
                    {release.spotify && (
                      <a
                        href={release.spotify}
                        target="_blank"
                        rel="noopener noreferrer"
                        className="inline-flex items-center text-sm text-muted-foreground hover:text-primary transition-colors"
                      >
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
                          className="mr-2 h-5 w-5"
                        >
                          <path d="M9 18V5l12-2v13" />
                          <circle cx="6" cy="18" r="3" />
                          <circle cx="18" cy="16" r="3" />
                        </svg>
                        Listen on Spotify
                      </a>
                    )}
                    {release.bandcamp && (
                      <a
                        href={release.bandcamp}
                        target="_blank"
                        rel="noopener noreferrer"
                        className="inline-flex items-center text-sm text-muted-foreground hover:text-primary transition-colors"
                      >
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
                          className="mr-2 h-5 w-5"
                        >
                          <path d="m22 6-9.5 4-9.5-4" />
                          <path d="m22 18-9.5-4-9.5 4" />
                          <path d="m2.5 10 9.5 4 9.5-4" />
                        </svg>
                        Listen on Bandcamp
                      </a>
                    )}
                  </div>
                </CardContent>
              </Card>
            ))}
          </div>

          <div className="mt-12 text-center">
            <a
              href="https://www.metal-archives.com/bands/Pagan/4260"
              target="_blank"
              rel="noopener noreferrer"
              className="inline-block px-6 py-3 bg-secondary hover:bg-primary text-foreground hover:text-primary-foreground border border-border hover:border-primary transition-all duration-300 uppercase tracking-wider text-sm font-semibold"
            >
              View on Metal Archives
            </a>
          </div>
        </div>
      </div>
    </section>
  );
};
