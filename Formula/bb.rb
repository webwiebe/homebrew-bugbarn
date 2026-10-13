class Bb < Formula
  desc "BugBarn"
  homepage "https://github.com/wiebe-xyz/bugbarn"
  version "0.236.238"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://webwiebe.nl/brew/bb-darwin-amd64-0.236.238.tar.gz"
      sha256 "fe100939ce719ee9ca0427f9d44a3560a50018c6419946cc1283497e465711fd"
    elsif Hardware::CPU.arm?
      url "https://webwiebe.nl/brew/bb-darwin-arm64-0.236.238.tar.gz"
      sha256 "d0ffd5adf6067c6ee997746a5517068c27d94df33032dcb5fd617e8585169573"
    end
  end

  def install
    bin.install "bb"
  end
end
