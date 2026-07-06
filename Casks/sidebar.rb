cask "sidebar" do
  version "2.1.1"
  sha256 "0036d5d47bed6965cc04379c396539a43d725d802124cf04c314dfe3de8012f5"

  url "https://download.sidebarapp.net/Sidebar%202.1.1.dmg"
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
