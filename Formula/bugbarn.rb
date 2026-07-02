class Bugbarn < Formula
  desc "BugBarn"
  homepage "https://github.com/wiebe-xyz/bugbarn"
  version "0.236.117"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://webwiebe.nl/brew/bugbarn-darwin-amd64-0.236.117.tar.gz"
      sha256 "fd4d4e3d71318d61f81891e57fcc9bb8d0b7250372b6d674de8c6f96bd9cabd6"
    elsif Hardware::CPU.arm?
      url "https://webwiebe.nl/brew/bugbarn-darwin-arm64-0.236.117.tar.gz"
      sha256 "4d312f0eae1356bee136ecac2e620bff56ec8eb4bee1baa3be77ae1565ff8681"
    end
  end

  def install
    bin.install "bugbarn"
  end
end
