cask "truepath-office" do
  version "1.0.21"
  sha256 "2a4c89a98ab920e1aaea49e436732a92263726d8c0e29be90a1dd5a6741dff5d"

  url "https://github.com/JoyTruepath/truepath-office-releases/releases/download/v#{version}/TruePath-Office-#{version}.dmg",
      verified: "github.com/JoyTruepath/truepath-office-releases/"
  name "TruePath Office"
  desc "Office suite for Word, Excel, PowerPoint and PDF files"
  homepage "https://joytruepath.com/truepath-office"

  livecheck do
    url :url
    strategy :github_latest
  end

  depends_on macos: ">= :ventura"

  app "TruePath Office.app"

  zap trash: [
    "~/Library/Application Support/com.joytruepath.office",
    "~/Library/Caches/com.joytruepath.office",
    "~/Library/Preferences/com.joytruepath.office.plist",
    "~/Library/Saved Application State/com.joytruepath.office.savedState",
  ]
end
