# Devnullvoid Pvetui

## How do I install this cask?

First add the tap, then install the cask:

```bash
brew tap devnullvoid/pvetui
brew install --cask pvetui
```

Or, in a `brew bundle` `Brewfile`:

```ruby
tap "devnullvoid/pvetui"
cask "pvetui"
```

## Documentation

`brew help`, `man brew` or check [Homebrew's documentation](https://docs.brew.sh).

## CI

Tap validation runs on Ubuntu 24.04 and Apple Silicon macOS 26. Matrix jobs run
independently, so a failure on one platform does not cancel the other checks.
Homebrew requires glibc 2.39 or newer for Tier 1 Linux support and classifies
Intel macOS as Tier 3; see [Homebrew's support tiers](https://docs.brew.sh/Support-Tiers).
Intel binaries remain in the cask, but Intel macOS is not a required CI runner.
