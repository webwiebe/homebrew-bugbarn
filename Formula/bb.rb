class Bb < Formula
  desc "BugBarn"
  homepage "https://github.com/wiebe-xyz/bugbarn"
  version "0.236.378"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://webwiebe.nl/brew/bb-darwin-amd64-0.236.378.tar.gz"
      sha256 "f68e71828904d00794171fc625c681c5fc22652fe2ed159853f30134196088a3"
    elsif Hardware::CPU.arm?
      url "https://webwiebe.nl/brew/bb-darwin-arm64-0.236.378.tar.gz"
      sha256 "bcc161c61a7c5ad2e48d96f5b1a3a066bd440fc8efbcc3a383558417d674b3d4"
    end
  end

  def install
    bin.install "bb"
  end
end
