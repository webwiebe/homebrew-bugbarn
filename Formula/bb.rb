class Bb < Formula
  desc "BugBarn"
  homepage "https://github.com/wiebe-xyz/bugbarn"
  version "0.236.247"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://webwiebe.nl/brew/bb-darwin-amd64-0.236.247.tar.gz"
      sha256 "b363e253197266a594f7f3d06bdb2fc14279017a0526e5a612daf559ed9a71a0"
    elsif Hardware::CPU.arm?
      url "https://webwiebe.nl/brew/bb-darwin-arm64-0.236.247.tar.gz"
      sha256 "ba4f64ef0051d96f61351edc38c4637184dfc3f30e7a022bbd6f29aafae01e56"
    end
  end

  def install
    bin.install "bb"
  end
end
