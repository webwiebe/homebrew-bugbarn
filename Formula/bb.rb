class Bb < Formula
  desc "BugBarn"
  homepage "https://github.com/wiebe-xyz/bugbarn"
  version "0.236.176"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://webwiebe.nl/brew/bb-darwin-amd64-0.236.176.tar.gz"
      sha256 "93f3f6aca7aeaf6b492856233964a35dda2d1dc7c3f5f934a0cb8be3a3f85a2a"
    elsif Hardware::CPU.arm?
      url "https://webwiebe.nl/brew/bb-darwin-arm64-0.236.176.tar.gz"
      sha256 "a67c0c96459dcb760630601ad5168f167a3799d2df6e5e78e3d48df98983062b"
    end
  end

  def install
    bin.install "bb"
  end
end
