class Bb < Formula
  desc "BugBarn"
  homepage "https://github.com/wiebe-xyz/bugbarn"
  version "0.236.321"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://webwiebe.nl/brew/bb-darwin-amd64-0.236.321.tar.gz"
      sha256 "c6f1b92ba5d1c7cf1703f8bd9013356362f589a5cda7fb308f8f875dcde15582"
    elsif Hardware::CPU.arm?
      url "https://webwiebe.nl/brew/bb-darwin-arm64-0.236.321.tar.gz"
      sha256 "0cf30f72fea1a73ac86e6d087b6add3aa884c43b8e9690cfaf15d5ce4085f956"
    end
  end

  def install
    bin.install "bb"
  end
end
