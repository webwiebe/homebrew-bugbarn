class Bb < Formula
  desc "CLI client for BugBarn error tracking"
  homepage "https://github.com/wiebe-xyz/bugbarn"
  version "0.236.4"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://webwiebe.nl/brew/bb-darwin-amd64-0.236.4.tar.gz"
      sha256 "9fc285f4e95cc4354e51e8a0ff719548d8b6bc10fe3690789ce63da8086930fb"
    elsif Hardware::CPU.arm?
      url "https://webwiebe.nl/brew/bb-darwin-arm64-0.236.4.tar.gz"
      sha256 "770068d62e339e346d697774b4bdef2a6aac1793d771bfaf5748c6d5ee23a7ce"
    end
  end

  def install
    bin.install "bb"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/bb version")
  end
end
