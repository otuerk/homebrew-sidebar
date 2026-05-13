cask "sidebar" do
  version "2.0.7"
  sha256 "bca390833f68280987d5e249d9b1d15e35fd810e18fee756b236b5b2f8f8b46c"

  url "https://download.sidebarapp.net/Sidebar%202.0.7.dmg"
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
