class Bb < Formula
  desc "BugBarn"
  homepage "https://github.com/wiebe-xyz/bugbarn"
  version "0.236.394"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://webwiebe.nl/brew/bb-darwin-amd64-0.236.394.tar.gz"
      sha256 "9b0f9381cd3e44902d41df6e14acd92d6c5f22c52ed6d2beebcca9a51b32fe2b"
    elsif Hardware::CPU.arm?
      url "https://webwiebe.nl/brew/bb-darwin-arm64-0.236.394.tar.gz"
      sha256 "d8f770934baa85a384d59746faf3782645947c215d6ba34753880518db8a014f"
    end
  end

  def install
    bin.install "bb"
  end
end
