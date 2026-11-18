class Bugbarn < Formula
  desc "BugBarn"
  homepage "https://github.com/wiebe-xyz/bugbarn"
  version "0.236.378"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://webwiebe.nl/brew/bugbarn-darwin-amd64-0.236.378.tar.gz"
      sha256 "82b8452cd3ec760fb27406db45444e85cf9474c793ef66cb1e8c7d71fdb8e7c1"
    elsif Hardware::CPU.arm?
      url "https://webwiebe.nl/brew/bugbarn-darwin-arm64-0.236.378.tar.gz"
      sha256 "94ec224bf508cfb0175a75f2382fb105b9c16feb1a7b90a696e044710a956644"
    end
  end

  def install
    bin.install "bugbarn"
  end
end
