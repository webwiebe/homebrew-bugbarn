class Bugbarn < Formula
  desc "BugBarn"
  homepage "https://github.com/wiebe-xyz/bugbarn"
  version "0.236.392"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://webwiebe.nl/brew/bugbarn-darwin-amd64-0.236.392.tar.gz"
      sha256 "7bfd29e55ac003b0eb606c8892865dd2681c53142a54d0794f14a0f998f7c371"
    elsif Hardware::CPU.arm?
      url "https://webwiebe.nl/brew/bugbarn-darwin-arm64-0.236.392.tar.gz"
      sha256 "5eb3b129debee0b7131053296937145635a0d7924c07044079f08dd1bcf0d647"
    end
  end

  def install
    bin.install "bugbarn"
  end
end
