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
| `hyper` + `b` `e` `g` `i` `l` `t` `x` | Focus Chrome, Zed, GitButler, Rider, Linear, Ghostty, or the X web app |
| `hyper` + `space` / `return` / `escape` | Open a new Chrome, Ghostty, or Finder window |

## Spoons

| Spoon | Does |
|---|---|
| [AppLauncher][applauncher] | Launches or focuses applications by semantic role, so a key stays put when the application for that job changes, and opens a new window for a role |
| [FocusFollowsMouse][focusfollowsmouse] | Gives keyboard focus to the standard visible window under the pointer after a short dwell |

## Installing

```sh
git clone https://github.com/dsbraz/hammerspoon-config.git ~/.hammerspoon
cd ~/.hammerspoon/Spoons
git clone https://github.com/dsbraz/AppLauncher.spoon.git
git clone https://github.com/dsbraz/FocusFollowsMouse.spoon.git
```

Both Spoons require Accessibility permission for Hammerspoon.

`require("hs.ipc")` at the top is what makes the `hs` command line tool work.

[applauncher]: https://github.com/dsbraz/AppLauncher.spoon
[hammerspoon]: https://www.hammerspoon.org
[focusfollowsmouse]: https://github.com/dsbraz/FocusFollowsMouse.spoon
