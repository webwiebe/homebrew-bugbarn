class Bb < Formula
  desc "BugBarn"
  homepage "https://github.com/wiebe-xyz/bugbarn"
  version "0.236.260"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://webwiebe.nl/brew/bb-darwin-amd64-0.236.260.tar.gz"
      sha256 "1cad7f53d3a3dc50631d858c5c4f1639064ad871c5ad13914e5fe4a902066ce1"
    elsif Hardware::CPU.arm?
      url "https://webwiebe.nl/brew/bb-darwin-arm64-0.236.260.tar.gz"
      sha256 "9a0506c368fb771d92e9ba0397f1e0473e1bd9c1b87a8247757a27f505ef679b"
    end
  end

  def install
    bin.install "bb"
  end
end
