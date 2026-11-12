class Bugbarn < Formula
  desc "BugBarn"
  homepage "https://github.com/wiebe-xyz/bugbarn"
  version "0.236.356"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://webwiebe.nl/brew/bugbarn-darwin-amd64-0.236.356.tar.gz"
      sha256 "563ae6ff277c5f8132d35cdfdca10ba9b7ac832530d7e39cdd28e3874d1e6547"
    elsif Hardware::CPU.arm?
      url "https://webwiebe.nl/brew/bugbarn-darwin-arm64-0.236.356.tar.gz"
      sha256 "3f15d1317e7370033dd4584e2b4fabcff2f573ecaa39caf5fdd63ab5f3d3c6ab"
    end
  end

  def install
    bin.install "bugbarn"
  end
end
