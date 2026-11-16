class Bugbarn < Formula
  desc "BugBarn"
  homepage "https://github.com/wiebe-xyz/bugbarn"
  version "0.236.371"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://webwiebe.nl/brew/bugbarn-darwin-amd64-0.236.371.tar.gz"
      sha256 "d01794364ef2559ed9c35101458505a2ac23c7876f7f1371c44a92cbc0e821fa"
    elsif Hardware::CPU.arm?
      url "https://webwiebe.nl/brew/bugbarn-darwin-arm64-0.236.371.tar.gz"
      sha256 "7a0b10b34067fc47336c46dae01bb28580a1cda1400f7c163fead6ad688d2341"
    end
  end

  def install
    bin.install "bugbarn"
  end
end
