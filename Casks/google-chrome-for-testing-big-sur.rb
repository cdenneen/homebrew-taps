cask "google-chrome-for-testing-big-sur" do
  version "138.0.7204.183"
  sha256 "5618b3d62038f0cfc964de8e6d32c8632273758730431c17ca72d3f03e7ddca2"

  url "https://storage.googleapis.com/chrome-for-testing-public/#{version}/mac-x64/chrome-mac-x64.zip"
  name "Google Chrome for Testing"
  desc "Chrome browser build without auto-update, pinned for macOS Big Sur"
  homepage "https://googlechromelabs.github.io/chrome-for-testing/"

  auto_updates false
  depends_on arch: :intel
  depends_on macos: ">= :big_sur"

  app "chrome-mac-x64/Google Chrome for Testing.app"
end
