cask "sidebar" do
  version "2.0.4"
  sha256 "ae3a9497bd9ccd1dba83770c807acadffa57d86f2e7222bd9cb1bcf641bbd3c3"

  url "https://download.sidebarapp.net/Sidebar%202.0.4.dmg"
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
