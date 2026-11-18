class Bb < Formula
  desc "BugBarn"
  homepage "https://github.com/wiebe-xyz/bugbarn"
  version "0.236.384"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://webwiebe.nl/brew/bb-darwin-amd64-0.236.384.tar.gz"
      sha256 "6e667574160de95e9184250e531b2f8c595ddff22ea232d42c1c64a62cdf1840"
    elsif Hardware::CPU.arm?
      url "https://webwiebe.nl/brew/bb-darwin-arm64-0.236.384.tar.gz"
      sha256 "87f63de81655b15766232acc1abff38c899d6002a3729ec68b01f271c25002f7"
    end
  end

  def install
    bin.install "bb"
  end
end
