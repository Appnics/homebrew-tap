cask "liquidwave" do
  version "1.3.0"
  sha256 "55ed622516cb192202e96eff38a6c44522625a0af90ebc53314c9b4b858b7935"

  url "https://github.com/Appnics/liquidwave-releases/releases/download/v#{version}/LIQUIDWAVE-#{version}.dmg",
      verified: "github.com/Appnics/liquidwave-releases/"
  name "LIQUIDWAVE"
  desc "Music visualizer for system audio and the microphone"
  homepage "https://liquidwave.app/"

  livecheck do
    url "https://liquidwave.app/appcast.xml"
    strategy :sparkle, &:short_version
  end

  auto_updates true
  depends_on macos: :sonoma

  app "LIQUIDWAVE.app"

  zap trash: [
    "~/Library/Application Support/LIQUIDWAVE",
    "~/Library/Caches/com.appnics.liquidwave",
    "~/Library/HTTPStorages/com.appnics.liquidwave",
    "~/Library/Preferences/com.appnics.liquidwave.plist",
    "~/Library/Saved Application State/com.appnics.liquidwave.savedState",
  ]
end
