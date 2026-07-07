class Bb < Formula
  desc "BugBarn"
  homepage "https://github.com/wiebe-xyz/bugbarn"
  version "0.236.122"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://webwiebe.nl/brew/bb-darwin-amd64-0.236.122.tar.gz"
      sha256 "7d3ae08ad153a71925626cc6a336a93d87c690be1c621e1e16b9ef4070b9037f"
    elsif Hardware::CPU.arm?
      url "https://webwiebe.nl/brew/bb-darwin-arm64-0.236.122.tar.gz"
      sha256 "786b3da566920f0f6e56f7a3664675cc064b1bba1d2cc6b8924086d83c65ed7f"
    end
  end

  def install
    bin.install "bb"
  end
end
