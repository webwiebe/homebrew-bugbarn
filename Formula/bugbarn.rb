class Bugbarn < Formula
  desc "BugBarn"
  homepage "https://github.com/wiebe-xyz/bugbarn"
  version "0.236.168"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://webwiebe.nl/brew/bugbarn-darwin-amd64-0.236.168.tar.gz"
      sha256 "ab02c428730a91395a148c6eb4d820fdab765d46e2851ef7255daacb885c9b69"
    elsif Hardware::CPU.arm?
      url "https://webwiebe.nl/brew/bugbarn-darwin-arm64-0.236.168.tar.gz"
      sha256 "72ce43afa085ab0ab66c62758466111bf99dd19e8abd89550658e03917ca8b24"
    end
  end

  def install
    bin.install "bugbarn"
  end
end
