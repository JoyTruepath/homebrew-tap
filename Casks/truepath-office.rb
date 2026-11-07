cask "truepath-office" do
  version "1.0.24"
  sha256 "f16665f6dbd78d7cb84cd6bb91911c7966ac22a74506fc1d50ade918be975a3c"

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
