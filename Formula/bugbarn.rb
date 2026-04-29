class Bugbarn < Formula
  desc "Self-hosted error tracking server"
  homepage "https://github.com/wiebe-xyz/bugbarn"
  version "0.4.5"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://webwiebe.nl/brew/bugbarn-darwin-amd64-0.4.5.tar.gz"
      sha256 "31202e307503094c7931e2b8e2d4f5d995b417741ebf5781dd0c8bc3e60dcc42"
    elsif Hardware::CPU.arm?
      url "https://webwiebe.nl/brew/bugbarn-darwin-arm64-0.4.5.tar.gz"
      sha256 "3a4282f3ebaa18fb7f1d67b5424067b5fb6f53f509b5c458c5da73cf5e270c7f"
    end
  end

  def install
    bin.install "bugbarn"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/bugbarn version")
  end
end
