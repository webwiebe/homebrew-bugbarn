class Bugbarn < Formula
  desc "Self-hosted error tracking server"
  homepage "https://github.com/wiebe-xyz/bugbarn"
  version "0.236.56"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://webwiebe.nl/brew/bugbarn-darwin-amd64-0.236.56.tar.gz"
      sha256 "e326c7680a7216430365d3f98630e728febf851db6e5fb0c2eeb14d3d1cfa630"
    elsif Hardware::CPU.arm?
      url "https://webwiebe.nl/brew/bugbarn-darwin-arm64-0.236.56.tar.gz"
      sha256 "140a5e516d7344643db09fd0fa03d7d8ab3b32914fc7ae470fa0fe28d2fcb5b9"
    end
  end

  def install
    bin.install "bugbarn"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/bugbarn version")
  end
end
