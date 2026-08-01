cask "whatbattery" do
  version "1.4.1"
  sha256 "bc205a7b89731e38a8d56e1a96598dc9057102ea473c8fe88e5938f60be0b4b0"

  url "https://github.com/darrylmorley/whatbattery/releases/download/v#{version}/WhatBattery.zip",
      verified: "github.com/darrylmorley/whatbattery/"
  name "WhatBattery"
  desc "Menu bar app for battery health and live power"
  homepage "https://github.com/darrylmorley/whatbattery"

  livecheck do
    url :url
    strategy :github_latest
  end

  depends_on macos: :sonoma

  app "WhatBattery.app"
  binary "#{appdir}/WhatBattery.app/Contents/Helpers/whatbattery"

  zap trash: [
    "~/Library/Application Scripts/M4RUJ7W6MP.app.whatbattery.whatbattery",
    "~/Library/Application Scripts/app.whatbattery.whatbattery.widget",
    "~/Library/Application Support/WhatBattery",
    "~/Library/Caches/app.whatbattery.whatbattery",
    "~/Library/Containers/app.whatbattery.whatbattery.widget",
    "~/Library/Group Containers/M4RUJ7W6MP.app.whatbattery.whatbattery",
    "~/Library/HTTPStorages/app.whatbattery.whatbattery",
    "~/Library/Preferences/app.whatbattery.whatbattery.plist",
  ]
end
