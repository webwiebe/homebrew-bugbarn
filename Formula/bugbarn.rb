class Bugbarn < Formula
  desc "BugBarn"
  homepage "https://github.com/wiebe-xyz/bugbarn"
  version "0.236.165"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://webwiebe.nl/brew/bugbarn-darwin-amd64-0.236.165.tar.gz"
      sha256 "057085ff158f7b1fdb0e289b9df00ea3d0badb45e91cce7843acd157414bd7dd"
    elsif Hardware::CPU.arm?
      url "https://webwiebe.nl/brew/bugbarn-darwin-arm64-0.236.165.tar.gz"
      sha256 "b03bade19e5b98e4a75a3239e2f29ff9458e3230458e45379104d72813afd42e"
    end
  end

  def install
    bin.install "bugbarn"
  end
end
