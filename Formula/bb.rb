class Bb < Formula
  desc "BugBarn"
  homepage "https://github.com/wiebe-xyz/bugbarn"
  version "0.236.157"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://webwiebe.nl/brew/bb-darwin-amd64-0.236.157.tar.gz"
      sha256 "c3f9ccb4737a31ef354de339e657f5915cd3a2fb569236562901c22c4e13630e"
    elsif Hardware::CPU.arm?
      url "https://webwiebe.nl/brew/bb-darwin-arm64-0.236.157.tar.gz"
      sha256 "c8216055c0fa7f088630af13c2e1b4321ad6f0c55c2dab4f40b57586739f2b59"
    end
  end

  def install
    bin.install "bb"
  end
end
