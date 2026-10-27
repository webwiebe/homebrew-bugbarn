class Bugbarn < Formula
  desc "BugBarn"
  homepage "https://github.com/wiebe-xyz/bugbarn"
  version "0.236.293"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://webwiebe.nl/brew/bugbarn-darwin-amd64-0.236.293.tar.gz"
      sha256 "9f95fd5b7d49e7ad546f1e66107d6db96910e8ff0be3268e379eb529de021520"
    elsif Hardware::CPU.arm?
      url "https://webwiebe.nl/brew/bugbarn-darwin-arm64-0.236.293.tar.gz"
      sha256 "09f76ae96f029c77c8b8d3339a3c8da38cc5518924a461e519a2c3cb3aa4b427"
    end
  end

  def install
    bin.install "bugbarn"
  end
end
