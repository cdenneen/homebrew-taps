cask "vivaldi-big-sur" do
  version "7.5.3735.74"
  sha256 "a21268e4475ba8c83560efa1791e8807fbea4fec809820e5a9874fc41b53dad1"

  url "https://downloads.vivaldi.com/stable/Vivaldi.#{version}.universal.dmg"
  name "Vivaldi for Big Sur"
  desc "Web browser pinned to Vivaldi's macOS 11 Big Sur end-of-life release"
  homepage "https://vivaldi.com/"

  auto_updates false
  depends_on macos: ">= :big_sur"

  app "Vivaldi.app"

  zap trash: [
    "~/Library/Application Support/Vivaldi",
    "~/Library/Caches/com.vivaldi.Vivaldi",
    "~/Library/Caches/Vivaldi",
    "~/Library/HTTPStorages/com.vivaldi.Vivaldi",
    "~/Library/Preferences/com.vivaldi.Vivaldi.plist",
    "~/Library/Saved Application State/com.vivaldi.Vivaldi.savedState",
  ]
end
