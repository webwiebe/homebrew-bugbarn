class Bb < Formula
  desc "BugBarn"
  homepage "https://github.com/wiebe-xyz/bugbarn"
  version "0.236.270"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://webwiebe.nl/brew/bb-darwin-amd64-0.236.270.tar.gz"
      sha256 "e556ad9405193069844ec5ae52a89ff1b2ba76062ccff185d92e2b4481773539"
    elsif Hardware::CPU.arm?
      url "https://webwiebe.nl/brew/bb-darwin-arm64-0.236.270.tar.gz"
      sha256 "67882f38da287f61ce8ea7ea363e7215a49fa7058f7feaa6753d34d0b3ba2451"
    end
  end

  def install
    bin.install "bb"
  end
end
