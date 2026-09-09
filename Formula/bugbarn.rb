class Bugbarn < Formula
  desc "BugBarn"
  homepage "https://github.com/wiebe-xyz/bugbarn"
  version "0.236.182"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://webwiebe.nl/brew/bugbarn-darwin-amd64-0.236.182.tar.gz"
      sha256 "d6b3995740f7e923165cbc4f9b5ec6bc0c0a534196d60e781b76f4d00c918e86"
    elsif Hardware::CPU.arm?
      url "https://webwiebe.nl/brew/bugbarn-darwin-arm64-0.236.182.tar.gz"
      sha256 "1e0080f1f9c93bf3c3a731e1a5ea293b961c0aa15d3b4cb575c6518ebced94d4"
    end
  end

  def install
    bin.install "bugbarn"
  end
end
