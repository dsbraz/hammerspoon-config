# hammerspoon-config

My [Hammerspoon][hammerspoon] configuration: `init.lua`, and nothing else.

It loads three Spoons and decides which keys reach them. The Spoons themselves
live in their own repositories, so they are not tracked here — `Spoons/` is
ignored.

## Layout

Everything is one file. It names the two modifier layers once and uses them
throughout, so a layer moves in a single edit:

```lua
local hyper   = { "cmd", "ctrl", "alt", "shift" }
local desktop = { "ctrl", "alt" }
```

`hyper` is the four-modifier combination — nothing else on macOS claims it, so
it is safe for application and window shortcuts. `desktop` is the Space layer,
matching WhichSpace's own `ctrl+alt+←/→`.

## Keys

| Key | Does |
|---|---|
| `hyper` + `b` `e` `g` `i` `t` | Focus Chrome, Zed, GitButler, Rider, Ghostty |
| `hyper` + `space` / `return` | Open a new Chrome or Ghostty window |
| `hyper` + `r` | Retile the active Stage Manager group |
| `hyper` + `w` | Turn automatic tiling on or off |
| `ctrl+alt` + `1`–`9` | Move the front window to that Desktop and follow it |
| `ctrl+alt` + `=` | Add a Desktop and switch to it |
| `ctrl+alt` + `-` | Remove the current Desktop |

## Spoons

| Spoon | Does |
|---|---|
| [AppLauncher][applauncher] | Launches or focuses applications by semantic role, so a key stays put when the application for that job changes, and opens a new window for a role |
| [StageNativeTile][stagenativetile] | Applies macOS native tiling to the active Stage Manager group |
| [WhichSpaceKeys][whichspacekeys] | Reaches a Desktop by number, and adds and removes Desktops, through [WhichSpace][whichspace] |

## Installing

```sh
git clone https://github.com/dsbraz/hammerspoon-config.git ~/.hammerspoon
cd ~/.hammerspoon/Spoons
git clone https://github.com/dsbraz/AppLauncher.spoon.git
git clone https://github.com/dsbraz/StageNativeTile.spoon.git
git clone https://github.com/dsbraz/WhichSpaceKeys.spoon.git
```

WhichSpaceKeys drives [WhichSpace][whichspace], which has to be installed and
running. Each Spoon's README lists what it needs; between them that is
Accessibility for Hammerspoon and for WhichSpace, and Automation for Hammerspoon
to control WhichSpace.

`require("hs.ipc")` at the top is what makes the `hs` command line tool work.

[applauncher]: https://github.com/dsbraz/AppLauncher.spoon
[hammerspoon]: https://www.hammerspoon.org
[stagenativetile]: https://github.com/dsbraz/StageNativeTile.spoon
[whichspace]: https://github.com/gechr/WhichSpace
[whichspacekeys]: https://github.com/dsbraz/WhichSpaceKeys.spoon
