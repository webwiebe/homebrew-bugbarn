class Bugbarn < Formula
  desc "BugBarn"
  homepage "https://github.com/wiebe-xyz/bugbarn"
  version "0.236.131"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://webwiebe.nl/brew/bugbarn-darwin-amd64-0.236.131.tar.gz"
      sha256 "e68089ccf07d5649d06b8c37c81fe35634851207f6d96526245cc093f9a0dc14"
    elsif Hardware::CPU.arm?
      url "https://webwiebe.nl/brew/bugbarn-darwin-arm64-0.236.131.tar.gz"
      sha256 "b50a25d7a8a793aa9f6dcd71eb638e8850dc3a15e008f68295d9c902d0e502bb"
    end
  end

  def install
    bin.install "bugbarn"
  end
end
