class Bb < Formula
  desc "BugBarn"
  homepage "https://github.com/wiebe-xyz/bugbarn"
  version "0.236.112"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://webwiebe.nl/brew/bb-darwin-amd64-0.236.112.tar.gz"
      sha256 "f598152e49fc94fd8e1454eeb466207ed674f94451ae39a88f018b386711bf8a"
    elsif Hardware::CPU.arm?
      url "https://webwiebe.nl/brew/bb-darwin-arm64-0.236.112.tar.gz"
      sha256 "f8f999f622d44ab2dbc372848b8857ad2c7f614c736ecb8bb1a0db2ff799076a"
    end
  end

  def install
    bin.install "bb"
  end
end
