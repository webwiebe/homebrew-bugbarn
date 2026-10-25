class Bb < Formula
  desc "BugBarn"
  homepage "https://github.com/wiebe-xyz/bugbarn"
  version "0.236.284"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://webwiebe.nl/brew/bb-darwin-amd64-0.236.284.tar.gz"
      sha256 "041b27f3bad67de176f69bcc406c2cae9fd618e894c2ba5f5c5426b7929f3908"
    elsif Hardware::CPU.arm?
      url "https://webwiebe.nl/brew/bb-darwin-arm64-0.236.284.tar.gz"
      sha256 "60463ea22326be9a900d1424d7819e1aa8613808d61108c232b1e0d0840f1ab2"
    end
  end

  def install
    bin.install "bb"
  end
end
