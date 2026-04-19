# homebrew-byebye-bytes

Homebrew tap for [ByeBye Bytes](https://github.com/saiftheboss7/ByeBye-Bytes) — a native macOS drag-and-drop video compressor for Apple Silicon.

## Install

```bash
brew install --cask saiftheboss7/byebye-bytes/byebye-bytes
xattr -dr com.apple.quarantine "/Applications/ByeBye Bytes.app"
```

The second line clears macOS's quarantine attribute so Gatekeeper doesn't block the ad-hoc-signed app on first launch. Alternatively, pass `--no-quarantine` to skip it at install time:

```bash
brew install --cask --no-quarantine saiftheboss7/byebye-bytes/byebye-bytes
```

## Upgrade

```bash
brew update
brew upgrade --cask byebye-bytes
xattr -dr com.apple.quarantine "/Applications/ByeBye Bytes.app"
```

## Uninstall

```bash
brew uninstall --cask byebye-bytes
# remove persisted preferences as well:
brew uninstall --zap --cask byebye-bytes
```

## Why the `xattr` step?

The `.app` is ad-hoc signed, not Developer ID notarised. Homebrew flags downloads as quarantined by default; the command above removes that attribute so the app launches cleanly. If you'd rather trust Gatekeeper's prompt, skip the `xattr` line and right-click → **Open** once in Finder instead.

## License

MIT — same as the app.
