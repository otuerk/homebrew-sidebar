cask "sidebar" do
  version "2.0.1"
  sha256 "1cc8146f480d1810be08e3d57c4c87a589edd4dab256d36a64075772519348dc"

  url "https://download.sidebarapp.net/Sidebar%202.0.1.dmg"
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
