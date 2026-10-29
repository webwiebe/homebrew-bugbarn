class Bb < Formula
  desc "BugBarn"
  homepage "https://github.com/wiebe-xyz/bugbarn"
  version "0.236.303"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://webwiebe.nl/brew/bb-darwin-amd64-0.236.303.tar.gz"
      sha256 "43c7c7164a3b8c6e10a5bb49a4fb6e7d9db144e9876a97975f5aaf5013f5bdd4"
    elsif Hardware::CPU.arm?
      url "https://webwiebe.nl/brew/bb-darwin-arm64-0.236.303.tar.gz"
      sha256 "f3c968757a6e5045ff133e190a746cc04d0b621ab2f236c74e280962fa85d38e"
    end
  end

  def install
    bin.install "bb"
  end
end
