cask "sidebar" do
  version "2.2.3"
  sha256 "1ef5d4e44ba6c3dbcc74191d189a6723296f02be531e4c07b10b6edcaf25045e"

  url "https://download.sidebarapp.net/Sidebar%202.2.3.dmg"
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
