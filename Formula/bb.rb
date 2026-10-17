class Bb < Formula
  desc "BugBarn"
  homepage "https://github.com/wiebe-xyz/bugbarn"
  version "0.236.267"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://webwiebe.nl/brew/bb-darwin-amd64-0.236.267.tar.gz"
      sha256 "0c0f1894ec71bf5026545cbc3ed3b45b7f238667ee4765c0f3d5beae42bb949b"
    elsif Hardware::CPU.arm?
      url "https://webwiebe.nl/brew/bb-darwin-arm64-0.236.267.tar.gz"
      sha256 "514e3e0c234c6e5b2df0f6b220113d7bad7b73e0f3e6e58137957743a667da74"
    end
  end

  def install
    bin.install "bb"
  end
end
