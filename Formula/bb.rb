class Bb < Formula
  desc "BugBarn"
  homepage "https://github.com/wiebe-xyz/bugbarn"
  version "0.236.263"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://webwiebe.nl/brew/bb-darwin-amd64-0.236.263.tar.gz"
      sha256 "d5bc934890f386e6a1f3b9790fff485f43b2ce8212fcd40030e14b5fdd7cff00"
    elsif Hardware::CPU.arm?
      url "https://webwiebe.nl/brew/bb-darwin-arm64-0.236.263.tar.gz"
      sha256 "81c53aeb94a1775d296e8c7fb206b942bfedcd910730ab106385a1c15a761ffb"
    end
  end

  def install
    bin.install "bb"
  end
end
