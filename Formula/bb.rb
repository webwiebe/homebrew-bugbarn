class Bb < Formula
  desc "CLI client for BugBarn error tracking"
  homepage "https://github.com/wiebe-xyz/bugbarn"
  version "0.236.73"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://webwiebe.nl/brew/bb-darwin-amd64-0.236.73.tar.gz"
      sha256 "08fcbf7f0ac5b1d798362750ca3163fd9275c8010a16cdc02e22e3c5ed9e4b96"
    elsif Hardware::CPU.arm?
      url "https://webwiebe.nl/brew/bb-darwin-arm64-0.236.73.tar.gz"
      sha256 "bf8526780a892c8f22a477434a631c4dc2dc67a106346de314f62f19958945c1"
    end
  end

  def install
    bin.install "bb"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/bb version")
  end
end
