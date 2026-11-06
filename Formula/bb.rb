class Bb < Formula
  desc "BugBarn"
  homepage "https://github.com/wiebe-xyz/bugbarn"
  version "0.236.334"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://webwiebe.nl/brew/bb-darwin-amd64-0.236.334.tar.gz"
      sha256 "aaa7e13d1b027b306ca2c85812d2a757d57b5ecc257832a93eccd80d4571eca7"
    elsif Hardware::CPU.arm?
      url "https://webwiebe.nl/brew/bb-darwin-arm64-0.236.334.tar.gz"
      sha256 "19a5dfca39732ac85b5d4d59bf1284efe2a10185e517d9402cc017db5c9567e1"
    end
  end

  def install
    bin.install "bb"
  end
end
