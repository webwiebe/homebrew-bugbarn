class Bb < Formula
  desc "BugBarn"
  homepage "https://github.com/wiebe-xyz/bugbarn"
  version "0.236.166"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://webwiebe.nl/brew/bb-darwin-amd64-0.236.166.tar.gz"
      sha256 "b4ff398bf309c8bd309219168efd5438f60540135036c86e79b5dff2c1384ef3"
    elsif Hardware::CPU.arm?
      url "https://webwiebe.nl/brew/bb-darwin-arm64-0.236.166.tar.gz"
      sha256 "9b34baa5d03a8db298d2cc726493ecec9145a7a53ade30a67c73a8345e67cc42"
    end
  end

  def install
    bin.install "bb"
  end
end
