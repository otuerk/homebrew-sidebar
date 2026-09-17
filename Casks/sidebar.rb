cask "sidebar" do
  version "2.2.5"
  sha256 "a62c26cc5e60da301c6503eda290f1f2ab3abe2d9bccebadc0c51f589be961c7"

  url "https://download.sidebarapp.net/Sidebar%202.2.5.dmg"
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
