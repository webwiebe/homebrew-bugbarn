class Bb < Formula
  desc "BugBarn"
  homepage "https://github.com/wiebe-xyz/bugbarn"
  version "0.236.304"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://webwiebe.nl/brew/bb-darwin-amd64-0.236.304.tar.gz"
      sha256 "959f5bcb72f1035877ce39c13ceb43597e39250f31085afe11828a62d6682d1f"
    elsif Hardware::CPU.arm?
      url "https://webwiebe.nl/brew/bb-darwin-arm64-0.236.304.tar.gz"
      sha256 "3a220438af3528f23149a2ce3d08fe7922eb6c55dcfd5b7992c24f8bfc4fc9fd"
    end
  end

  def install
    bin.install "bb"
  end
end
