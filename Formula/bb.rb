class Bb < Formula
  desc "BugBarn"
  homepage "https://github.com/wiebe-xyz/bugbarn"
  version "0.236.202"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://webwiebe.nl/brew/bb-darwin-amd64-0.236.202.tar.gz"
      sha256 "eb2399c1074925fa18f0b36eecfc4c9bc341a56bc2bc87ed13dcbda9d859d30c"
    elsif Hardware::CPU.arm?
      url "https://webwiebe.nl/brew/bb-darwin-arm64-0.236.202.tar.gz"
      sha256 "dbf0d23ce708a1495b1d80ba469924ff0e313c2e2fc374128580a4d7c2cd3667"
    end
  end

  def install
    bin.install "bb"
  end
end
