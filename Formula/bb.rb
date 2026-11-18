class Bb < Formula
  desc "BugBarn"
  homepage "https://github.com/wiebe-xyz/bugbarn"
  version "0.236.383"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://webwiebe.nl/brew/bb-darwin-amd64-0.236.383.tar.gz"
      sha256 "ddbd1d93dc7935711cad143c22a894287dc5b03c4c2f76a505bd07045ec3c07d"
    elsif Hardware::CPU.arm?
      url "https://webwiebe.nl/brew/bb-darwin-arm64-0.236.383.tar.gz"
      sha256 "ed5759bb645074addeeb22f4b1e16f89f6e0c120a225c894b450c8e842de3088"
    end
  end

  def install
    bin.install "bb"
  end
end
