class Bugbarn < Formula
  desc "BugBarn"
  homepage "https://github.com/wiebe-xyz/bugbarn"
  version "0.236.225"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://webwiebe.nl/brew/bugbarn-darwin-amd64-0.236.225.tar.gz"
      sha256 "5e52dd5f6a68b52190e6724c6dfb71eb6c89a697869bcfdcc791581e5b47fdb8"
    elsif Hardware::CPU.arm?
      url "https://webwiebe.nl/brew/bugbarn-darwin-arm64-0.236.225.tar.gz"
      sha256 "c750cdebc3841d8aa77cbf4ea65d799775deb99e9efc3da4df06662d6744cec0"
    end
  end

  def install
    bin.install "bugbarn"
  end
end
