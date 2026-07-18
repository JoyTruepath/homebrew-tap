# Joy Truepath Homebrew Tap

Install [Joy Truepath](https://joytruepath.com) macOS apps with [Homebrew](https://brew.sh).

## Install

```sh
brew install --cask joytruepath/tap/truepath-office
brew install --cask joytruepath/tap/truepath-pdf
brew install --cask joytruepath/tap/truepath-recorder
brew install --cask joytruepath/tap/framevia-studio
```

The first install auto-adds the tap. To add it explicitly:

```sh
brew tap joytruepath/tap
brew install --cask truepath-office
```

## Apps

| Cask | App | What it is |
|------|-----|------------|
| `truepath-office` | TruePath Office | Native macOS office suite — open & edit Word, Excel, PowerPoint and PDF files |
| `truepath-pdf` | TruePath PDF | Native macOS PDF editor, viewer and converter |
| `truepath-recorder` | TruePath Recorder | Native macOS screen and audio recorder |
| `framevia-studio` | Framevia Studio | Native macOS 2D frame-by-frame animation and drawing app |

All apps are one-time purchase, no subscription, and run entirely on your Mac.

## Update / uninstall

```sh
brew upgrade --cask truepath-office     # update
brew uninstall --cask truepath-office   # remove (add --zap to also delete app data)
```
