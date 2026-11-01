class Bugbarn < Formula
  desc "BugBarn"
  homepage "https://github.com/wiebe-xyz/bugbarn"
  version "0.236.315"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://webwiebe.nl/brew/bugbarn-darwin-amd64-0.236.315.tar.gz"
      sha256 "594388c6ffc1594dfb394447b53f4d90e816f17924459190f6227434118c6c2b"
    elsif Hardware::CPU.arm?
      url "https://webwiebe.nl/brew/bugbarn-darwin-arm64-0.236.315.tar.gz"
      sha256 "64739fe7e2b1e22d1f1b68d088d5dd63c1e30a08a8e359be0c299e723674dda9"
    end
  end

  def install
    bin.install "bugbarn"
  end
end
