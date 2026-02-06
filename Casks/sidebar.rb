cask "sidebar" do
  version "1.9.8"
  sha256 "f111ce11163a81c6f312b9d496988105dece17bef036283bd1669b7d281fc466"

  url "https://download.sidebarapp.net/Sidebar%201.9.8.dmg"
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
