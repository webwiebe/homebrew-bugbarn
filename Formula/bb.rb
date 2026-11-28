class Bb < Formula
  desc "BugBarn"
  homepage "https://github.com/wiebe-xyz/bugbarn"
  version "0.236.399"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://webwiebe.nl/brew/bb-darwin-amd64-0.236.399.tar.gz"
      sha256 "c6e3b3ce5cb712a0833b5d1697c622add08e5c585842d7a20968cdf010237869"
    elsif Hardware::CPU.arm?
      url "https://webwiebe.nl/brew/bb-darwin-arm64-0.236.399.tar.gz"
      sha256 "6d01ce2db10c4a6380a7ecdfa92ec078afd0b760f8e486ad4e4a0b13ce275508"
    end
  end

  def install
    bin.install "bb"
  end
end
