cask "lockstep" do
  version "0.0.10"
  sha256 "3e33f3346b0b87a6dad4e7ecf77b10d7cfc8b0514349f9f7052d53d6a47f05b8"

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
