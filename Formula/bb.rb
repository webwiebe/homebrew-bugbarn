class Bb < Formula
  desc "BugBarn"
  homepage "https://github.com/wiebe-xyz/bugbarn"
  version "0.236.201"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://webwiebe.nl/brew/bb-darwin-amd64-0.236.201.tar.gz"
      sha256 "2ac4561ad450c52c219bbdb896be68ee6af4acdf498d0dae73ce40fe472ca06d"
    elsif Hardware::CPU.arm?
      url "https://webwiebe.nl/brew/bb-darwin-arm64-0.236.201.tar.gz"
      sha256 "de9bc101214906392884f1fab84b8279997d7a3745692331f80f9456035600b8"
    end
  end

  def install
    bin.install "bb"
  end
end
