class Bb < Formula
  desc "BugBarn"
  homepage "https://github.com/wiebe-xyz/bugbarn"
  version "0.236.252"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://webwiebe.nl/brew/bb-darwin-amd64-0.236.252.tar.gz"
      sha256 "c720ea57fdbfb8b588d46c2df1ce0cd4780a1c61f00183427b2b5a897fce382f"
    elsif Hardware::CPU.arm?
      url "https://webwiebe.nl/brew/bb-darwin-arm64-0.236.252.tar.gz"
      sha256 "20b3e3ce093b0ed1b220724ad20d5129899df900af7e3c0414271fe7b16ef0f2"
    end
  end

  def install
    bin.install "bb"
  end
end
