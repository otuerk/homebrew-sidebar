cask "sidebar" do
  version "2.0.3"
  sha256 "60cdddb9000ceea6e57d7f0029cc90d507534b84a3b16280c1daba5830b4671b"

  url "https://download.sidebarapp.net/Sidebar%202.0.3.dmg"
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
