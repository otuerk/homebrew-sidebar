cask "sidebar" do
  version "2.1.2"
  sha256 "6a8068ce96cfbb08da9e6d6991ecf22de64479668d0b327aff844d58546cfe47"

  url "https://download.sidebarapp.net/Sidebar%202.1.2.dmg"
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
