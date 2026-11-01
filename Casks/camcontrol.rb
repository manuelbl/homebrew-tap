cask "camcontrol" do
  version "1.0.0"
  sha256 "33fc9838632fc8d89cd11b88fb430d2e2d4bbe79a326d60b23c798606ee6caeb"

  url "https://github.com/manuelbl/CamControl/releases/download/v#{version}/CamControl-#{version}.dmg"
  name "CamControl"
  desc "Menu bar utility to adjust USB webcam settings and reapply them on connect"
  homepage "https://github.com/manuelbl/CamControl"

  livecheck do
    url :url
    strategy :github_latest
  end

  depends_on macos: :sequoia

  app "CamControl.app"

  zap trash: [
    "~/Library/Application Scripts/net.codecrete.CamControl",
    "~/Library/Containers/net.codecrete.CamControl",
  ]
end
