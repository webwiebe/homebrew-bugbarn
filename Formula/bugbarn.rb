class Bugbarn < Formula
  desc "BugBarn"
  homepage "https://github.com/wiebe-xyz/bugbarn"
  version "0.236.209"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://webwiebe.nl/brew/bugbarn-darwin-amd64-0.236.209.tar.gz"
      sha256 "bcfd195f4dcad7f55569399c829cffe93e38722f3753b1fdfd674eb82dbbf662"
    elsif Hardware::CPU.arm?
      url "https://webwiebe.nl/brew/bugbarn-darwin-arm64-0.236.209.tar.gz"
      sha256 "2f8daf5678473cf5a0f7e823ad081e492e3a41b598b5c2dd30f9789b12dcd1e4"
    end
  end

  def install
    bin.install "bugbarn"
  end
end
