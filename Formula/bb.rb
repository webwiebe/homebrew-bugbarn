class Bb < Formula
  desc "BugBarn"
  homepage "https://github.com/wiebe-xyz/bugbarn"
  version "0.236.276"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://webwiebe.nl/brew/bb-darwin-amd64-0.236.276.tar.gz"
      sha256 "4a71c539e04af0b0836d1387bb226b70a85836b58810081a6d9b8ac3ae6e6ab8"
    elsif Hardware::CPU.arm?
      url "https://webwiebe.nl/brew/bb-darwin-arm64-0.236.276.tar.gz"
      sha256 "d7dc7bcf446acbc4053167d7d7d79428d237b8c03302d3245e88daa216459ffa"
    end
  end

  def install
    bin.install "bb"
  end
end
