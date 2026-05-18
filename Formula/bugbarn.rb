class Bugbarn < Formula
  desc "Self-hosted error tracking server"
  homepage "https://github.com/wiebe-xyz/bugbarn"
  version "0.234.2"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://webwiebe.nl/brew/bugbarn-darwin-amd64-0.234.2.tar.gz"
      sha256 "b2761e502d506e63be29e272979902c2cc81bf3448ee25b2c675cecda5fd98ae"
    elsif Hardware::CPU.arm?
      url "https://webwiebe.nl/brew/bugbarn-darwin-arm64-0.234.2.tar.gz"
      sha256 "5aba48a3788bb3746443c6793b8a924a7ad4fa9af2e329ed42bd02a4801bbf66"
    end
  end

  def install
    bin.install "bugbarn"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/bugbarn version")
  end
end
