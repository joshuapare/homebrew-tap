cask "lockstep" do
  version "0.0.9"
  sha256 "2c2db23ea794bf5c14033289cf65b0f772b5b87811caf452a85601a445e458e9"

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
