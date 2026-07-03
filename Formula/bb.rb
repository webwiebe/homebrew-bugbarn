class Bb < Formula
  desc "BugBarn"
  homepage "https://github.com/wiebe-xyz/bugbarn"
  version "0.236.119"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://webwiebe.nl/brew/bb-darwin-amd64-0.236.119.tar.gz"
      sha256 "da3e97289c381f51aed4dfcad4899c2ca1b1a40f90d7ed4cc75b234a7e10139c"
    elsif Hardware::CPU.arm?
      url "https://webwiebe.nl/brew/bb-darwin-arm64-0.236.119.tar.gz"
      sha256 "486ccb49e9259c9283de232c3ec1d386102f0ebd305c584765ea227dcfd44347"
    end
  end

  def install
    bin.install "bb"
  end
end
