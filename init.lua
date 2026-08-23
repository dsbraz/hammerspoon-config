require("hs.ipc")

hs.autoLaunch(true)

local hyper = { "cmd", "ctrl", "alt", "shift" }
local desktop = { "ctrl", "alt" }

hs.loadSpoon("StageNativeTile")

spoon.StageNativeTile.excludedBundleIDs = {
  ["com.apple.finder"] = true,
  ["com.apple.systempreferences"] = true,
}

spoon.StageNativeTile:bindHotkeys({
  retile = { hyper, "r" },
  toggle = { hyper, "w" },
}):start()

hs.loadSpoon("AppLauncher")

spoon.AppLauncher.apps = {
  browser = "com.google.Chrome",
  editor = "dev.zed.Zed",
  git = "com.gitbutler.app",
  ide = "com.jetbrains.rider",
  terminal = "com.mitchellh.ghostty",
}

spoon.AppLauncher:bindHotkeys({
  browser = { hyper, "b" },
  editor = { hyper, "e" },
  git = { hyper, "g" },
  ide = { hyper, "i" },
  terminal = { hyper, "t" },
})

spoon.AppLauncher:bindNewWindow({
  browser = { hyper, "space" },
  terminal = { hyper, "return" },
})

hs.loadSpoon("WhichSpaceKeys")

spoon.WhichSpaceKeys:bindDesktops(desktop)

spoon.WhichSpaceKeys:bindHotkeys({
  createDesktop = { desktop, "=" },
  removeDesktop = { desktop, "-" },
})
