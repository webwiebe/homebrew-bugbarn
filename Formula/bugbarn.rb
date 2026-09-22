class Bugbarn < Formula
  desc "BugBarn"
  homepage "https://github.com/wiebe-xyz/bugbarn"
  version "0.236.188"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://webwiebe.nl/brew/bugbarn-darwin-amd64-0.236.188.tar.gz"
      sha256 "439ae658e96177e3c19c0b4a358f12b09ea82f096478584b7f899df6db91f68d"
    elsif Hardware::CPU.arm?
      url "https://webwiebe.nl/brew/bugbarn-darwin-arm64-0.236.188.tar.gz"
      sha256 "e0c81374ae0420aa7198a35659b041eace4174d7bb9c8491df2c1dd7f8f6fe81"
    end
  end

  def install
    bin.install "bugbarn"
  end
end
