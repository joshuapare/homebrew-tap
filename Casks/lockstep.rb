cask "lockstep" do
  version "0.0.11"
  sha256 "72db12cb60b01ecae159ed96390d1e14cc923e05b0379eef4e0d76ed8dcf8fff"

  url "https://github.com/joshuapare/homebrew-tap/releases/download/lockstep-v#{version}/Lockstep-#{version}-macos-universal.dmg"
  name "Lockstep"
  desc "Secure credential management for developers and teams"
  homepage "https://github.com/joshuapare/lockstep"

  depends_on macos: ">= :catalina"
  depends_on formula: "joshuapare/tap/lockstep"

  app "Lockstep.app"

  zap trash: [
    "~/Library/Application Support/Lockstep",
    "~/Library/Preferences/com.joshuapare.lockstep.plist",
  ]
end
