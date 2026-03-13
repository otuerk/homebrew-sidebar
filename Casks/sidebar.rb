cask "sidebar" do
  version "2.0.0"
  sha256 "17fcda6e59b90490c7da48fc8ba3b0f97173d762fe1fc5991dbbabbe26118aaf"

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
