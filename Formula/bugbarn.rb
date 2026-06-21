class Bugbarn < Formula
  desc "Self-hosted error tracking server"
  homepage "https://github.com/wiebe-xyz/bugbarn"
  version "0.236.87"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://webwiebe.nl/brew/bugbarn-darwin-amd64-0.236.87.tar.gz"
      sha256 "17c25069731c168daa2824c385916e044d2747ff56ae2a578bec591e88130327"
    elsif Hardware::CPU.arm?
      url "https://webwiebe.nl/brew/bugbarn-darwin-arm64-0.236.87.tar.gz"
      sha256 "bb6e5930ded2d9e2f6cdb557fb01ae75b6ce50cbc5b3a9bd4b2fea2697fcc591"
    end
  end

  def install
    bin.install "bugbarn"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/bugbarn version")
  end
end
