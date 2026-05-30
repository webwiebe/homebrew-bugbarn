class Bb < Formula
  desc "CLI client for BugBarn error tracking"
  homepage "https://github.com/wiebe-xyz/bugbarn"
  version "0.236.44"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://webwiebe.nl/brew/bb-darwin-amd64-0.236.44.tar.gz"
      sha256 "bea0957fb00d1489ddccd741aa414266fc5f2d0df7c314a51923687d46faf45b"
    elsif Hardware::CPU.arm?
      url "https://webwiebe.nl/brew/bb-darwin-arm64-0.236.44.tar.gz"
      sha256 "91cb21268151242b79ff00164c9fe700200bb4cbf66807e66b5f8602e7e09d61"
    end
  end

  def install
    bin.install "bb"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/bb version")
  end
end
