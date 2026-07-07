class Bugbarn < Formula
  desc "BugBarn"
  homepage "https://github.com/wiebe-xyz/bugbarn"
  version "0.236.123"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://webwiebe.nl/brew/bugbarn-darwin-amd64-0.236.123.tar.gz"
      sha256 "7af38941c932611dafccee2d7003019896d3f5c526da7e1beadaf282b5554d90"
    elsif Hardware::CPU.arm?
      url "https://webwiebe.nl/brew/bugbarn-darwin-arm64-0.236.123.tar.gz"
      sha256 "11ad0696197285d9a5662a872fb61b223181973b503325de0c975852a09cb6ed"
    end
  end

  def install
    bin.install "bugbarn"
  end
end
