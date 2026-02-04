cask "sidebar" do
  version "1.9.6"
  sha256 "0c6a6e847977d2b8ee497eecbd459f58684909992696b634488659b87b62e21c"

  url "https://download.sidebarapp.net/Sidebar%201.9.6.dmg"
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
