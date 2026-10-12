class Bb < Formula
  desc "BugBarn"
  homepage "https://github.com/wiebe-xyz/bugbarn"
  version "0.236.227"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://webwiebe.nl/brew/bb-darwin-amd64-0.236.227.tar.gz"
      sha256 "0d97c8af05be5c67c99539a3c1b50edd4e9fcf0837f3e098e132020c339eae40"
    elsif Hardware::CPU.arm?
      url "https://webwiebe.nl/brew/bb-darwin-arm64-0.236.227.tar.gz"
      sha256 "1aaa8e21bd512fcccdd632910cafd770a4ad878f232868a9ac60b67fad68b8f2"
    end
  end

  def install
    bin.install "bb"
  end
end
