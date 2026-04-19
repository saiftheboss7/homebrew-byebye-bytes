cask "byebye-bytes" do
  version "1.0.0"
  sha256 "dbd8d01b9f969bc71f1fdd593f1a0b9a19fd9a96d1a17a405753540b68920790"

  url "https://github.com/saiftheboss7/ByeBye-Bytes/releases/download/v#{version}/ByeBye-Bytes-#{version}.zip",
      verified: "github.com/saiftheboss7/ByeBye-Bytes/"
  name "ByeBye Bytes"
  desc "Drag-and-drop video compressor using Apple Silicon hardware HEVC"
  homepage "https://github.com/saiftheboss7/ByeBye-Bytes"

  livecheck do
    url :url
    strategy :github_latest
  end

  depends_on macos: ">= :sonoma"
  depends_on arch: :arm64

  app "ByeBye Bytes.app"

  zap trash: [
    "~/Library/Preferences/com.byebyebytes.app.plist",
    "~/Library/Caches/com.byebyebytes.app",
    "~/Library/Saved Application State/com.byebyebytes.app.savedState",
  ]

  caveats <<~EOS
    ByeBye Bytes is ad-hoc signed (not Developer ID notarised).
    On first launch macOS Gatekeeper will warn — right-click the app
    in Finder and choose "Open" once to allow it, or approve it under
    System Settings → Privacy & Security.
  EOS
end
