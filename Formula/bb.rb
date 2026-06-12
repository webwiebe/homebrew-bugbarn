class Bb < Formula
  desc "CLI client for BugBarn error tracking"
  homepage "https://github.com/wiebe-xyz/bugbarn"
  version "0.236.70"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://webwiebe.nl/brew/bb-darwin-amd64-0.236.70.tar.gz"
      sha256 "6f7249cd19a4dd31837fcad2bf77899d654ca5b41b30b922a2a618301163524a"
    elsif Hardware::CPU.arm?
      url "https://webwiebe.nl/brew/bb-darwin-arm64-0.236.70.tar.gz"
      sha256 "17bc3b2a516297fe3dfb434d635076dfae4c32c846546d8820f4df17b76723fe"
    end
  end

  def install
    bin.install "bb"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/bb version")
  end
end
