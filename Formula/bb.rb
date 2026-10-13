class Bb < Formula
  desc "BugBarn"
  homepage "https://github.com/wiebe-xyz/bugbarn"
  version "0.236.246"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://webwiebe.nl/brew/bb-darwin-amd64-0.236.246.tar.gz"
      sha256 "12579ec5ddf5eba5d799db75818e9af8056c90bf0b77d4323790449cc4cab638"
    elsif Hardware::CPU.arm?
      url "https://webwiebe.nl/brew/bb-darwin-arm64-0.236.246.tar.gz"
      sha256 "da82af4021cb8dc1d6a188e06802c4357113ac415c0e7fa310b105b94f35c616"
    end
  end

  def install
    bin.install "bb"
  end
end
