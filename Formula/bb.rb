class Bb < Formula
  desc "BugBarn"
  homepage "https://github.com/wiebe-xyz/bugbarn"
  version "0.236.274"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://webwiebe.nl/brew/bb-darwin-amd64-0.236.274.tar.gz"
      sha256 "2646accdacce8d46d6c342bb5b1b9e10bce3c36f94bd8e7419d75db772a5718d"
    elsif Hardware::CPU.arm?
      url "https://webwiebe.nl/brew/bb-darwin-arm64-0.236.274.tar.gz"
      sha256 "c67c30ce8e2dc32620a8e4ded35f7fe7a8ba57ba5ed38e45df9818bd1780380b"
    end
  end

  def install
    bin.install "bb"
  end
end
