class Bb < Formula
  desc "BugBarn"
  homepage "https://github.com/wiebe-xyz/bugbarn"
  version "0.236.181"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://webwiebe.nl/brew/bb-darwin-amd64-0.236.181.tar.gz"
      sha256 "5d4280b23927f977be4be87a6767acdb52c4d4540ab3d83ed7dcc32a7daced2a"
    elsif Hardware::CPU.arm?
      url "https://webwiebe.nl/brew/bb-darwin-arm64-0.236.181.tar.gz"
      sha256 "4b5662fb314c3bb41a3831f1094b59f76ece0336c424744a7faaf1ecd1ef6a33"
    end
  end

  def install
    bin.install "bb"
  end
end
