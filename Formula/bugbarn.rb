class Bugbarn < Formula
  desc "BugBarn"
  homepage "https://github.com/wiebe-xyz/bugbarn"
  version "0.236.144"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://webwiebe.nl/brew/bugbarn-darwin-amd64-0.236.144.tar.gz"
      sha256 "fd92a7925f9c2f772c36f74c6e56dc93754c39a805115c3c838a1c64db82de44"
    elsif Hardware::CPU.arm?
      url "https://webwiebe.nl/brew/bugbarn-darwin-arm64-0.236.144.tar.gz"
      sha256 "0f9c33165905c57544c684bf583c47abba923cf51f9b138a737ad47ef404dbfd"
    end
  end

  def install
    bin.install "bugbarn"
  end
end
