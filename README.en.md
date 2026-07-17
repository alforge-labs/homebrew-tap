# Alforge Labs Homebrew Tap

[日本語](README.md)

Official [Homebrew](https://brew.sh/) tap for the AlphaForge CLI.

## Install

```bash
brew install alforge-labs/tap/alpha-forge
```

Upgrade:

```bash
brew update && brew upgrade alpha-forge
```

Uninstall:

```bash
brew uninstall alpha-forge
```

## Getting started

The Trial tier needs no sign-up — try it right after installing:

```bash
alpha-forge demo
```

Docs: https://alforgelabs.com/en/docs/

## Supported platforms

| Platform | Supported |
|---|---|
| macOS (Apple Silicon / arm64) | ✅ |
| macOS (Intel / x86_64) | ❌ (same as the [installer script](https://alforgelabs.com/en/install.html)) |
| Windows | ❌ out of scope for this tap (use [install.ps1](https://alforgelabs.com/en/install.html)) |

## License

- This tap (formula, scripts): [Apache-2.0](LICENSE)
- The AlphaForge binary itself: commercial software (EULA shown on first run)
