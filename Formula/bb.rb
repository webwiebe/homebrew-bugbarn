class Bb < Formula
  desc "BugBarn"
  homepage "https://github.com/wiebe-xyz/bugbarn"
  version "0.236.296"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://webwiebe.nl/brew/bb-darwin-amd64-0.236.296.tar.gz"
      sha256 "e173b7488e39f140c2c2ebd35a941043396a4db0fe21d80086a1b2895e3bf6e4"
    elsif Hardware::CPU.arm?
      url "https://webwiebe.nl/brew/bb-darwin-arm64-0.236.296.tar.gz"
      sha256 "ef176e01ba75767e1683c4e033f57886a76e26489a51133cf85cc4bef0004a3c"
    end
  end

  def install
    bin.install "bb"
  end
end
