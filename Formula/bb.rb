class Bb < Formula
  desc "BugBarn"
  homepage "https://github.com/wiebe-xyz/bugbarn"
  version "0.236.319"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://webwiebe.nl/brew/bb-darwin-amd64-0.236.319.tar.gz"
      sha256 "3b639e523ac5e0b3a5997564cc84ac8c4c1d719c023ad9ecf59b4de308c99a0e"
    elsif Hardware::CPU.arm?
      url "https://webwiebe.nl/brew/bb-darwin-arm64-0.236.319.tar.gz"
      sha256 "2a4878579efc6b38f6923f767dd555d12eb9dd14ab8530f9c4549346e1f8dcb9"
    end
  end

  def install
    bin.install "bb"
  end
end
