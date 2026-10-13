class Bb < Formula
  desc "BugBarn"
  homepage "https://github.com/wiebe-xyz/bugbarn"
  version "0.236.235"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://webwiebe.nl/brew/bb-darwin-amd64-0.236.235.tar.gz"
      sha256 "b31b48ee442fac3e1d00514edd5229009fde2bd465e42c594f99c396d53249b2"
    elsif Hardware::CPU.arm?
      url "https://webwiebe.nl/brew/bb-darwin-arm64-0.236.235.tar.gz"
      sha256 "b7345e709d0b75f00e0100271b9c00c6b8b9a3fb1f569a880f0cf9aff253151b"
    end
  end

  def install
    bin.install "bb"
  end
end
