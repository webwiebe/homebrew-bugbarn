class Bugbarn < Formula
  desc "BugBarn"
  homepage "https://github.com/wiebe-xyz/bugbarn"
  version "0.236.180"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://webwiebe.nl/brew/bugbarn-darwin-amd64-0.236.180.tar.gz"
      sha256 "fb60636946931def5c3ae5a3aa791a22a9ffa1c15f9c27d2ea7506c1c385e810"
    elsif Hardware::CPU.arm?
      url "https://webwiebe.nl/brew/bugbarn-darwin-arm64-0.236.180.tar.gz"
      sha256 "69c3367c99560bc45cbebd441f4390c9bab6e0d986e24fc5f2fcc0a7ac0643d6"
    end
  end

  def install
    bin.install "bugbarn"
  end
end
