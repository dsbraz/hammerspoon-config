# hammerspoon-config

My [Hammerspoon][hammerspoon] configuration.

It loads two Spoons and decides which keys reach them. AppLauncher and
WindowCycle live in their own repositories and are ignored here.
Amethyst handles focus follows mouse. JankyBorders handles window borders.

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
| `hyper` + `b` `e` `g` `i` `l` `t` `x` | Focus Chrome, Zed, GitButler, Rider, Linear, Ghostty, or the X web app |
| `hyper` + `space` / `return` / `escape` | Open a new Chrome, Ghostty, or Finder window |
| Command + grave accent / Command + Shift + grave accent | Cycle window focus clockwise / counterclockwise in the current Space and monitor |
| Option + grave accent / Option + Shift + grave accent | Focus the next / previous monitor, ordered left to right with wraparound, and move the pointer there |

Monitor cycling focuses the frontmost eligible window in the destination's active
Space. On an empty monitor it moves the pointer to the center; the next press
continues from that monitor.

## Spoons

| Spoon | Does |
|---|---|
| [AppLauncher][applauncher] | Launches or focuses applications by semantic role, so a key stays put when the application for that job changes, and opens a new window for a role |
| [WindowCycle][windowcycle] | Cycles focus around the current monitor or between monitors in their active Spaces |

JankyBorders is installed with `brew install FelixKratz/formulae/borders` and
started at login with `brew services start felixkratz/formulae/borders`.
Its configuration is in `~/.config/borders/bordersrc`: rounded white 5-point
border, transparent inactive borders, Retina rendering, and `ax_focus=off`.
The white color is fixed rather than following the macOS appearance.

## Installing

```sh
git clone https://github.com/dsbraz/hammerspoon-config.git ~/.hammerspoon
cd ~/.hammerspoon/Spoons
git clone https://github.com/dsbraz/AppLauncher.spoon.git
git clone https://github.com/dsbraz/WindowCycle.spoon.git
```

All Spoons require Accessibility permission for Hammerspoon.

`require("hs.ipc")` at the top is what makes the `hs` command line tool work.

[applauncher]: https://github.com/dsbraz/AppLauncher.spoon
[hammerspoon]: https://www.hammerspoon.org
[windowcycle]: https://github.com/dsbraz/WindowCycle.spoon
