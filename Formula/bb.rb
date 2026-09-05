class Bb < Formula
  desc "BugBarn"
  homepage "https://github.com/wiebe-xyz/bugbarn"
  version "0.236.175"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://webwiebe.nl/brew/bb-darwin-amd64-0.236.175.tar.gz"
      sha256 "52b56f29488cc5e00bd4485bc4d0363df75502b74d7d616eb8d04827f741f814"
    elsif Hardware::CPU.arm?
      url "https://webwiebe.nl/brew/bb-darwin-arm64-0.236.175.tar.gz"
      sha256 "d016bb245bb23d9313f6a2876048cde816e4133050db1a3df3a89ba1e06a0505"
    end
  end

  def install
    bin.install "bb"
  end
end
