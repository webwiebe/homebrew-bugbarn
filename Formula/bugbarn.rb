class Bugbarn < Formula
  desc "BugBarn"
  homepage "https://github.com/wiebe-xyz/bugbarn"
  version "0.236.201"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://webwiebe.nl/brew/bugbarn-darwin-amd64-0.236.201.tar.gz"
      sha256 "abf753920781b351b9ae7b90b91c276dd7d3f30e2a099d7e5924bfbc693c6019"
    elsif Hardware::CPU.arm?
      url "https://webwiebe.nl/brew/bugbarn-darwin-arm64-0.236.201.tar.gz"
      sha256 "1d1febcf0498dc4121b2f8cddc33a9633717b31a37bd6f84e5e2f2a3a378dc81"
    end
  end

  def install
    bin.install "bugbarn"
  end
end
