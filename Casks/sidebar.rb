cask "sidebar" do
  version "2.0.8"
  sha256 "96ef4d6e2abf8ff243159e82890f8031a0aeb2deb0bb9496369a599384f44981"

  url "https://download.sidebarapp.net/Sidebar%202.0.8.dmg"
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
