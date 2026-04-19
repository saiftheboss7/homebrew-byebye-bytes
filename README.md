# homebrew-byebye-bytes

Homebrew tap for [ByeBye Bytes](https://github.com/saiftheboss7/ByeBye-Bytes) — a native macOS drag-and-drop video compressor for Apple Silicon.

## Install

```bash
brew tap saiftheboss7/byebye-bytes
brew install --cask byebye-bytes
```

Or in one shot:

```bash
brew install --cask saiftheboss7/byebye-bytes/byebye-bytes
```

## Upgrade

```bash
brew update
brew upgrade --cask byebye-bytes
```

## Uninstall

```bash
brew uninstall --cask byebye-bytes
# remove persisted preferences as well:
brew uninstall --zap --cask byebye-bytes
```

## First launch

The `.app` ships ad-hoc signed (not Developer ID notarised), so macOS Gatekeeper will warn on first launch. Right-click the app in Finder → **Open** once to allow it, or approve it under **System Settings → Privacy & Security**.

## License

MIT — same as the app.
