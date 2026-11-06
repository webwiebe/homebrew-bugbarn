class Bugbarn < Formula
  desc "BugBarn"
  homepage "https://github.com/wiebe-xyz/bugbarn"
  version "0.236.330"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://webwiebe.nl/brew/bugbarn-darwin-amd64-0.236.330.tar.gz"
      sha256 "cb099d83dc39eb76b422d41c1c73216b52341df09d5f8ef6a78fc15ba699b6ca"
    elsif Hardware::CPU.arm?
      url "https://webwiebe.nl/brew/bugbarn-darwin-arm64-0.236.330.tar.gz"
      sha256 "52883278573279aa8cc7ba47a12c90c26f73c9dc177f9116f25fb9d098934bcc"
    end
  end

  def install
    bin.install "bugbarn"
  end
end
