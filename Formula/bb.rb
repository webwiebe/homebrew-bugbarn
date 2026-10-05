class Bb < Formula
  desc "BugBarn"
  homepage "https://github.com/wiebe-xyz/bugbarn"
  version "0.236.210"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://webwiebe.nl/brew/bb-darwin-amd64-0.236.210.tar.gz"
      sha256 "baa329072f1f970f0c43cc7671e9fa39a903992b7b2cc8afc4dfc5ef56c48b23"
    elsif Hardware::CPU.arm?
      url "https://webwiebe.nl/brew/bb-darwin-arm64-0.236.210.tar.gz"
      sha256 "4e2934cbc008cbba38a0fb09287f49527cf1b371d5ec539d97e5c9696cf2732b"
    end
  end

  def install
    bin.install "bb"
  end
end
