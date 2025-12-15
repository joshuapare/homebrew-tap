cask "lockstep" do
  version "0.0.12"
  sha256 "863e591920211cf2393e6aa1a1162594f6cf8b0ea72e9e96be2af8bc456fb612"

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
