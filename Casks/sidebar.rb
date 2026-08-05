cask "sidebar" do
  version "2.2.2"
  sha256 "464c3971299a3ae8ece0bcf8ff1993db190ea6a6e2c16d678c702177209c8e53"

  url "https://download.sidebarapp.net/Sidebar%202.2.2.dmg"
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
