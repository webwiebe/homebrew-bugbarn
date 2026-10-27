class Bb < Formula
  desc "BugBarn"
  homepage "https://github.com/wiebe-xyz/bugbarn"
  version "0.236.297"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://webwiebe.nl/brew/bb-darwin-amd64-0.236.297.tar.gz"
      sha256 "78556006af130dd6e889019adf30fcf47998db3d74f08b7c278a148209aae7b9"
    elsif Hardware::CPU.arm?
      url "https://webwiebe.nl/brew/bb-darwin-arm64-0.236.297.tar.gz"
      sha256 "d12deaeea1a974bcdd10f81373911b1e4f1295a291f3b5b5f2af9574e9b7e5f0"
    end
  end

  def install
    bin.install "bb"
  end
end
