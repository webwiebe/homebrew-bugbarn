class Bb < Formula
  desc "BugBarn"
  homepage "https://github.com/wiebe-xyz/bugbarn"
  version "0.236.213"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://webwiebe.nl/brew/bb-darwin-amd64-0.236.213.tar.gz"
      sha256 "1a3aaac7ff07ff57cc1f58bb40fb4e8f230a07793a6a8121fd07a00d4b2c8c8c"
    elsif Hardware::CPU.arm?
      url "https://webwiebe.nl/brew/bb-darwin-arm64-0.236.213.tar.gz"
      sha256 "c6c947291526ffa2d2ab7b87924ce90faf3436a35a46c8173683cd613006d25a"
    end
  end

  def install
    bin.install "bb"
  end
end
