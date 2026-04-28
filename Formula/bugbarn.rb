class Bugbarn < Formula
  desc "Self-hosted error tracking server"
  homepage "https://github.com/wiebe-xyz/bugbarn"
  version "0.3.6"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://webwiebe.nl/brew/bugbarn-darwin-amd64-0.3.6.tar.gz"
      sha256 "b8186ece30144c28c9f075624ef7ab370548f7d21f3b5cf5f35bc5102f0a3acc"
    elsif Hardware::CPU.arm?
      url "https://webwiebe.nl/brew/bugbarn-darwin-arm64-0.3.6.tar.gz"
      sha256 "ca8b74de7cd024f3790aea22d825098c3ee8dd1e1e8cd4a6f1991565c3e0d3eb"
    end
  end

  def install
    bin.install "bugbarn"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/bugbarn version")
  end
end
