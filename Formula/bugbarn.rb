class Bugbarn < Formula
  desc "BugBarn"
  homepage "https://github.com/wiebe-xyz/bugbarn"
  version "0.236.302"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://webwiebe.nl/brew/bugbarn-darwin-amd64-0.236.302.tar.gz"
      sha256 "ade4bc04de1109ebdb51edcde3f2905513cf175438727b626ff66379faa567ef"
    elsif Hardware::CPU.arm?
      url "https://webwiebe.nl/brew/bugbarn-darwin-arm64-0.236.302.tar.gz"
      sha256 "c18ebb660edbde132edf96f8b4e6d0d4d13e9ee906808374e3889214d788fbc7"
    end
  end

  def install
    bin.install "bugbarn"
  end
end
