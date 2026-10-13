class Bb < Formula
  desc "BugBarn"
  homepage "https://github.com/wiebe-xyz/bugbarn"
  version "0.236.244"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://webwiebe.nl/brew/bb-darwin-amd64-0.236.244.tar.gz"
      sha256 "d939762242c794391ac15580d12a862d7c4e594f6fc68cc34cb2d0b35bbc139b"
    elsif Hardware::CPU.arm?
      url "https://webwiebe.nl/brew/bb-darwin-arm64-0.236.244.tar.gz"
      sha256 "50675d3936827aa526e86cc880010013b96a091fcf4b287cfce1552ec01e673f"
    end
  end

  def install
    bin.install "bb"
  end
end
