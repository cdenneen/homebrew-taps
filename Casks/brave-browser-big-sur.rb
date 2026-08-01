cask "brave-browser-big-sur" do
  version "1.80.125"
  sha256 "d3204f0527fb57f739e8099361d66eca3fc3f8debb59e1e90f9523b8211f1e3b"

  url "https://updates-cdn.bravesoftware.com/sparkle/Brave-Browser/stable/#{version.major_minor_patch.sub(".", "")}/Brave-Browser-x64.dmg",
      verified: "updates-cdn.bravesoftware.com/sparkle/Brave-Browser/"
  name "Brave for Big Sur"
  desc "Web browser pinned to Brave's last macOS 11 Big Sur release"
  homepage "https://brave.com/"

  auto_updates false
  depends_on arch: :intel
  depends_on macos: ">= :big_sur"

  app "Brave Browser.app"

  zap trash: [
    "~/Library/Application Support/BraveSoftware/Brave-Browser",
    "~/Library/Caches/BraveSoftware/Brave-Browser",
    "~/Library/Caches/com.brave.Browser",
    "~/Library/HTTPStorages/com.brave.Browser",
    "~/Library/Preferences/com.brave.Browser.plist",
    "~/Library/Saved Application State/com.brave.Browser.savedState",
  ],
      rmdir: [
        "~/Library/Application Support/BraveSoftware",
        "~/Library/Caches/BraveSoftware",
      ]
end
