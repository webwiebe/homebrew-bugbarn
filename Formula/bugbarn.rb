class Bugbarn < Formula
  desc "BugBarn"
  homepage "https://github.com/wiebe-xyz/bugbarn"
  version "0.236.301"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://webwiebe.nl/brew/bugbarn-darwin-amd64-0.236.301.tar.gz"
      sha256 "5f18d1d334fe5b5f39d5d06b3a16b68c629968cc1e0a3c4dd1c3f1c3a3a9283d"
    elsif Hardware::CPU.arm?
      url "https://webwiebe.nl/brew/bugbarn-darwin-arm64-0.236.301.tar.gz"
      sha256 "6cfed736e1c3a1bbed66fa344a159c8d2ac642177a12645e87665766dbe45723"
    end
  end

  def install
    bin.install "bugbarn"
  end
end
