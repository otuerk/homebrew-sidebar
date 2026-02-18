cask "sidebar" do
  version "1.9.9"
  sha256 "c4b149f6adb760354db24732483f3b3b456c61095bbf1ce1c5d53f30ec45b443"

  url "https://download.sidebarapp.net/Sidebar%201.9.9.dmg"
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
