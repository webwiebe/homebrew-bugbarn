class Bb < Formula
  desc "BugBarn"
  homepage "https://github.com/wiebe-xyz/bugbarn"
  version "0.236.273"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://webwiebe.nl/brew/bb-darwin-amd64-0.236.273.tar.gz"
      sha256 "0d1a2b6da3fd34161f1a5e5756c2441673fa0a1b25891d7c4267d86ba0b1d0eb"
    elsif Hardware::CPU.arm?
      url "https://webwiebe.nl/brew/bb-darwin-arm64-0.236.273.tar.gz"
      sha256 "6a99819a7318d9b4d34a4ffff41754ed82898266f9d3897e780d5aa7ff95cef1"
    end
  end

  def install
    bin.install "bb"
  end
end
