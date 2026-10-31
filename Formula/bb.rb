class Bb < Formula
  desc "BugBarn"
  homepage "https://github.com/wiebe-xyz/bugbarn"
  version "0.236.308"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://webwiebe.nl/brew/bb-darwin-amd64-0.236.308.tar.gz"
      sha256 "c6be71bd6788d9c1571bd072639df46db60180d9dd371d638a17a2ad4d9970f4"
    elsif Hardware::CPU.arm?
      url "https://webwiebe.nl/brew/bb-darwin-arm64-0.236.308.tar.gz"
      sha256 "b739bd4787c80d4cb3a083b5304aa08434ee8adb59897be51cecc013f3d0c214"
    end
  end

  def install
    bin.install "bb"
  end
end
