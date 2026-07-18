cask "framevia-studio" do
  version "2.0.2"
  sha256 "60890a2624ae39796e705524eca486c344cfbc17c0b7661cf5768869ea09c6f0"

  url "https://github.com/JoyTruepath/framevia-studio-releases/releases/download/v#{version}/Framevia-Studio-#{version}.dmg",
      verified: "github.com/JoyTruepath/framevia-studio-releases/"
  name "Framevia Studio"
  desc "Native macOS 2D frame-by-frame animation and drawing app"
  homepage "https://joytruepath.com/framevia-studio"

  livecheck do
    url :url
    strategy :github_latest
  end

  depends_on macos: ">= :ventura"

  app "Framevia Studio.app"

  zap trash: [
    "~/Library/Application Support/com.joytruepath.frameviastudio",
    "~/Library/Caches/com.joytruepath.frameviastudio",
    "~/Library/Preferences/com.joytruepath.frameviastudio.plist",
    "~/Library/Saved Application State/com.joytruepath.frameviastudio.savedState",
  ]
end
