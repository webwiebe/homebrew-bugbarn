class Bb < Formula
  desc "BugBarn"
  homepage "https://github.com/wiebe-xyz/bugbarn"
  version "0.236.185"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://webwiebe.nl/brew/bb-darwin-amd64-0.236.185.tar.gz"
      sha256 "0f36b834839b13109224a5abc58fdfe803643b5ad0d97ee9c5d6df5fd5728faf"
    elsif Hardware::CPU.arm?
      url "https://webwiebe.nl/brew/bb-darwin-arm64-0.236.185.tar.gz"
      sha256 "26c7e1e9958aecc7ee4534cd65379bfde7c11bc59948db8d84fc0412baf4b6e1"
    end
  end

  def install
    bin.install "bb"
  end
end
