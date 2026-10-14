class Bugbarn < Formula
  desc "BugBarn"
  homepage "https://github.com/wiebe-xyz/bugbarn"
  version "0.236.252"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://webwiebe.nl/brew/bugbarn-darwin-amd64-0.236.252.tar.gz"
      sha256 "ece934433b1b73b0ba09e9113b16c61f1cfd1818998ff61454542afef538ece3"
    elsif Hardware::CPU.arm?
      url "https://webwiebe.nl/brew/bugbarn-darwin-arm64-0.236.252.tar.gz"
      sha256 "a9cab008d7d4f80006c99d1ca33264e099d1f4523e3b71f2cbb1910c2b646fa5"
    end
  end

  def install
    bin.install "bugbarn"
  end
end
