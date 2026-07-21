cask "sidebar" do
  version "2.2.0"
  sha256 "837436402ce4ff63d60caf2bed08bfade0911c14a0905b91e144feed0a7d7f58"

  url "https://download.sidebarapp.net/Sidebar%202.2.0.dmg"
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
