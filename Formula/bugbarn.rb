class Bugbarn < Formula
  desc "BugBarn"
  homepage "https://github.com/wiebe-xyz/bugbarn"
  version "0.236.267"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://webwiebe.nl/brew/bugbarn-darwin-amd64-0.236.267.tar.gz"
      sha256 "fc09d24f379222abef2e7f23b1753e34d492d59af8b8218366461bde5eb37813"
    elsif Hardware::CPU.arm?
      url "https://webwiebe.nl/brew/bugbarn-darwin-arm64-0.236.267.tar.gz"
      sha256 "7bb06bd2c1931ea99b6c66133b7dfeee2e404228d5f0c593491452dbbe5ae74e"
    end
  end

  def install
    bin.install "bugbarn"
  end
end
