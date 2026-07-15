class Bugbarn < Formula
  desc "BugBarn"
  homepage "https://github.com/wiebe-xyz/bugbarn"
  version "0.236.143"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://webwiebe.nl/brew/bugbarn-darwin-amd64-0.236.143.tar.gz"
      sha256 "71abd82d19d85370b87aa78b2c511c4bb6814453ba70a99233dac233fa97fb96"
    elsif Hardware::CPU.arm?
      url "https://webwiebe.nl/brew/bugbarn-darwin-arm64-0.236.143.tar.gz"
      sha256 "8ccdc504591eea60e36cda75c9679d75efc6a53760328f52292cf238ff88b741"
    end
  end

  def install
    bin.install "bugbarn"
  end
end
