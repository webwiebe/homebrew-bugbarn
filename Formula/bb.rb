class Bb < Formula
  desc "BugBarn"
  homepage "https://github.com/wiebe-xyz/bugbarn"
  version "0.236.134"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://webwiebe.nl/brew/bb-darwin-amd64-0.236.134.tar.gz"
      sha256 "3d7bd2c0b29accbdcb5146b50b227092dd4a4441fa7d676bc1c586a036ea8b3a"
    elsif Hardware::CPU.arm?
      url "https://webwiebe.nl/brew/bb-darwin-arm64-0.236.134.tar.gz"
      sha256 "986f7b9be8cd9a1f6107ea23ff6ff71ade5cd1be2cc34df15fb6d1a08205c4b3"
    end
  end

  def install
    bin.install "bb"
  end
end
