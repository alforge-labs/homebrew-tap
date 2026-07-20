# AlphaForge CLI の Homebrew formula。
# Release バイナリ（alforge-labs.github.io Releases）をダウンロードして配置する。
# formula 自体は Apache-2.0、配布物の AlphaForge バイナリは商用（EULA は初回起動時に表示）。
class AlphaForge < Formula
  desc "AI-agent-native backtesting engine CLI for trading strategies"
  homepage "https://alforgelabs.com"
  url "https://github.com/alforge-labs/alforge-labs.github.io/releases/download/v0.18.1/alpha-forge-macos-arm64.tar.gz"
  # アセット名の "arm64" を brew が版数と誤検出するため明示指定が必須（bump workflow が更新する）
  version "0.18.1"
  sha256 "96b2d0c58251c5471640b8c62f464fd853259a88b794cb0200be066735255229"
  license :cannot_represent

  livecheck do
    url :url
    strategy :github_latest
  end

  depends_on arch: :arm64
  depends_on :macos

  def install
    # tar.gz のルートは forge.dist/ 単一ディレクトリ。Homebrew は単一ルート
    # ディレクトリを自動で strip することがあるため両ケースに対応する。
    dist = (buildpath/"forge.dist").exist? ? (buildpath/"forge.dist") : buildpath
    libexec.install dist.children
    bin.install_symlink libexec/"forge" => "alpha-forge"
  end

  def caveats
    <<~EOS
      AlphaForge has a free Trial tier — no sign-up needed. Quick start:
        alpha-forge demo
      Docs: https://alforgelabs.com/en/docs/
      The AlphaForge binary is commercial software; the EULA is shown on first run.
    EOS
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/alpha-forge --version")
  end
end
