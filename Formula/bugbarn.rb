class Bugbarn < Formula
  desc "Self-hosted error tracking server"
  homepage "https://github.com/wiebe-xyz/bugbarn"
  version "0.236.51"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://webwiebe.nl/brew/bugbarn-darwin-amd64-0.236.51.tar.gz"
      sha256 "818227ee0ab169aa43bb3077e27b600b4cee0c0c64745ade2c78275eb889be40"
    elsif Hardware::CPU.arm?
      url "https://webwiebe.nl/brew/bugbarn-darwin-arm64-0.236.51.tar.gz"
      sha256 "d4b90c658d1b8fbdfc48728b4f8f5bda2a4b023e542df9764f08bac42605dc69"
    end
  end

  def install
    bin.install "bugbarn"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/bugbarn version")
  end
end
