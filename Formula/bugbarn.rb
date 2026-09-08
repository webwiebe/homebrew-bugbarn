class Bugbarn < Formula
  desc "BugBarn"
  homepage "https://github.com/wiebe-xyz/bugbarn"
  version "0.236.177"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://webwiebe.nl/brew/bugbarn-darwin-amd64-0.236.177.tar.gz"
      sha256 "aa7ec2f98ec0b6abd8532d6d1a28fbe3b5fa47cab2c4cad88d5d78d9812f47f1"
    elsif Hardware::CPU.arm?
      url "https://webwiebe.nl/brew/bugbarn-darwin-arm64-0.236.177.tar.gz"
      sha256 "d594a82b32330ce303a0a795bd809e057a88106fdb0f4023bd987c000e16ae6e"
    end
  end

  def install
    bin.install "bugbarn"
  end
end
