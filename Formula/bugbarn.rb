class Bugbarn < Formula
  desc "BugBarn"
  homepage "https://github.com/wiebe-xyz/bugbarn"
  version "0.236.373"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://webwiebe.nl/brew/bugbarn-darwin-amd64-0.236.373.tar.gz"
      sha256 "6d062ad2f4b15cec04f3ad45110084a37abf6f5ccdf34cad8610dee675561f41"
    elsif Hardware::CPU.arm?
      url "https://webwiebe.nl/brew/bugbarn-darwin-arm64-0.236.373.tar.gz"
      sha256 "e47bf4e6232041436b774ab3657a3ae43d197015ae1f048b0260c2a904869342"
    end
  end

  def install
    bin.install "bugbarn"
  end
end
