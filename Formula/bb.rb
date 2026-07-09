class Bb < Formula
  desc "BugBarn"
  homepage "https://github.com/wiebe-xyz/bugbarn"
  version "0.236.126"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://webwiebe.nl/brew/bb-darwin-amd64-0.236.126.tar.gz"
      sha256 "9378995bff408e9146a4656e03737437a49410ae6e0dff89771cee9df97a11e1"
    elsif Hardware::CPU.arm?
      url "https://webwiebe.nl/brew/bb-darwin-arm64-0.236.126.tar.gz"
      sha256 "86d844afc24d23101de32631ae15c6439635790afa2f6b1125d854b089de50f6"
    end
  end

  def install
    bin.install "bb"
  end
end
