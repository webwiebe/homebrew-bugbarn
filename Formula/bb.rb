class Bb < Formula
  desc "BugBarn"
  homepage "https://github.com/wiebe-xyz/bugbarn"
  version "0.236.218"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://webwiebe.nl/brew/bb-darwin-amd64-0.236.218.tar.gz"
      sha256 "9f8fa75501c2ae6bafc56b3f1896b6d0b2183e9db3d3f0769de520acaead9cca"
    elsif Hardware::CPU.arm?
      url "https://webwiebe.nl/brew/bb-darwin-arm64-0.236.218.tar.gz"
      sha256 "e14d3b5dcfa0047e5b7ec269d2e49d9a0e738ed74774e9828afb18bc88d6bb1b"
    end
  end

  def install
    bin.install "bb"
  end
end
