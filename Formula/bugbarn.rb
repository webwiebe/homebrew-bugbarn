class Bugbarn < Formula
  desc "BugBarn"
  homepage "https://github.com/wiebe-xyz/bugbarn"
  version "0.236.259"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://webwiebe.nl/brew/bugbarn-darwin-amd64-0.236.259.tar.gz"
      sha256 "8256ab369d76f2d472c4f0590ab90375a17f8ad11eef6a2c8e42340577c09da6"
    elsif Hardware::CPU.arm?
      url "https://webwiebe.nl/brew/bugbarn-darwin-arm64-0.236.259.tar.gz"
      sha256 "44390acf3198a4dbd3ed904ebe48bf5e52288f1de659d0e69973083f57a72200"
    end
  end

  def install
    bin.install "bugbarn"
  end
end
