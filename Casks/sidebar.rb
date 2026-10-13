cask "sidebar" do
  version "2.2.7"
  sha256 "a81ea4b3cc3b8f45abbfdfa123a3b03c4d39ee824b25661398b87efb7e614096"

  url "https://download.sidebarapp.net/Sidebar%202.2.7.dmg"
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
