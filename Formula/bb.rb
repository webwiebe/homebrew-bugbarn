class Bb < Formula
  desc "BugBarn"
  homepage "https://github.com/wiebe-xyz/bugbarn"
  version "0.236.256"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://webwiebe.nl/brew/bb-darwin-amd64-0.236.256.tar.gz"
      sha256 "e9d9f412c5e8f718df3e7e343abb73ba3bb7d16ce6e736a68140242aad20d19a"
    elsif Hardware::CPU.arm?
      url "https://webwiebe.nl/brew/bb-darwin-arm64-0.236.256.tar.gz"
      sha256 "218cc121b5ef2bfda6966ebcfbc60f0fa35cbef386032d7f97298969f62f0266"
    end
  end

  def install
    bin.install "bb"
  end
end
