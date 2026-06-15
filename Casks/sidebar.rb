cask "sidebar" do
  version "2.0.9"
  sha256 "d38043a45eb4e367becab17f67bf4518ae455c6be205a121ad7b9ed1d83e13c2"

  url "https://download.sidebarapp.net/Sidebar%202.0.9.dmg"
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
