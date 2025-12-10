cask "lockstep-desktop" do
  version "0.0.3"
  sha256 "d12cbdc2acc954facc21f58f14b5b15657a6bf54cc065779946133a53258545a"

  url "https://github.com/joshuapare/lockstep/releases/download/v#{version}/Lockstep-#{version}-macos-universal.dmg"
  name "Lockstep"
  desc "Secure credential management for developers and teams"
  homepage "https://github.com/joshuapare/lockstep"

  depends_on macos: ">= :catalina"
  app "Lockstep.app"

  zap trash: [
    "~/Library/Application Support/Lockstep",
    "~/Library/Preferences/com.joshuapare.lockstep.plist",
  ]
end
