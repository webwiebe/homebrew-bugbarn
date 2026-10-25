class Bugbarn < Formula
  desc "BugBarn"
  homepage "https://github.com/wiebe-xyz/bugbarn"
  version "0.236.281"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://webwiebe.nl/brew/bugbarn-darwin-amd64-0.236.281.tar.gz"
      sha256 "66cf7e01f7593201237c0f479e3ba79145deac51aeec37aa2b1fe80d2e15512a"
    elsif Hardware::CPU.arm?
      url "https://webwiebe.nl/brew/bugbarn-darwin-arm64-0.236.281.tar.gz"
      sha256 "865dacd8d0e1c39eb3d63989505b656659a8dfa4442930e80d51d1a42c5c205c"
    end
  end

  def install
    bin.install "bugbarn"
  end
end
