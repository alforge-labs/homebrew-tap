# Alforge Labs Homebrew Tap

[English](README.en.md)

AlphaForge CLI の公式 [Homebrew](https://brew.sh/) tap です。

## インストール

```bash
brew install alforge-labs/tap/alpha-forge
```

アップデート:

```bash
brew update && brew upgrade alpha-forge
```

アンインストール:

```bash
brew uninstall alpha-forge
```

## はじめかた

Trial プランは登録不要で、インストール直後に 1 コマンドで試せます:

```bash
alpha-forge demo
```

ドキュメント: https://alforgelabs.com/ja/docs/

## 対応プラットフォーム

| プラットフォーム | 対応 |
|---|---|
| macOS (Apple Silicon / arm64) | ✅ |
| macOS (Intel / x86_64) | ❌（[インストーラスクリプト](https://alforgelabs.com/ja/install.html)も同様に未対応） |
| Windows | ❌ tap 対象外（[install.ps1](https://alforgelabs.com/ja/install.html) を使用） |

## ライセンス

- この tap（formula・スクリプト）: [Apache-2.0](LICENSE)
- AlphaForge バイナリ本体: 商用ソフトウェア（EULA は初回起動時に表示）
