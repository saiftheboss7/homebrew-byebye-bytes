cask "byebye-bytes" do
  version "1.0.1"
  sha256 "6aa6f1b061e51ab77fdbc2af0d8ce3a593bbabfa3c6587ab48a0085a42746b19"

  url "https://github.com/saiftheboss7/ByeBye-Bytes/releases/download/v#{version}/ByeBye-Bytes-#{version}.zip"
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
    ByeBye Bytes is ad-hoc signed (not Developer ID notarised), so
    macOS Gatekeeper will block the first launch. Clear the quarantine
    attribute with:

      xattr -dr com.apple.quarantine "/Applications/ByeBye Bytes.app"

    Or install the cask with --no-quarantine next time:

      brew install --cask --no-quarantine saiftheboss7/byebye-bytes/byebye-bytes
  EOS
end
