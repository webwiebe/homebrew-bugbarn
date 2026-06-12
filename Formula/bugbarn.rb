class Bugbarn < Formula
  desc "Self-hosted error tracking server"
  homepage "https://github.com/wiebe-xyz/bugbarn"
  version "0.236.77"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://webwiebe.nl/brew/bugbarn-darwin-amd64-0.236.77.tar.gz"
      sha256 "f7b2daabe64c451c00f95e235a52ab7d67eb9b27774ddabcd7b17c37b27a9c03"
    elsif Hardware::CPU.arm?
      url "https://webwiebe.nl/brew/bugbarn-darwin-arm64-0.236.77.tar.gz"
      sha256 "a7a7b15e99cbdd6d7f35906a3821396fa2d8855db5576c0fa76cce2517adaf95"
    end
  end

  def install
    bin.install "bugbarn"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/bugbarn version")
  end
end
