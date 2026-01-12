cask "sidebar" do
  version "0.0.0"
  sha256 "no_check"

  url "https://download.sidebarapp.net/Sidebar.dmg"
  name "Sidebar"
  desc "Sidebar App"
  homepage "https://sidebarapp.net/"

  livecheck do
    skip "Version control is handled by the build script"
  end

  app "Sidebar.app"

  zap trash: [
    "~/Library/Application Support/Sidebar",
    "~/Library/Preferences/net.sidebarapp.Sidebar.plist",
  ]
end
