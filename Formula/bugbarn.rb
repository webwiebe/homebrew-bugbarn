class Bugbarn < Formula
  desc "BugBarn"
  homepage "https://github.com/wiebe-xyz/bugbarn"
  version "0.236.289"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://webwiebe.nl/brew/bugbarn-darwin-amd64-0.236.289.tar.gz"
      sha256 "8528967901f479d7993731935e3f897c72523956047dc0de963667dd4ec7a22d"
    elsif Hardware::CPU.arm?
      url "https://webwiebe.nl/brew/bugbarn-darwin-arm64-0.236.289.tar.gz"
      sha256 "b4baa513dc3bc0f7545888d949cdb7c3937b631509210e80574e102b6f0319fe"
    end
  end

  def install
    bin.install "bugbarn"
  end
end
