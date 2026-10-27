class Bb < Formula
  desc "BugBarn"
  homepage "https://github.com/wiebe-xyz/bugbarn"
  version "0.236.288"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://webwiebe.nl/brew/bb-darwin-amd64-0.236.288.tar.gz"
      sha256 "0791aa4904e515888ba7a6ec7ebbf255cb022e48dc21f4cdbde5e217267f1e68"
    elsif Hardware::CPU.arm?
      url "https://webwiebe.nl/brew/bb-darwin-arm64-0.236.288.tar.gz"
      sha256 "da6dc855b2291203d3bfdb98bcdf6854fd70387ce3ba32de10bb95e56354796a"
    end
  end

  def install
    bin.install "bb"
  end
end
