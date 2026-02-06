cask "sidebar" do
  version "1.9.7"
  sha256 "1c1e41d452fd6af68538533e5d462d916057c9dc0493ab4886d29257c5fd6f2b"

  url "https://download.sidebarapp.net/Sidebar%201.9.7.dmg"
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
