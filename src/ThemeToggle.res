let getIsDark: unit => bool = %raw(`
  function() {
    return document.documentElement.classList.contains("dark");
  }
`)

let setThemeClass: bool => unit = %raw(`
  function(isDark) {
    if (isDark) {
      document.documentElement.classList.remove("light");
      document.documentElement.classList.add("dark");
      localStorage.setItem("theme", "dark");
    } else {
      document.documentElement.classList.remove("dark");
      document.documentElement.classList.add("light");
      localStorage.setItem("theme", "light");
    }
  }
`)

module SkullIcon = {
  @react.component
  let make = (~className="") => {
    <svg
      xmlns="http://www.w3.org/2000/svg"
      viewBox="0 0 24 24"
      fill="none"
      stroke="currentColor"
      strokeWidth="1.5"
      strokeLinecap="round"
      strokeLinejoin="round"
      className>
      <circle cx="9" cy="12" r="1" fill="currentColor" />
      <circle cx="15" cy="12" r="1" fill="currentColor" />
      <path d="M8 20v2h8v-2" />
      <path d="M12.5 17l-.5 3" />
      <path d="M11.5 17l.5 3" />
      <path
        d="M20 12.5c0-4.694-3.5-8.5-8-8.5s-8 3.806-8 8.5c0 2.12.845 4.108 2.322 5.593A3.5 3.5 0 0 0 9 21h6a3.5 3.5 0 0 0 2.678-2.907A8.46 8.46 0 0 0 20 12.5z"
      />
    </svg>
  }
}

@react.component
let make = () => {
  let (isDark, setIsDark) = React.useState(() => getIsDark())

  let toggleTheme = _ => {
    let newIsDark = !isDark
    setIsDark(_ => newIsDark)
    setThemeClass(newIsDark)
  }

  let buttonClass =
    "flex items-center justify-center w-10 h-10 rounded-full border transition-all duration-300 bg-secondary border-border text-foreground hover:bg-primary/20 hover:border-primary/50 hover:text-primary"

  let iconClass =
    "w-5 h-5 transition-transform duration-300 " ++ (isDark ? "rotate-0" : "rotate-180")

  <button
    onClick=toggleTheme
    className=buttonClass
    ariaLabel={isDark ? "Switch to light mode" : "Switch to dark mode"}
    title={isDark ? "Switch to light mode" : "Switch to dark mode"}>
    <SkullIcon className=iconClass />
  </button>
}
