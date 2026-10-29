class Bb < Formula
  desc "BugBarn"
  homepage "https://github.com/wiebe-xyz/bugbarn"
  version "0.236.302"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://webwiebe.nl/brew/bb-darwin-amd64-0.236.302.tar.gz"
      sha256 "0ce41386575f8bc714f07082d18d4659bb8e8fa7b908c750e111792cd621595d"
    elsif Hardware::CPU.arm?
      url "https://webwiebe.nl/brew/bb-darwin-arm64-0.236.302.tar.gz"
      sha256 "bfcf2dd7af9efec32ecebbb002b5c39f53231b27856099fdd31da93c15558da6"
    end
  end

  def install
    bin.install "bb"
  end
end
