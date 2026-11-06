class Bugbarn < Formula
  desc "BugBarn"
  homepage "https://github.com/wiebe-xyz/bugbarn"
  version "0.236.332"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://webwiebe.nl/brew/bugbarn-darwin-amd64-0.236.332.tar.gz"
      sha256 "ce263c2dbac85c319965351b64acd9cc85b92f7cc958c119cf50341149899c91"
    elsif Hardware::CPU.arm?
      url "https://webwiebe.nl/brew/bugbarn-darwin-arm64-0.236.332.tar.gz"
      sha256 "eee0e8c55ade0109d2d889aa510a415eb285461ad538108b905538a545f29743"
    end
  end

  def install
    bin.install "bugbarn"
  end
end
