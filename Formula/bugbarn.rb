class Bugbarn < Formula
  desc "BugBarn"
  homepage "https://github.com/wiebe-xyz/bugbarn"
  version "0.236.244"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://webwiebe.nl/brew/bugbarn-darwin-amd64-0.236.244.tar.gz"
      sha256 "6d1e08143c308bdc8193826a54f8b4274f9b55b3dcffdf1a6955515976a4074a"
    elsif Hardware::CPU.arm?
      url "https://webwiebe.nl/brew/bugbarn-darwin-arm64-0.236.244.tar.gz"
      sha256 "86e7e3aa9749ba23e29592ca6e7141a839f2c5e644e16ec82a6df0a21cfe30cf"
    end
  end

  def install
    bin.install "bugbarn"
  end
end
