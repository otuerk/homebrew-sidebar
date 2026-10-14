cask "sidebar" do
  version "2.2.8"
  sha256 "ae2d5b7d75112827ff40a6a2b4586792f4e70e71ccabcf21fa67b97bad9d4263"

  url "https://download.sidebarapp.net/Sidebar%202.2.8.dmg"
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
