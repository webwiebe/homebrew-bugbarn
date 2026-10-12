class Bb < Formula
  desc "BugBarn"
  homepage "https://github.com/wiebe-xyz/bugbarn"
  version "0.236.220"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://webwiebe.nl/brew/bb-darwin-amd64-0.236.220.tar.gz"
      sha256 "a441db594a14d2a1efe7c92203091a78554abf1931f28a874f17cd8dd10b6a51"
    elsif Hardware::CPU.arm?
      url "https://webwiebe.nl/brew/bb-darwin-arm64-0.236.220.tar.gz"
      sha256 "031faa92cc178139d5378b95097f0b525712e0fb9624061464474e53fcf2d214"
    end
  end

  def install
    bin.install "bb"
  end
end
