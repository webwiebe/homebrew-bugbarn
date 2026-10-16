class Bb < Formula
  desc "BugBarn"
  homepage "https://github.com/wiebe-xyz/bugbarn"
  version "0.236.259"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://webwiebe.nl/brew/bb-darwin-amd64-0.236.259.tar.gz"
      sha256 "aaab82cf1a7d7f9b9bdc5d8fa64334b952a69244ae88a8fe4ab7e7247b5243b1"
    elsif Hardware::CPU.arm?
      url "https://webwiebe.nl/brew/bb-darwin-arm64-0.236.259.tar.gz"
      sha256 "ca2f64fd305f55d782aa418b4a2fc87e903242d502d58f395ab6309de2657cfd"
    end
  end

  def install
    bin.install "bb"
  end
end
