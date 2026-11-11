class Bugbarn < Formula
  desc "BugBarn"
  homepage "https://github.com/wiebe-xyz/bugbarn"
  version "0.236.348"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://webwiebe.nl/brew/bugbarn-darwin-amd64-0.236.348.tar.gz"
      sha256 "2e8f1a45f7de337f038ff6008f5c019da152bd0faec23e34e6368f3ccd74b856"
    elsif Hardware::CPU.arm?
      url "https://webwiebe.nl/brew/bugbarn-darwin-arm64-0.236.348.tar.gz"
      sha256 "e08c71f42515ed10ba6d431e272b97c6c6564e07bad5459a1d67e222c157b75c"
    end
  end

  def install
    bin.install "bugbarn"
  end
end
