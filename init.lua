require("hs.ipc")

hs.autoLaunch(true)

local hyper = { "cmd", "ctrl", "alt" }
local desktop = { "ctrl", "alt" }

hs.loadSpoon("AppLauncher")

spoon.AppLauncher.apps = {
  browser = "com.google.Chrome",
  editor = "dev.zed.Zed",
  files = "com.apple.finder",
  git = "com.gitbutler.app",
  ide = "com.jetbrains.rider",
  terminal = "com.mitchellh.ghostty",
}

spoon.AppLauncher.newWindowMenuItems = {
  files = { "File", "New Finder Window" },
}
spoon.AppLauncher.joinNewWindowsToCurrentStage = true

spoon.AppLauncher:bindHotkeys({
  browser = { hyper, "b" },
  editor = { hyper, "e" },
  git = { hyper, "g" },
  ide = { hyper, "i" },
  terminal = { hyper, "t" },
})

spoon.AppLauncher:bindNewWindow({
  browser = { hyper, "space" },
  files = { hyper, "escape" },
  terminal = { hyper, "return" },
})

hs.loadSpoon("WhichSpaceKeys")

spoon.WhichSpaceKeys:bindDesktops(desktop)

spoon.WhichSpaceKeys:bindHotkeys({
  createDesktop = { desktop, "=" },
  removeDesktop = { desktop, "-" },
})
