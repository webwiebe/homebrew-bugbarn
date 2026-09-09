class Bugbarn < Formula
  desc "BugBarn"
  homepage "https://github.com/wiebe-xyz/bugbarn"
  version "0.236.181"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://webwiebe.nl/brew/bugbarn-darwin-amd64-0.236.181.tar.gz"
      sha256 "42ad0b903a8020f31d44c784e708bae8f3d1d705865424779d94fa2bb7556892"
    elsif Hardware::CPU.arm?
      url "https://webwiebe.nl/brew/bugbarn-darwin-arm64-0.236.181.tar.gz"
      sha256 "eef101e6e97a55e90ea59b2308ae2d2133faeb0df43da049aae91251c4f53296"
    end
  end

  def install
    bin.install "bugbarn"
  end
end
