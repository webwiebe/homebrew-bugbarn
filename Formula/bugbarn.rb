class Bugbarn < Formula
  desc "BugBarn"
  homepage "https://github.com/wiebe-xyz/bugbarn"
  version "0.236.334"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://webwiebe.nl/brew/bugbarn-darwin-amd64-0.236.334.tar.gz"
      sha256 "6de34d74555087ee9b2acca9a8e14354c9e3573144528f4133e717bc80b503c0"
    elsif Hardware::CPU.arm?
      url "https://webwiebe.nl/brew/bugbarn-darwin-arm64-0.236.334.tar.gz"
      sha256 "e62352c0193b70e2b005b0ac2130904f5cc11f9ae5966ee8e45d28cf1949fbd6"
    end
  end

  def install
    bin.install "bugbarn"
  end
end
