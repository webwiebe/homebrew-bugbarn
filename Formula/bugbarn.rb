class Bugbarn < Formula
  desc "BugBarn"
  homepage "https://github.com/wiebe-xyz/bugbarn"
  version "0.236.380"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://webwiebe.nl/brew/bugbarn-darwin-amd64-0.236.380.tar.gz"
      sha256 "040b8441c2979b2e9f74b5d701b29625bdef8fdee03bd7f6c532ba114f45cd4d"
    elsif Hardware::CPU.arm?
      url "https://webwiebe.nl/brew/bugbarn-darwin-arm64-0.236.380.tar.gz"
      sha256 "18ff88f648d2b5f84fb3299dac6ae1881d95c33b1b1c2685813d0a1f4059c84b"
    end
  end

  def install
    bin.install "bugbarn"
  end
end
