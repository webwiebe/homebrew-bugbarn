class Bb < Formula
  desc "CLI client for BugBarn error tracking"
  homepage "https://github.com/wiebe-xyz/bugbarn"
  version "0.5.78"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://webwiebe.nl/brew/bb-darwin-amd64-0.5.78.tar.gz"
      sha256 "d4c75ac14ea040eaca848353780dc37a0faca8e95ca6912b37b11bbdea36c00f"
    elsif Hardware::CPU.arm?
      url "https://webwiebe.nl/brew/bb-darwin-arm64-0.5.78.tar.gz"
      sha256 "e726f91faf62ce970ca1c474600009a864073dc68887dd2d351f400de97f2a72"
    end
  end

  def install
    bin.install "bb"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/bb version")
  end
end
