class Bb < Formula
  desc "BugBarn"
  homepage "https://github.com/wiebe-xyz/bugbarn"
  version "0.236.386"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://webwiebe.nl/brew/bb-darwin-amd64-0.236.386.tar.gz"
      sha256 "45665211c904b8b854a252adbf372efe81b942a8c2945f62899953668f3b50a3"
    elsif Hardware::CPU.arm?
      url "https://webwiebe.nl/brew/bb-darwin-arm64-0.236.386.tar.gz"
      sha256 "374e22704cefa57a3d4fd44f0591717b3fb21ad87cc9e151c38a296e90a25469"
    end
  end

  def install
    bin.install "bb"
  end
end
