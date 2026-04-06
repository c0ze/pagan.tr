@send external setAttribute: (Dom.element, string, string) => unit = "setAttribute"

module VideoEmbed = {
  @react.component
  let make = () => {
    let ref = React.useRef(Nullable.null)

    React.useEffect0(() => {
      switch ref.current->Nullable.toOption {
      | Some(el) =>
        el->setAttribute(
          "allow",
          "accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture",
        )
      | None => ()
      }
      None
    })

    <iframe
      ref={ReactDOM.Ref.domRef(ref)}
      width="100%"
      height="100%"
      src="https://www.youtube.com/embed/REBYO1Aoaos"
      title="Pagan - Video"
      allowFullScreen={true}
      className="w-full h-full"
    />
  }
}

module YouTubeIcon = {
  @react.component
  let make = (~className="") => {
    <svg className fill="currentColor" viewBox="0 0 24 24">
      <path
        d="M23.498 6.186a3.016 3.016 0 0 0-2.122-2.136C19.505 3.545 12 3.545 12 3.545s-7.505 0-9.377.505A3.017 3.017 0 0 0 .502 6.186C0 8.07 0 12 0 12s0 3.93.502 5.814a3.016 3.016 0 0 0 2.122 2.136c1.871.505 9.376.505 9.376.505s7.505 0 9.377-.505a3.015 3.015 0 0 0 2.122-2.136C24 15.93 24 12 24 12s0-3.93-.502-5.814zM9.545 15.568V8.432L15.818 12l-6.273 3.568z"
      />
    </svg>
  }
}

module FacebookIcon = {
  @react.component
  let make = (~className="") => {
    <svg className fill="currentColor" viewBox="0 0 24 24">
      <path
        d="M24 12.073c0-6.627-5.373-12-12-12s-12 5.373-12 12c0 5.99 4.388 10.954 10.125 11.854v-8.385H7.078v-3.47h3.047V9.43c0-3.007 1.792-4.669 4.533-4.669 1.312 0 2.686.235 2.686.235v2.953H15.83c-1.491 0-1.956.925-1.956 1.874v2.25h3.328l-.532 3.47h-2.796v8.385C19.612 23.027 24 18.062 24 12.073z"
      />
    </svg>
  }
}

@react.component
let make = () => {
  <section id="media" className="py-20 bg-background relative">
    <div className="container mx-auto px-4">
      <div className="max-w-6xl mx-auto">
        <h2 className="text-4xl md:text-5xl font-bold mb-4 text-center text-shadow-glow">
          {React.string("MEDIA")}
        </h2>
        <p className="text-center text-muted-foreground mb-12">
          {React.string("Visual and sonic darkness")}
        </p>
        <div className="mb-16">
          <div
            className="aspect-video w-full max-w-4xl mx-auto border-2 border-primary/30 border-glow">
            <VideoEmbed />
          </div>
        </div>
        <div className="grid md:grid-cols-2 gap-8 max-w-3xl mx-auto">
          <a
            href="https://www.youtube.com/@pagan-tr/"
            target="_blank"
            rel="noopener noreferrer"
            className="p-6 bg-card border-2 border-border hover:border-primary transition-all duration-300 group">
            <div className="flex items-center gap-4">
              <div
                className="text-4xl group-hover:text-primary transition-colors">
                <YouTubeIcon className="w-12 h-12" />
              </div>
              <div>
                <h3
                  className="text-xl font-bold group-hover:text-primary transition-colors">
                  {React.string("YouTube")}
                </h3>
                <p className="text-sm text-muted-foreground">
                  {React.string("Watch our videos")}
                </p>
              </div>
            </div>
          </a>
          <a
            href="https://www.facebook.com/pagan.tr/"
            target="_blank"
            rel="noopener noreferrer"
            className="p-6 bg-card border-2 border-border hover:border-primary transition-all duration-300 group">
            <div className="flex items-center gap-4">
              <div
                className="text-4xl group-hover:text-primary transition-colors">
                <FacebookIcon className="w-12 h-12" />
              </div>
              <div>
                <h3
                  className="text-xl font-bold group-hover:text-primary transition-colors">
                  {React.string("Facebook")}
                </h3>
                <p className="text-sm text-muted-foreground">
                  {React.string("Follow us")}
                </p>
              </div>
            </div>
          </a>
        </div>
      </div>
    </div>
  </section>
}
