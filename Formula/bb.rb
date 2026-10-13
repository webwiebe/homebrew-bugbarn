class Bb < Formula
  desc "BugBarn"
  homepage "https://github.com/wiebe-xyz/bugbarn"
  version "0.236.242"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://webwiebe.nl/brew/bb-darwin-amd64-0.236.242.tar.gz"
      sha256 "801d56084cd59da154d0340b796cb147672de0d297fb9f90ec7b463a5a0d24c1"
    elsif Hardware::CPU.arm?
      url "https://webwiebe.nl/brew/bb-darwin-arm64-0.236.242.tar.gz"
      sha256 "d2d59cc6c0fed4026c0b6b1888693850ac61c955eaaddab6d52cddfc683fdcdd"
    end
  end

  def install
    bin.install "bb"
  end
end
