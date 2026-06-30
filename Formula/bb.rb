class Bb < Formula
  desc "BugBarn"
  homepage "https://github.com/wiebe-xyz/bugbarn"
  version "0.236.113"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://webwiebe.nl/brew/bb-darwin-amd64-0.236.113.tar.gz"
      sha256 "aff64e7df2986a2bf7c99394b599b3ac77ac18cb0111040d5befa1d15b2eac6e"
    elsif Hardware::CPU.arm?
      url "https://webwiebe.nl/brew/bb-darwin-arm64-0.236.113.tar.gz"
      sha256 "4d79f6423cb49dac5aac923903a46934e65317043bab4415f94166d1a6f059e2"
    end
  end

  def install
    bin.install "bb"
  end
end
