class Bb < Formula
  desc "BugBarn"
  homepage "https://github.com/wiebe-xyz/bugbarn"
  version "0.236.328"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://webwiebe.nl/brew/bb-darwin-amd64-0.236.328.tar.gz"
      sha256 "f5783269456ba3ad86c356e62d96bf2ece369a199cc86b658e20bf6ce5c24111"
    elsif Hardware::CPU.arm?
      url "https://webwiebe.nl/brew/bb-darwin-arm64-0.236.328.tar.gz"
      sha256 "e219000cef096724ee035127e8ddadc8eff49de7eee9c1851fd50aebce4a9dde"
    end
  end

  def install
    bin.install "bb"
  end
end
