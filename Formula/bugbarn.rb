class Bugbarn < Formula
  desc "BugBarn"
  homepage "https://github.com/wiebe-xyz/bugbarn"
  version "0.236.351"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://webwiebe.nl/brew/bugbarn-darwin-amd64-0.236.351.tar.gz"
      sha256 "fba49b969095021cbe2e564268a2cb9680978bbbbea04f9d6c5272029d818f38"
    elsif Hardware::CPU.arm?
      url "https://webwiebe.nl/brew/bugbarn-darwin-arm64-0.236.351.tar.gz"
      sha256 "e71b9f991b41f0664754c31f47aca4b0953e4219edc78af6c5add305fcc5b3ae"
    end
  end

  def install
    bin.install "bugbarn"
  end
end
