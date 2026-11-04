class Bb < Formula
  desc "BugBarn"
  homepage "https://github.com/wiebe-xyz/bugbarn"
  version "0.236.317"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://webwiebe.nl/brew/bb-darwin-amd64-0.236.317.tar.gz"
      sha256 "b16747afc0f59b139f6ca9f25974d6fcda6b2e60d1d21c90da61f712a6c09740"
    elsif Hardware::CPU.arm?
      url "https://webwiebe.nl/brew/bb-darwin-arm64-0.236.317.tar.gz"
      sha256 "d421f53ff5669dc5b9c6276ac3d00bb0e0620e24e01dbe8d6b6dcb160f526b40"
    end
  end

  def install
    bin.install "bb"
  end
end
