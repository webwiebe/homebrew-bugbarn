class Bb < Formula
  desc "BugBarn"
  homepage "https://github.com/wiebe-xyz/bugbarn"
  version "0.236.130"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://webwiebe.nl/brew/bb-darwin-amd64-0.236.130.tar.gz"
      sha256 "ed5141c321061bf08812709a25b84c1bdb5beeeb6aefbf68315404dffea5dae2"
    elsif Hardware::CPU.arm?
      url "https://webwiebe.nl/brew/bb-darwin-arm64-0.236.130.tar.gz"
      sha256 "f6558b205c8d2d49f16c48cc79022c86e671b19fca5215b3d91ca69f4fe4bc3c"
    end
  end

  def install
    bin.install "bb"
  end
end
