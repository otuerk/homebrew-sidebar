cask "sidebar" do
  version "2.0.5"
  sha256 "919ba139988892d973b9644ffe8c3243c08121f138a38fea33e6ba537bf91c5e"

  url "https://download.sidebarapp.net/Sidebar%202.0.5.dmg"
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
