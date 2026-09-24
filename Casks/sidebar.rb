cask "sidebar" do
  version "2.2.6"
  sha256 "329bd8dc0c350249bfe47b52b1c7923c0ebb7e490f25809e3dc72bd200382e75"

  url "https://download.sidebarapp.net/Sidebar%202.2.6.dmg"
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
