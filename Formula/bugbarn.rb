class Bugbarn < Formula
  desc "BugBarn"
  homepage "https://github.com/wiebe-xyz/bugbarn"
  version "0.236.231"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://webwiebe.nl/brew/bugbarn-darwin-amd64-0.236.231.tar.gz"
      sha256 "da5ad1e386f3ad3413250f4208af4eccc5db57c0a6d8cd478139206e1d0a4612"
    elsif Hardware::CPU.arm?
      url "https://webwiebe.nl/brew/bugbarn-darwin-arm64-0.236.231.tar.gz"
      sha256 "f978dd2be54d2746cdcc766571d29865dabc933cce8f262e9b701b6aec4151c6"
    end
  end

  def install
    bin.install "bugbarn"
  end
end
