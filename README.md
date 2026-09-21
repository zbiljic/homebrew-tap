# Homebrew Tap

Personal Homebrew tap for my apps and command-line tools.

## Packages

| Package | Description | Install |
| --- | --- | --- |
| [Katabro](https://github.com/zbiljic/Katabro) | macOS browser picker with a bundled CLI | `brew install --cask zbiljic/tap/katabro` |

Katabro requires macOS 14 or later.

> Katabro's repository is currently private. Installation requires its release
> assets to be publicly accessible.

## Tap trust

On [Homebrew 6.0 and newer](https://docs.brew.sh/Tap-Trust), installing with a
fully qualified name, as shown above, trusts only that package.

If you prefer to add the tap first:

```sh
brew tap zbiljic/tap
brew trust --cask zbiljic/tap/katabro
brew install --cask katabro
```

For formulae, use `brew trust --formula` instead of `brew trust --cask`.

You can also trust the entire tap with `brew trust zbiljic/tap`. This covers
all current and future formulae, casks, and commands in this repository.

## Katabro notes

### Signing and first launch

Initial releases are ad hoc signed and not notarized by Apple. Homebrew's tap
trust and macOS Gatekeeper are separate checks; trusting the cask does not
approve the app in macOS.

If macOS blocks the first launch and you trust the downloaded release:

1. Try to open Katabro once.
2. Open **System Settings > Privacy & Security**.
3. Scroll to **Security**, choose **Open Anyway**, and confirm.

See Apple's guide to
[opening an app from an unknown developer](https://support.apple.com/guide/mac-help/open-a-mac-app-from-an-unknown-developer-mh40616/mac).

### CLI and settings sync

The cask installs both `Katabro.app` and the `katabro` command-line helper.

Local settings and folder sync work. iCloud sync is unavailable in this build.
