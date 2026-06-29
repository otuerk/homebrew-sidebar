cask "sidebar" do
  version "2.1.0"
  sha256 "84bfda67e7e4a97fb023dd5214a5f95be0228245d6e2aeee8837b4a04ffaba24"

  url "https://download.sidebarapp.net/Sidebar%202.1.0.dmg"
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
