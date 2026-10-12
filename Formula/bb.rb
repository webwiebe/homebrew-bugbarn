class Bb < Formula
  desc "BugBarn"
  homepage "https://github.com/wiebe-xyz/bugbarn"
  version "0.236.221"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://webwiebe.nl/brew/bb-darwin-amd64-0.236.221.tar.gz"
      sha256 "d4c7b477a0f7562e5162e85a9a8f80111801a203658067b41f01e8f9a3b5254b"
    elsif Hardware::CPU.arm?
      url "https://webwiebe.nl/brew/bb-darwin-arm64-0.236.221.tar.gz"
      sha256 "7d8e4b6aa713744d88a470512c185bf794836632e879586f7ecb9d81dcbb3d96"
    end
  end

  def install
    bin.install "bb"
  end
end
