cask "sidebar" do
  version "1.9.4"
  sha256 "52638e295c3b405879940869f41e8cae345b95a641bb2125fbd5347a3f2eeaa1"

  url "https://download.sidebarapp.net/Sidebar%201.9.4.dmg"
  name "Sidebar"
  desc "Sidebar - The most customizable Dock replacement for macOS"
  homepage "https://sidebarapp.net/"

  livecheck do
    skip "Version control is handled by the build script"
  end

  app "Sidebar.app"

  zap trash: [
    "~/Library/Application Support/at.sidebar.Sidebar",
    "~/Library/Preferences/at.sidebar.Sidebar.plist",
  ]
end
