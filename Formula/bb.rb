class Bb < Formula
  desc "CLI client for BugBarn error tracking"
  homepage "https://github.com/wiebe-xyz/bugbarn"
  version "0.236.108"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://webwiebe.nl/brew/bb-darwin-amd64-0.236.108.tar.gz"
      sha256 "7fbd77e8c6f61737ba48d3b9f66e4bed7978ea838da5f0ee4b1763e7edeb310f"
    elsif Hardware::CPU.arm?
      url "https://webwiebe.nl/brew/bb-darwin-arm64-0.236.108.tar.gz"
      sha256 "894730b36d0a182aa8aefc708f6470e8c5f9e628d395a8cfa80eccecb0617275"
    end
  end

  def install
    bin.install "bb"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/bb version")
  end
end
