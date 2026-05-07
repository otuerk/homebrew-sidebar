cask "sidebar" do
  version "2.0.6"
  sha256 "7dcc49c6441ae87e7e3880b8d367e4ad90d0058593e2bcc22574cafc23b740d5"

  url "https://download.sidebarapp.net/Sidebar%202.0.6.dmg"
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
