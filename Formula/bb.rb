class Bb < Formula
  desc "BugBarn"
  homepage "https://github.com/wiebe-xyz/bugbarn"
  version "0.236.387"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://webwiebe.nl/brew/bb-darwin-amd64-0.236.387.tar.gz"
      sha256 "788b00491bee0cdde9b7fa3e0cfbdee609532f1580e833b2e3bab5e8a6c42fed"
    elsif Hardware::CPU.arm?
      url "https://webwiebe.nl/brew/bb-darwin-arm64-0.236.387.tar.gz"
      sha256 "40d69dd15492923e2257a4bcdfdc2a9be66e3f75dbe036570b688b5d12b4fb31"
    end
  end

  def install
    bin.install "bb"
  end
end
