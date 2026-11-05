class Bugbarn < Formula
  desc "BugBarn"
  homepage "https://github.com/wiebe-xyz/bugbarn"
  version "0.236.323"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://webwiebe.nl/brew/bugbarn-darwin-amd64-0.236.323.tar.gz"
      sha256 "fbe4a63cd6a5d78be4d659190580b5819307ca10be2b6509aed638161c454bb5"
    elsif Hardware::CPU.arm?
      url "https://webwiebe.nl/brew/bugbarn-darwin-arm64-0.236.323.tar.gz"
      sha256 "e707281ea81401cda74243bd897c972f98e2df6f008b0a70cad2d7c948f4d5f2"
    end
  end

  def install
    bin.install "bugbarn"
  end
end
