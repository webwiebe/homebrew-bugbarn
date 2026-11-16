class Bb < Formula
  desc "BugBarn"
  homepage "https://github.com/wiebe-xyz/bugbarn"
  version "0.236.373"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://webwiebe.nl/brew/bb-darwin-amd64-0.236.373.tar.gz"
      sha256 "a059ee59676e2f81d64268bdff2e33b3fc562e454d794fb505e340aeeb883b28"
    elsif Hardware::CPU.arm?
      url "https://webwiebe.nl/brew/bb-darwin-arm64-0.236.373.tar.gz"
      sha256 "650688ef9bce96988db81d3f7eefd670349650368b18e95f22ee80dc091cccca"
    end
  end

  def install
    bin.install "bb"
  end
end
