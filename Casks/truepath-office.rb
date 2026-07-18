cask "truepath-office" do
  version "1.0.9"
  sha256 "bd212383a88aa37d10c4dd80b705932fe32325623fa615fc2489aeebcfca70ee"

  url "https://github.com/JoyTruepath/truepath-office-releases/releases/download/v#{version}/TruePath-Office-#{version}.dmg",
      verified: "github.com/JoyTruepath/truepath-office-releases/"
  name "TruePath Office"
  desc "Office suite for Word, Excel, PowerPoint and PDF files"
  homepage "https://joytruepath.com/truepath-office"

  livecheck do
    url :url
    strategy :github_latest
  end

  depends_on macos: ">= :sonoma"

  app "TruePath Office.app"

  zap trash: [
    "~/Library/Application Support/com.joytruepath.office",
    "~/Library/Caches/com.joytruepath.office",
    "~/Library/Preferences/com.joytruepath.office.plist",
    "~/Library/Saved Application State/com.joytruepath.office.savedState",
  ]
end
