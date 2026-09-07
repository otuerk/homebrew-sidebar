cask "sidebar" do
  version "2.2.4"
  sha256 "31ccf1eefe8349537c36ae8a259f6804a6926ece7b5cf00b8fbc574a95ca768f"

  url "https://download.sidebarapp.net/Sidebar%202.2.4.dmg"
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
