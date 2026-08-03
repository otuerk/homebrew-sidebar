cask "sidebar" do
  version "2.2.1"
  sha256 "ccc1178641e302ded9a5fc7e8433f97fe3740cba61d802248e24af0f520d0bfe"

  url "https://download.sidebarapp.net/Sidebar%202.2.1.dmg"
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
