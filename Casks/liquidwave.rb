cask "liquidwave" do
  version "1.5.0"
  sha256 "ffa421a43281d7a2378830580c3c2e5d46f11ab07465b0505c4424e78f5cbc4f"

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
