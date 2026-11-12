class Bb < Formula
  desc "BugBarn"
  homepage "https://github.com/wiebe-xyz/bugbarn"
  version "0.236.360"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://webwiebe.nl/brew/bb-darwin-amd64-0.236.360.tar.gz"
      sha256 "b55eaf8956f76556c5790847bb03f92c3d851895084b3029fc37bf33aa1a0c41"
    elsif Hardware::CPU.arm?
      url "https://webwiebe.nl/brew/bb-darwin-arm64-0.236.360.tar.gz"
      sha256 "95716e10d9c2775cd6e96906508376646effd5b74ef5e487da472f4936f43a64"
    end
  end

  def install
    bin.install "bb"
  end
end
