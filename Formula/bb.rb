class Bb < Formula
  desc "BugBarn"
  homepage "https://github.com/wiebe-xyz/bugbarn"
  version "0.236.261"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://webwiebe.nl/brew/bb-darwin-amd64-0.236.261.tar.gz"
      sha256 "84c1cf705f2f4de566cdca8946904b74ceab5bdff4a2092609547baabf6c51a5"
    elsif Hardware::CPU.arm?
      url "https://webwiebe.nl/brew/bb-darwin-arm64-0.236.261.tar.gz"
      sha256 "cf56a3fb9b9c5dc24588a9d0bf3eaf6462610f9da4c3782833dfbbf0bef2b2c8"
    end
  end

  def install
    bin.install "bb"
  end
end
