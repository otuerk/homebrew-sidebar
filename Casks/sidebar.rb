cask "sidebar" do
  version "2.0.0"
  sha256 "d5340f876b4fd3179ea6bc710b0c2e9d4834c3a5b8cd44af8371197d151c4489"

  url "https://download.sidebarapp.net/Sidebar%202.0.0.dmg"
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
