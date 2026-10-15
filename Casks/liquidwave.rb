cask "liquidwave" do
  version \"1.2.0\"
  sha256 \"4e374b65102cfbce8c97d517ecd5a4243684e3c13ceb6fe336d74b5e2f4f5475\"

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
