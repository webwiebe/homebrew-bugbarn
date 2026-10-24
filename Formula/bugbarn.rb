class Bugbarn < Formula
  desc "BugBarn"
  homepage "https://github.com/wiebe-xyz/bugbarn"
  version "0.236.272"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://webwiebe.nl/brew/bugbarn-darwin-amd64-0.236.272.tar.gz"
      sha256 "4454283c78df613305bdd1de955a1da965556607ca0877cfcf0a795f2065d9e4"
    elsif Hardware::CPU.arm?
      url "https://webwiebe.nl/brew/bugbarn-darwin-arm64-0.236.272.tar.gz"
      sha256 "c8d9aa2a53bf135f4d204814f7c2a439aabdce122a0eaaea0cb04498dbb103ce"
    end
  end

  def install
    bin.install "bugbarn"
  end
end
