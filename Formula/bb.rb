class Bb < Formula
  desc "BugBarn"
  homepage "https://github.com/wiebe-xyz/bugbarn"
  version "0.236.313"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://webwiebe.nl/brew/bb-darwin-amd64-0.236.313.tar.gz"
      sha256 "8f72484fed95964893863de5d66f10610c029ae7fc38be17bbdcaf623d1d0a5d"
    elsif Hardware::CPU.arm?
      url "https://webwiebe.nl/brew/bb-darwin-arm64-0.236.313.tar.gz"
      sha256 "2f318bdbc19d99a8d65e14fb53e923d613c74f94eae951ce7e39b0b4a5f409a4"
    end
  end

  def install
    bin.install "bb"
  end
end
