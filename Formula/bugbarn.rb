class Bugbarn < Formula
  desc "BugBarn"
  homepage "https://github.com/wiebe-xyz/bugbarn"
  version "0.236.286"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://webwiebe.nl/brew/bugbarn-darwin-amd64-0.236.286.tar.gz"
      sha256 "7c39b7899ace19a79930702072b996d44fe17eed82a3afc1da0ce8a1f86bfb3b"
    elsif Hardware::CPU.arm?
      url "https://webwiebe.nl/brew/bugbarn-darwin-arm64-0.236.286.tar.gz"
      sha256 "a1817ff989954193dbd0e894798be40db6bce57a811e5de73fdae3d5e9416a42"
    end
  end

  def install
    bin.install "bugbarn"
  end
end
