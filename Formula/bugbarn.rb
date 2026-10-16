class Bugbarn < Formula
  desc "BugBarn"
  homepage "https://github.com/wiebe-xyz/bugbarn"
  version "0.236.262"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://webwiebe.nl/brew/bugbarn-darwin-amd64-0.236.262.tar.gz"
      sha256 "bdb3ebc057ab12e2cc5509324659aa5c0b846d50523222da13b3a82894b4ffbf"
    elsif Hardware::CPU.arm?
      url "https://webwiebe.nl/brew/bugbarn-darwin-arm64-0.236.262.tar.gz"
      sha256 "9d504423bd8db59c9722512bdfa9808a307f9fde8da0671e5bb3e0b518851b7a"
    end
  end

  def install
    bin.install "bugbarn"
  end
end
