class Bb < Formula
  desc "BugBarn"
  homepage "https://github.com/wiebe-xyz/bugbarn"
  version "0.236.192"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://webwiebe.nl/brew/bb-darwin-amd64-0.236.192.tar.gz"
      sha256 "21db9621d2a880cc9fae6200e6cba744e665dbf64028b7f195f380919ecab817"
    elsif Hardware::CPU.arm?
      url "https://webwiebe.nl/brew/bb-darwin-arm64-0.236.192.tar.gz"
      sha256 "4bb9cd84c19b4f7886dd4db2a84abf03709441fc57751de55c58af8a01c3b4be"
    end
  end

  def install
    bin.install "bb"
  end
end
