# hammerspoon-config

My [Hammerspoon][hammerspoon] configuration.

It loads two Spoons and decides which keys reach them. AppLauncher
and SpaceMover live in their own repositories and are ignored here.
AutoRaise handles focus follows mouse. JankyBorders handles window borders.

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
| `hyper` + `1`…`9` | Send the focused window to that desktop on its monitor, without following it |
| `hyper` + `b` `e` `g` `i` `l` `t` `x` | Focus Chrome, Zed, GitButler, Rider, Linear, Ghostty, or the X web app |
| `hyper` + `return` / `shift` + `return` | Open a new Ghostty / Chrome window |

## Spoons

| Spoon | Does |
|---|---|
| [AppLauncher][applauncher] | Launches or focuses applications by semantic role, so a key stays put when the application for that job changes, and opens a new window for a role |
| [SpaceMover][spacemover] | Sends the focused window to a numbered native desktop on its monitor |

JankyBorders is installed with `brew install FelixKratz/formulae/borders` and
started at login with `brew services start felixkratz/formulae/borders`.
Its configuration is in `~/.config/borders/bordersrc`: rounded white 5-point
border, transparent inactive borders, Retina rendering, and `ax_focus=off`.
The white color is fixed rather than following the macOS appearance.

AutoRaise is installed with `brew install --cask dimentium/autoraise/autoraiseapp`
and opens at login. It polls the pointer every 250 ms and raises and focuses
windows once the pointer is detected as stopped, with no additional delay
(0 ms). Pointer warping is disabled.

## Installing

```sh
git clone https://github.com/dsbraz/hammerspoon-config.git ~/.hammerspoon
cd ~/.hammerspoon/Spoons
git clone https://github.com/dsbraz/AppLauncher.spoon.git
git clone https://github.com/dsbraz/SpaceMover.spoon.git
make -C SpaceMover.spoon
```

All Spoons require Accessibility permission for Hammerspoon.

`require("hs.ipc")` at the top is what makes the `hs` command line tool work.

[applauncher]: https://github.com/dsbraz/AppLauncher.spoon
[hammerspoon]: https://www.hammerspoon.org
[spacemover]: https://github.com/dsbraz/SpaceMover.spoon
