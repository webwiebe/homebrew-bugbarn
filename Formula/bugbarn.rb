class Bugbarn < Formula
  desc "BugBarn"
  homepage "https://github.com/wiebe-xyz/bugbarn"
  version "0.236.270"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://webwiebe.nl/brew/bugbarn-darwin-amd64-0.236.270.tar.gz"
      sha256 "b9f7c4d1a42eaaf60a767168b07a5f362e655409c963f5bfb3dd33992c8cb797"
    elsif Hardware::CPU.arm?
      url "https://webwiebe.nl/brew/bugbarn-darwin-arm64-0.236.270.tar.gz"
      sha256 "cbdfba9ef957c804d6187a11cc168e65a0020d82891ec9e140df3eb8c9893582"
    end
  end

  def install
    bin.install "bugbarn"
  end
end
