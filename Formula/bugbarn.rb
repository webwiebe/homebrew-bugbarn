class Bugbarn < Formula
  desc "BugBarn"
  homepage "https://github.com/wiebe-xyz/bugbarn"
  version "0.236.208"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://webwiebe.nl/brew/bugbarn-darwin-amd64-0.236.208.tar.gz"
      sha256 "c79f20d41ce2e8a33f2dcdbca1ffe38989e73ad1e56427d6168ba95f404db4a2"
    elsif Hardware::CPU.arm?
      url "https://webwiebe.nl/brew/bugbarn-darwin-arm64-0.236.208.tar.gz"
      sha256 "bbcb9cba2c4690c01168ae0d5d24796f62eecb2f2f58ca7f1170a08a96908183"
    end
  end

  def install
    bin.install "bugbarn"
  end
end
