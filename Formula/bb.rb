class Bb < Formula
  desc "BugBarn"
  homepage "https://github.com/wiebe-xyz/bugbarn"
  version "0.236.390"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://webwiebe.nl/brew/bb-darwin-amd64-0.236.390.tar.gz"
      sha256 "3cc05e0ec84dfc07863f384391bdaa88f6d2ade826e4c92be43b2ccc932d1f4c"
    elsif Hardware::CPU.arm?
      url "https://webwiebe.nl/brew/bb-darwin-arm64-0.236.390.tar.gz"
      sha256 "d752274b1d56b0fdb2bf97e4247d8e0f3fde1258b90bd5afa94c40bae893ad59"
    end
  end

  def install
    bin.install "bb"
  end
end
