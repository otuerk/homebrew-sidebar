cask "sidebar" do
  version "1.9.5"
  sha256 "867d799f01ea08acae4fbcc9b3754181c56b5530299cbcf7d1da1c1b084fdd98"

  url "https://download.sidebarapp.net/Sidebar%201.9.5.dmg"
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
