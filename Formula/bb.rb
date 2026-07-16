class Bb < Formula
  desc "BugBarn"
  homepage "https://github.com/wiebe-xyz/bugbarn"
  version "0.236.147"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://webwiebe.nl/brew/bb-darwin-amd64-0.236.147.tar.gz"
      sha256 "f7d7fa38e61224bcb7621922ad9855caa265a9ac9206df394830c6d00ce0cc5d"
    elsif Hardware::CPU.arm?
      url "https://webwiebe.nl/brew/bb-darwin-arm64-0.236.147.tar.gz"
      sha256 "e0cc4873fda31fe74a2aae2e6a7a9072c5d9582aa9c5c91ae37c5976ed663e34"
    end
  end

  def install
    bin.install "bb"
  end
end
