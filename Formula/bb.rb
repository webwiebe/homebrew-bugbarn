class Bb < Formula
  desc "BugBarn"
  homepage "https://github.com/wiebe-xyz/bugbarn"
  version "0.236.367"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://webwiebe.nl/brew/bb-darwin-amd64-0.236.367.tar.gz"
      sha256 "4237da97c6cb83c77ee5ac103e4e1940a88a5d6aa23dc8844de61b0573630002"
    elsif Hardware::CPU.arm?
      url "https://webwiebe.nl/brew/bb-darwin-arm64-0.236.367.tar.gz"
      sha256 "8e0105eae90e2d4a4b6adea6f91aa1b8a52439bfcdcb8ea7bdf721ed4736ba60"
    end
  end

  def install
    bin.install "bb"
  end
end
