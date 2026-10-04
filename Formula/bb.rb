class Bb < Formula
  desc "BugBarn"
  homepage "https://github.com/wiebe-xyz/bugbarn"
  version "0.236.198"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://webwiebe.nl/brew/bb-darwin-amd64-0.236.198.tar.gz"
      sha256 "d5f47e18b0f25fb21107169893fe272d6d99bfd02115e7a94b8aaed7ff5ccaa5"
    elsif Hardware::CPU.arm?
      url "https://webwiebe.nl/brew/bb-darwin-arm64-0.236.198.tar.gz"
      sha256 "da0a835b54ec55bb350bb4c98b5fc3958232a3973c82c9452fd12f48815a2f81"
    end
  end

  def install
    bin.install "bb"
  end
end
