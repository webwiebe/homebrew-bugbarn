class Bb < Formula
  desc "BugBarn"
  homepage "https://github.com/wiebe-xyz/bugbarn"
  version "0.236.118"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://webwiebe.nl/brew/bb-darwin-amd64-0.236.118.tar.gz"
      sha256 "4268a87ca8f40ac711c6fe41b6064db7fa91043c07a116258a80fb072887a1d5"
    elsif Hardware::CPU.arm?
      url "https://webwiebe.nl/brew/bb-darwin-arm64-0.236.118.tar.gz"
      sha256 "e9727d6e49ca3a0743fe21f69dc46b7538cbafc2dfeb42532f406f08b4db4f19"
    end
  end

  def install
    bin.install "bb"
  end
end
