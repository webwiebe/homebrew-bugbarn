class Bugbarn < Formula
  desc "BugBarn"
  homepage "https://github.com/wiebe-xyz/bugbarn"
  version "0.236.260"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://webwiebe.nl/brew/bugbarn-darwin-amd64-0.236.260.tar.gz"
      sha256 "bed105cf2d2786de39c89308a470f5aa515dc4be78d11e62b1850953cd4158b1"
    elsif Hardware::CPU.arm?
      url "https://webwiebe.nl/brew/bugbarn-darwin-arm64-0.236.260.tar.gz"
      sha256 "8ceea8e6a1cbe9827c1901a9ac7b795b0273aa3717e4b00ff439c3b42b87f5b2"
    end
  end

  def install
    bin.install "bugbarn"
  end
end
