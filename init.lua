require("hs.ipc")

hs.autoLaunch(true)

local hyper = { "cmd", "ctrl", "alt" }

hs.loadSpoon("AppLauncher")

spoon.AppLauncher.apps = {
  chrome = "com.google.Chrome",
  editor = "dev.zed.Zed",
  files = "com.apple.finder",
  git = "com.google.Chrome.app.mjoklplbddabcmpepnokjaffbmgbkkgg",
  ide = "com.jetbrains.rider",
  linear = "com.linear",
  terminal = "com.mitchellh.ghostty",
  x = "com.google.Chrome.app.lodlkdfmihgonocnmddehnfgiljnadcf",
}

spoon.AppLauncher.newWindowMenuItems = {
  files = { "File", "New Finder Window" },
}

spoon.AppLauncher:bindHotkeys({
  chrome = { hyper, "b" },
  editor = { hyper, "e" },
  git = { hyper, "g" },
  ide = { hyper, "i" },
  linear = { hyper, "l" },
  terminal = { hyper, "t" },
  x = { hyper, "x" },
})

spoon.AppLauncher:bindNewWindow({
  chrome = { hyper, "space" },
  files = { hyper, "escape" },
  terminal = { hyper, "return" },
})

hs.loadSpoon("FocusFollowsMouse")

spoon.FocusFollowsMouse.delay = 0.30
spoon.FocusFollowsMouse:start()
