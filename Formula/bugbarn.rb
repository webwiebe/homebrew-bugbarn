class Bugbarn < Formula
  desc "BugBarn"
  homepage "https://github.com/wiebe-xyz/bugbarn"
  version "0.236.303"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://webwiebe.nl/brew/bugbarn-darwin-amd64-0.236.303.tar.gz"
      sha256 "75a74ce8870f0704f8d7fa28954402a84db426b71f7bf3f68059a07f112e8542"
    elsif Hardware::CPU.arm?
      url "https://webwiebe.nl/brew/bugbarn-darwin-arm64-0.236.303.tar.gz"
      sha256 "abc9c5410adaf2ec27bcdaf3a0342861a88da77ed5503f2b775d13ca9a9777c6"
    end
  end

  def install
    bin.install "bugbarn"
  end
end
