cask "sidebar" do
  version "2.2.9"
  sha256 "486f3ffd1cc5b3a7fa33fd2f1c123e19349abff49677453d370bb0c6f6dbe440"

  url "https://download.sidebarapp.net/Sidebar%202.2.9.dmg"
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
