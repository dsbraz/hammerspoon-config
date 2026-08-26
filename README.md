# hammerspoon-config

My [Hammerspoon][hammerspoon] configuration: `init.lua`, and nothing else.

It loads two Spoons and decides which keys reach them. The Spoons themselves
live in their own repositories, so they are not tracked here — `Spoons/` is
ignored.

## Layout

Everything is one file. It names the modifier layer once and uses it
throughout, so the layer moves in a single edit:

```lua
local hyper = { "cmd", "ctrl", "alt" }
```

`hyper` is the three-modifier combination emitted by Hyperkey.

## Keys

| Key | Does |
|---|---|
| `hyper` + `b` `e` `g` `i` `t` `x` | Focus Chrome, Zed, GitButler, Rider, Ghostty, or the X web app |
| `hyper` + `space` / `return` / `escape` | Open a new Chrome, Ghostty, or Finder window, joining the current Stage Manager group when enabled |
| `hyper` + `=` (the `+/=` key) | Add a Desktop and switch to it |
| `hyper` + `-` | Remove the current Desktop |

## Spoons

| Spoon | Does |
|---|---|
| [AppLauncher][applauncher] | Launches or focuses applications by semantic role, so a key stays put when the application for that job changes, and opens a new window for a role |
| [DesktopKeys][desktopkeys] | Adds and removes macOS Desktops; [WhichSpace][whichspace] is only its internal switch backend |

## Installing

```sh
git clone https://github.com/dsbraz/hammerspoon-config.git ~/.hammerspoon
cd ~/.hammerspoon/Spoons
git clone https://github.com/dsbraz/AppLauncher.spoon.git
git clone https://github.com/dsbraz/DesktopKeys.spoon.git
```

DesktopKeys uses [WhichSpace][whichspace] internally, so WhichSpace has to be
installed and running. Each Spoon's README lists what it needs; between them that is
Accessibility for Hammerspoon and for WhichSpace, and Automation for Hammerspoon
to control WhichSpace.

`require("hs.ipc")` at the top is what makes the `hs` command line tool work.

[applauncher]: https://github.com/dsbraz/AppLauncher.spoon
[hammerspoon]: https://www.hammerspoon.org
[whichspace]: https://github.com/gechr/WhichSpace
[desktopkeys]: https://github.com/dsbraz/DesktopKeys.spoon
