class Bb < Formula
  desc "BugBarn"
  homepage "https://github.com/wiebe-xyz/bugbarn"
  version "0.236.212"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://webwiebe.nl/brew/bb-darwin-amd64-0.236.212.tar.gz"
      sha256 "2696599f62c50a50124ecec80d82dabf315640b1dce4912cabc2a89a1ecaa73c"
    elsif Hardware::CPU.arm?
      url "https://webwiebe.nl/brew/bb-darwin-arm64-0.236.212.tar.gz"
      sha256 "8f464a672f9925992122bfdfe674f121780bd18e37ab60d2f3b39eecef78bc6f"
    end
  end

  def install
    bin.install "bb"
  end
end
