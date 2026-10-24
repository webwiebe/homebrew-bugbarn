class Bugbarn < Formula
  desc "BugBarn"
  homepage "https://github.com/wiebe-xyz/bugbarn"
  version "0.236.276"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://webwiebe.nl/brew/bugbarn-darwin-amd64-0.236.276.tar.gz"
      sha256 "07a0c0c2a8f49768dc5b1108ee8a32d3a379d8eca91b16a25f3b0a98e5f3430d"
    elsif Hardware::CPU.arm?
      url "https://webwiebe.nl/brew/bugbarn-darwin-arm64-0.236.276.tar.gz"
      sha256 "486f0e594c6f06e0ec87cccbe050d5ff3539bd9178737ef3648476027e28c3e9"
    end
  end

  def install
    bin.install "bugbarn"
  end
end
