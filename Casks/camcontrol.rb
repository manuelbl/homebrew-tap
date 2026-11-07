cask "camcontrol" do
  version "1.0.1"
  sha256 "ba88a770d9534225419b2a69d254157daa6a7711d7a421971ec864b374e6b306"

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
