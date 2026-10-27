class Bb < Formula
  desc "BugBarn"
  homepage "https://github.com/wiebe-xyz/bugbarn"
  version "0.236.294"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://webwiebe.nl/brew/bb-darwin-amd64-0.236.294.tar.gz"
      sha256 "d59086a7ae619cbfe300d1603b6062a0d56e82542b26c43f5d7d0b9e9a28f070"
    elsif Hardware::CPU.arm?
      url "https://webwiebe.nl/brew/bb-darwin-arm64-0.236.294.tar.gz"
      sha256 "101d097b33630b957604f030a78f457723f847aad60d93316489ee9db1ff58a0"
    end
  end

  def install
    bin.install "bb"
  end
end
