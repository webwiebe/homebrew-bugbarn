class Bb < Formula
  desc "CLI client for BugBarn error tracking"
  homepage "https://github.com/wiebe-xyz/bugbarn"
  version "0.236.91"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://webwiebe.nl/brew/bb-darwin-amd64-0.236.91.tar.gz"
      sha256 "61caf2de958559c6d6b9cebfca9a22e15f00150af8541e924e80935d880997a2"
    elsif Hardware::CPU.arm?
      url "https://webwiebe.nl/brew/bb-darwin-arm64-0.236.91.tar.gz"
      sha256 "a7e90dddbe36874f5eb372052b51c5c3814f90c1e7e7d9d5034b4f79b1da7c73"
    end
  end

  def install
    bin.install "bb"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/bb version")
  end
end
