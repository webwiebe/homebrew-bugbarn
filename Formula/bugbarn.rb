class Bugbarn < Formula
  desc "BugBarn"
  homepage "https://github.com/wiebe-xyz/bugbarn"
  version "0.236.297"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://webwiebe.nl/brew/bugbarn-darwin-amd64-0.236.297.tar.gz"
      sha256 "b903236ec98b0b30b5491ec5c8e0ecfff68f4be88f0247022c87aab151f9750e"
    elsif Hardware::CPU.arm?
      url "https://webwiebe.nl/brew/bugbarn-darwin-arm64-0.236.297.tar.gz"
      sha256 "872e3b1bbdb28bca39eca2811c12a96046f0373bebce770933b21f5e3ab1ade5"
    end
  end

  def install
    bin.install "bugbarn"
  end
end
