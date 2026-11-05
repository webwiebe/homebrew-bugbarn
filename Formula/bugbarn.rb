class Bugbarn < Formula
  desc "BugBarn"
  homepage "https://github.com/wiebe-xyz/bugbarn"
  version "0.236.326"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://webwiebe.nl/brew/bugbarn-darwin-amd64-0.236.326.tar.gz"
      sha256 "19f57c3438d41c4c71a3fcb7784d9fe53cd6396d9f08968f7935af2ed6fed7a4"
    elsif Hardware::CPU.arm?
      url "https://webwiebe.nl/brew/bugbarn-darwin-arm64-0.236.326.tar.gz"
      sha256 "a22510914f9420489055a0f3ba5d18df1f5026be33aa1236fa0f093d97d48f3b"
    end
  end

  def install
    bin.install "bugbarn"
  end
end
