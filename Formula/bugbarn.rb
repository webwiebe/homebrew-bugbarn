class Bugbarn < Formula
  desc "BugBarn"
  homepage "https://github.com/wiebe-xyz/bugbarn"
  version "0.236.377"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://webwiebe.nl/brew/bugbarn-darwin-amd64-0.236.377.tar.gz"
      sha256 "4b9357299c32b3eab911891aeabedb8b8705390114735ce78d62aa4572c8a394"
    elsif Hardware::CPU.arm?
      url "https://webwiebe.nl/brew/bugbarn-darwin-arm64-0.236.377.tar.gz"
      sha256 "6d6ecef5773935522b77316cd58795f572bd6e90672925f42c661dc13b7ed54d"
    end
  end

  def install
    bin.install "bugbarn"
  end
end
