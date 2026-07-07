class Bugbarn < Formula
  desc "BugBarn"
  homepage "https://github.com/wiebe-xyz/bugbarn"
  version "0.236.122"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://webwiebe.nl/brew/bugbarn-darwin-amd64-0.236.122.tar.gz"
      sha256 "273025a66094a5df4c9ac1fe91078d39ef545034567fc225744c40cfe8aebabf"
    elsif Hardware::CPU.arm?
      url "https://webwiebe.nl/brew/bugbarn-darwin-arm64-0.236.122.tar.gz"
      sha256 "57907f85d97f850d3c0301d8b73001ed850731960150101caa3bd0b180deebb0"
    end
  end

  def install
    bin.install "bugbarn"
  end
end
