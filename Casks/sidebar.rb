cask "sidebar" do
  version "2.0.2"
  sha256 "db9d1c44cbaaf3f50867fcae96f0f23b19a60fdaebad5d296b6f0b4e5ba2eb12"

  url "https://download.sidebarapp.net/Sidebar%202.0.2.dmg"
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
