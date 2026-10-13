class Bb < Formula
  desc "BugBarn"
  homepage "https://github.com/wiebe-xyz/bugbarn"
  version "0.236.241"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://webwiebe.nl/brew/bb-darwin-amd64-0.236.241.tar.gz"
      sha256 "40a352f58415fb7baf00475137d5157a6746bca0cfc88fe3b2930717c09c32f6"
    elsif Hardware::CPU.arm?
      url "https://webwiebe.nl/brew/bb-darwin-arm64-0.236.241.tar.gz"
      sha256 "2be97fb22574b5ebfc0591dfb162236d6c8d91309ad931f62079e413712f6133"
    end
  end

  def install
    bin.install "bb"
  end
end
