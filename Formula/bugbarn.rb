class Bugbarn < Formula
  desc "BugBarn"
  homepage "https://github.com/wiebe-xyz/bugbarn"
  version "0.236.385"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://webwiebe.nl/brew/bugbarn-darwin-amd64-0.236.385.tar.gz"
      sha256 "6d81488db42819bff906e9770306d44a8ed5db00b68fac0385b483ae04b5cd9f"
    elsif Hardware::CPU.arm?
      url "https://webwiebe.nl/brew/bugbarn-darwin-arm64-0.236.385.tar.gz"
      sha256 "7d50446bb8e210763a7ce5edfeef002bbc87cce3c2c9e75ff5730f532bdc36b0"
    end
  end

  def install
    bin.install "bugbarn"
  end
end
