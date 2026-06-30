class Bb < Formula
  desc "CLI client for BugBarn error tracking"
  homepage "https://github.com/wiebe-xyz/bugbarn"
  version "0.236.112"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://webwiebe.nl/brew/bb-darwin-amd64-0.236.112.tar.gz"
      sha256 "b494e44b6b55052db32128b3ff5742b7592560352419dfd33a45369d3d4edff6"
    elsif Hardware::CPU.arm?
      url "https://webwiebe.nl/brew/bb-darwin-arm64-0.236.112.tar.gz"
      sha256 "eaf30aeba497e1e0561d975602fb1b7a48814a5f2135453e026ee488b6566995"
    end
  end

  def install
    bin.install "bb"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/bb version")
  end
end
