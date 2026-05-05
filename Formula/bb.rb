class Bb < Formula
  desc "CLI client for BugBarn error tracking"
  homepage "https://github.com/wiebe-xyz/bugbarn"
  version "0.5.44"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://webwiebe.nl/brew/bb-darwin-amd64-0.5.44.tar.gz"
      sha256 "0615917e911e49b562411e5b6ef265e6627acaef5e8e78878e7ed67e10a4e9d9"
    elsif Hardware::CPU.arm?
      url "https://webwiebe.nl/brew/bb-darwin-arm64-0.5.44.tar.gz"
      sha256 "5c024c5ad1a18c97ba6ac7a665c7d46c6cb44a09d44cfc2c97637280c4bf12b1"
    end
  end

  def install
    bin.install "bb"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/bb version")
  end
end
