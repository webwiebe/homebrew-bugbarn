class Bugbarn < Formula
  desc "BugBarn"
  homepage "https://github.com/wiebe-xyz/bugbarn"
  version "0.236.150"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://webwiebe.nl/brew/bugbarn-darwin-amd64-0.236.150.tar.gz"
      sha256 "484a42a999a1cbffb75f5a47da4a55f37cb87e4c2dc709a3bef835e5f2bc697b"
    elsif Hardware::CPU.arm?
      url "https://webwiebe.nl/brew/bugbarn-darwin-arm64-0.236.150.tar.gz"
      sha256 "c23ed3e80960f8818c556017eb28e532ce3e169c3a2c582ad0bce7644732f9eb"
    end
  end

  def install
    bin.install "bugbarn"
  end
end
