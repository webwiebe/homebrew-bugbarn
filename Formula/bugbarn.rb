class Bugbarn < Formula
  desc "Self-hosted error tracking server"
  homepage "https://github.com/wiebe-xyz/bugbarn"
  version "0.5.146"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://webwiebe.nl/brew/bugbarn-darwin-amd64-0.5.146.tar.gz"
      sha256 "d0b3ec1608a207a8bfbb796e1ea513ec0ef5d694f2fb6d4e1097d752121ff2a2"
    elsif Hardware::CPU.arm?
      url "https://webwiebe.nl/brew/bugbarn-darwin-arm64-0.5.146.tar.gz"
      sha256 "dd893cd3ab1e60999aef2a655e2515f92e78abe5c75d2c3f387424e0ab231950"
    end
  end

  def install
    bin.install "bugbarn"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/bugbarn version")
  end
end
