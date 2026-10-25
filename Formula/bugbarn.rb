class Bugbarn < Formula
  desc "BugBarn"
  homepage "https://github.com/wiebe-xyz/bugbarn"
  version "0.236.283"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://webwiebe.nl/brew/bugbarn-darwin-amd64-0.236.283.tar.gz"
      sha256 "d183b87523a1da85ee16d0b343fe595a2ee63138961664e05a88f7c1f915dbfd"
    elsif Hardware::CPU.arm?
      url "https://webwiebe.nl/brew/bugbarn-darwin-arm64-0.236.283.tar.gz"
      sha256 "cf0c5b63c29c5fad8a20e3c0d7e976d8c46cea53bc53b4308890c8c5ae756541"
    end
  end

  def install
    bin.install "bugbarn"
  end
end
