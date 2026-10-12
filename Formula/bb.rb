class Bb < Formula
  desc "BugBarn"
  homepage "https://github.com/wiebe-xyz/bugbarn"
  version "0.236.224"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://webwiebe.nl/brew/bb-darwin-amd64-0.236.224.tar.gz"
      sha256 "babfbbd47861a0968ce2ef1c84f1a026d0b4d31ba9355fd34b9a0fde94482d26"
    elsif Hardware::CPU.arm?
      url "https://webwiebe.nl/brew/bb-darwin-arm64-0.236.224.tar.gz"
      sha256 "2fd5b2c80c6d6aadec64ccc7d5207b7cc4fd01c49e5cfc35f018794a6d67c532"
    end
  end

  def install
    bin.install "bb"
  end
end
