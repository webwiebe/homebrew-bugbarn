class Bb < Formula
  desc "BugBarn"
  homepage "https://github.com/wiebe-xyz/bugbarn"
  version "0.236.322"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://webwiebe.nl/brew/bb-darwin-amd64-0.236.322.tar.gz"
      sha256 "91151d9377e54b78cb997a54e71d8cc92cbb52c22ac9c4ef5a8fe9b5b8de5d0d"
    elsif Hardware::CPU.arm?
      url "https://webwiebe.nl/brew/bb-darwin-arm64-0.236.322.tar.gz"
      sha256 "15350b0a40404d9c84ecfce5cb4a9678c0442f924b630f72eb417d459ab8e9c9"
    end
  end

  def install
    bin.install "bb"
  end
end
