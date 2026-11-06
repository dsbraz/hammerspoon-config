require("hs.ipc")

hs.autoLaunch(true)

local hyper = { "cmd", "ctrl", "alt" }

hs.loadSpoon("AppLauncher")

spoon.AppLauncher.apps = {
  calendar = "com.apple.iCal",
  chrome = "com.google.Chrome",
  editor = "com.sublimetext.4",
  files = "com.apple.finder",
  git = "com.google.Chrome.app.mjoklplbddabcmpepnokjaffbmgbkkgg",
  ide = "com.jetbrains.rider",
  linear = "com.linear",
  rex = "com.superlogical.rex",
  terminal = "com.mitchellh.ghostty",
  x = "com.google.Chrome.app.lodlkdfmihgonocnmddehnfgiljnadcf",
  youtube = "com.google.Chrome.app.agimnkijcaahngcdmfeangaknmldooml",
}

spoon.AppLauncher.newWindowMenuItems = {
  files = { "File", "New Finder Window" },
}

spoon.AppLauncher:bindHotkeys({
  calendar = { hyper, "c" },
  chrome = { hyper, "b" },
  editor = { hyper, "e" },
  git = { hyper, "g" },
  linear = { hyper, "l" },
  rex = { hyper, "t" },
  x = { hyper, "x" },
  youtube = { hyper, "y" },
})

spoon.AppLauncher:bindNewWindow({})
