cask "whatbattery" do
  version "1.6.7"
  sha256 "4f09a6b74402647444cc731658034e6d808695dfd8e9f145764617ae4a6e7c75"

  url "https://github.com/darrylmorley/whatbattery/releases/download/v#{version}/WhatBattery.zip"
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
