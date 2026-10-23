cask "liquidwave" do
  version "1.4.1"
  sha256 "1edf943609339269793ab88808db1b809962eac9e32194fa0e628009f7db7a63"

  url "https://liquidwave.app/downloads/LIQUIDWAVE-#{version}.dmg?src=homebrew"
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
