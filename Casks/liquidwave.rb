cask "liquidwave" do
  version "1.6.0"
  sha256 "82b60220b0cce55ca858e23fb04785afb371d218c140a80d6610981fd5a51129"

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
