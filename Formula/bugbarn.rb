class Bugbarn < Formula
  desc "BugBarn"
  homepage "https://github.com/wiebe-xyz/bugbarn"
  version "0.236.247"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://webwiebe.nl/brew/bugbarn-darwin-amd64-0.236.247.tar.gz"
      sha256 "3bf271091263a23ee889e86b823a73963717603b1f976f2d2fd84c8f131dec33"
    elsif Hardware::CPU.arm?
      url "https://webwiebe.nl/brew/bugbarn-darwin-arm64-0.236.247.tar.gz"
      sha256 "cd678334cae77e0d4e40cd89e32722c47fad7e63f74b35cd878d9630c645e62b"
    end
  end

  def install
    bin.install "bugbarn"
  end
end
