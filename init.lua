require("hs.ipc")

hs.autoLaunch(true)

local hyper = { "cmd", "ctrl", "alt" }

hs.loadSpoon("AppLauncher")

spoon.AppLauncher.apps = {
  browser = "com.google.Chrome",
  editor = "dev.zed.Zed",
  files = "com.apple.finder",
  git = "com.gitbutler.app",
  ide = "com.jetbrains.rider",
  terminal = "com.mitchellh.ghostty",
  x = "com.google.Chrome.app.lodlkdfmihgonocnmddehnfgiljnadcf",
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
  x = { hyper, "x" },
})

spoon.AppLauncher:bindNewWindow({
  browser = { hyper, "space" },
  files = { hyper, "escape" },
  terminal = { hyper, "return" },
})

hs.loadSpoon("DesktopKeys")

spoon.DesktopKeys:bindHotkeys({
  createDesktop = { hyper, "=" },
  removeDesktop = { hyper, "-" },
})

hs.loadSpoon("FocusFollowsMouse")

spoon.FocusFollowsMouse.delay = 0.15
spoon.FocusFollowsMouse:start()
