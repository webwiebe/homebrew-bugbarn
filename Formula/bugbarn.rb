class Bugbarn < Formula
  desc "BugBarn"
  homepage "https://github.com/wiebe-xyz/bugbarn"
  version "0.236.151"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://webwiebe.nl/brew/bugbarn-darwin-amd64-0.236.151.tar.gz"
      sha256 "f4a4365c9e3b3f0c0534139e8ca86f11612822d199ba53495261b5988fb15b8b"
    elsif Hardware::CPU.arm?
      url "https://webwiebe.nl/brew/bugbarn-darwin-arm64-0.236.151.tar.gz"
      sha256 "c11dbd7f8382fa13297c6e7f46874714e20648a7bc5ae478e5835256d5305900"
    end
  end

  def install
    bin.install "bugbarn"
  end
end
