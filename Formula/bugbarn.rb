class Bugbarn < Formula
  desc "BugBarn"
  homepage "https://github.com/wiebe-xyz/bugbarn"
  version "0.236.192"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://webwiebe.nl/brew/bugbarn-darwin-amd64-0.236.192.tar.gz"
      sha256 "7257258a062362b8e187eeaeeb99a706be24125497ad56afd9c1768e93428004"
    elsif Hardware::CPU.arm?
      url "https://webwiebe.nl/brew/bugbarn-darwin-arm64-0.236.192.tar.gz"
      sha256 "e0b775cfe5c80cccf301255584b5e14a1e2fedfda85dae13bd113cb7582c6244"
    end
  end

  def install
    bin.install "bugbarn"
  end
end
