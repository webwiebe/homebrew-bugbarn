class Bugbarn < Formula
  desc "BugBarn"
  homepage "https://github.com/wiebe-xyz/bugbarn"
  version "0.236.136"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://webwiebe.nl/brew/bugbarn-darwin-amd64-0.236.136.tar.gz"
      sha256 "bdbf72426707f6514e6dfd7aacc020205c7da5c1ac3b73629950c71f06f370bd"
    elsif Hardware::CPU.arm?
      url "https://webwiebe.nl/brew/bugbarn-darwin-arm64-0.236.136.tar.gz"
      sha256 "65845ace3c5920ffe5ffc515da922731caa05ef575828fb6f67e841f28d28817"
    end
  end

  def install
    bin.install "bugbarn"
  end
end
