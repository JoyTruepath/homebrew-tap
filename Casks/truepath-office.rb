cask "truepath-office" do
  version "1.0.22"
  sha256 "dd90a0af24191946f44355067c0904c9a8937c074de527da0e7d800f4fd832c8"

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
