class Bb < Formula
  desc "BugBarn"
  homepage "https://github.com/wiebe-xyz/bugbarn"
  version "0.236.223"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://webwiebe.nl/brew/bb-darwin-amd64-0.236.223.tar.gz"
      sha256 "f16b8a5708fee7604cd9543432f956a1bfa5743244d9860701b2062a80539376"
    elsif Hardware::CPU.arm?
      url "https://webwiebe.nl/brew/bb-darwin-arm64-0.236.223.tar.gz"
      sha256 "98d85590fbee2e4ffd364018adf7c97aab564401a8aadbb06de4303611493f0d"
    end
  end

  def install
    bin.install "bb"
  end
end
