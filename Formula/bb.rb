class Bb < Formula
  desc "BugBarn"
  homepage "https://github.com/wiebe-xyz/bugbarn"
  version "0.236.326"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://webwiebe.nl/brew/bb-darwin-amd64-0.236.326.tar.gz"
      sha256 "580a42d7f836698a9a743813e22cdae8b667ffbd8c0fa8cf71debb9fbde3487e"
    elsif Hardware::CPU.arm?
      url "https://webwiebe.nl/brew/bb-darwin-arm64-0.236.326.tar.gz"
      sha256 "fbb6fe308d6e7525e0078c09b6c02950a2c4fa868308d96e2b4fa8ed372e632b"
    end
  end

  def install
    bin.install "bb"
  end
end
