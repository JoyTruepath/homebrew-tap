cask "truepath-pdf" do
  version "1.0.3"
  sha256 "508645777240e2d0ffb7df9753b12c7b3c7469e18be1a3b04137b4ed4b453807"

  url "https://github.com/JoyTruepath/truepath-pdf-releases/releases/download/v#{version}/TruePath-PDF-#{version}.dmg",
      verified: "github.com/JoyTruepath/truepath-pdf-releases/"
  name "TruePath PDF"
  desc "PDF editor, viewer and converter"
  homepage "https://joytruepath.com/truepath-pdf"

  livecheck do
    url :url
    strategy :github_latest
  end

  depends_on macos: ">= :monterey"

  app "TruePath PDF.app"

  zap trash: [
    "~/Library/Application Support/com.joytruepath.truepathpdf",
    "~/Library/Caches/com.joytruepath.truepathpdf",
    "~/Library/Preferences/com.joytruepath.truepathpdf.plist",
    "~/Library/Saved Application State/com.joytruepath.truepathpdf.savedState",
  ]
end
