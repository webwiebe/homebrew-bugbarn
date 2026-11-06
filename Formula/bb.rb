class Bb < Formula
  desc "BugBarn"
  homepage "https://github.com/wiebe-xyz/bugbarn"
  version "0.236.336"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://webwiebe.nl/brew/bb-darwin-amd64-0.236.336.tar.gz"
      sha256 "88c4c6f95542081fa6b7f3600f02906aac18ad3267cd8ea0e4a52fa2c536e550"
    elsif Hardware::CPU.arm?
      url "https://webwiebe.nl/brew/bb-darwin-arm64-0.236.336.tar.gz"
      sha256 "190214a11a4d04c58f152b5f3cd91d8bd95007c170226a4d7c0f0b393d2221f5"
    end
  end

  def install
    bin.install "bb"
  end
end
