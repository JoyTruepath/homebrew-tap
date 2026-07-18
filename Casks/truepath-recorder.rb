cask "truepath-recorder" do
  version "1.3.1"
  sha256 "85e8ffebd601a08fd36b004547c5709989523b9985613274b4bce169e94f2add"

  url "https://github.com/JoyTruepath/truepath-recorder-releases/releases/download/v#{version}/TruePath-Recorder-#{version}.dmg",
      verified: "github.com/JoyTruepath/truepath-recorder-releases/"
  name "TruePath Recorder"
  desc "Native macOS screen and audio recorder"
  homepage "https://joytruepath.com/recorder"

  livecheck do
    url :url
    strategy :github_latest
  end

  depends_on macos: ">= :sonoma"

  app "TruePath Recorder.app"

  zap trash: [
    "~/Library/Application Support/com.joytruepath.recorder",
    "~/Library/Caches/com.joytruepath.recorder",
    "~/Library/Preferences/com.joytruepath.recorder.plist",
    "~/Library/Saved Application State/com.joytruepath.recorder.savedState",
  ]
end
