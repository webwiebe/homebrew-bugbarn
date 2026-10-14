class Bb < Formula
  desc "BugBarn"
  homepage "https://github.com/wiebe-xyz/bugbarn"
  version "0.236.253"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://webwiebe.nl/brew/bb-darwin-amd64-0.236.253.tar.gz"
      sha256 "d4d68585915e37683b10a53ba3bc3845c77dd273c9dbabc889516d4c9d5b6aa8"
    elsif Hardware::CPU.arm?
      url "https://webwiebe.nl/brew/bb-darwin-arm64-0.236.253.tar.gz"
      sha256 "5ffe1196741b5c258ba65001aede877d3256d33ed78102f8b0cc0d2f73be485b"
    end
  end

  def install
    bin.install "bb"
  end
end
