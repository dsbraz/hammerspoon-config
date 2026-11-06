require("hs.ipc")

hs.autoLaunch(true)

local hyper = { "cmd", "ctrl", "alt" }

hs.loadSpoon("AppLauncher")

spoon.AppLauncher.apps = {
  calendar = "com.apple.iCal",
  chrome = "com.google.Chrome",
  editor = "com.sublimetext.4",
  files = "com.apple.finder",
  git = "com.apple.Safari.WebApp.B6EF707C-AFD7-4795-9BE6-28E6E206871D",
  ide = "com.jetbrains.rider",
  linear = "com.linear",
  rex = "com.superlogical.rex",
  terminal = "com.mitchellh.ghostty",
  x = "com.apple.Safari.WebApp.769080DB-F6F8-4933-8734-480E0B638668",
  youtube = "com.apple.Safari.WebApp.2D7170B9-D65C-495A-A7D4-549090E45AF5",
}

spoon.AppLauncher.newWindowMenuItems = {
  files = { "File", "New Finder Window" },
}

spoon.AppLauncher:bindHotkeys({
  calendar = { hyper, "c" },
  chrome = { hyper, "b" },
  editor = { hyper, "e" },
  git = { hyper, "g" },
  ide = { hyper, "i" },
  linear = { hyper, "l" },
  rex = { hyper, "t" },
  x = { hyper, "x" },
  youtube = { hyper, "y" },
})

spoon.AppLauncher:bindNewWindow()
