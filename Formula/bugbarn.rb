class Bugbarn < Formula
  desc "BugBarn"
  homepage "https://github.com/wiebe-xyz/bugbarn"
  version "0.236.353"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://webwiebe.nl/brew/bugbarn-darwin-amd64-0.236.353.tar.gz"
      sha256 "bb829dee74c99b7d87861abc2da183eb6ef020125c700d26924bc9b7eeffd86a"
    elsif Hardware::CPU.arm?
      url "https://webwiebe.nl/brew/bugbarn-darwin-arm64-0.236.353.tar.gz"
      sha256 "32562007b13e62ab7054d9a8a31e8ffb2b975df3a1d836e701d62eb3fe1da251"
    end
  end

  def install
    bin.install "bugbarn"
  end
end
