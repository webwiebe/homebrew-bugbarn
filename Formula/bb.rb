class Bb < Formula
  desc "BugBarn"
  homepage "https://github.com/wiebe-xyz/bugbarn"
  version "0.236.351"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://webwiebe.nl/brew/bb-darwin-amd64-0.236.351.tar.gz"
      sha256 "ae2f91329eb64c8962397f32b1453bf4588e693e64b8a9fa4c8aa746e8970980"
    elsif Hardware::CPU.arm?
      url "https://webwiebe.nl/brew/bb-darwin-arm64-0.236.351.tar.gz"
      sha256 "6a46335ae716a031118c23785be44ca19a2b9bb25486866d57f860004f9bbc4d"
    end
  end

  def install
    bin.install "bb"
  end
end
