class Bugbarn < Formula
  desc "BugBarn"
  homepage "https://github.com/wiebe-xyz/bugbarn"
  version "0.236.325"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://webwiebe.nl/brew/bugbarn-darwin-amd64-0.236.325.tar.gz"
      sha256 "a8b6f7fc8bf8aa8b08307f0b869a2b27d70c5067f3e7d4351f05f83970bdd051"
    elsif Hardware::CPU.arm?
      url "https://webwiebe.nl/brew/bugbarn-darwin-arm64-0.236.325.tar.gz"
      sha256 "779785ac72b4e921b1d99adbe51e765e6a738eda5d523f253ea358406cb2038e"
    end
  end

  def install
    bin.install "bugbarn"
  end
end
