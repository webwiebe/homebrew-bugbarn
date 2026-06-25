class Bugbarn < Formula
  desc "Self-hosted error tracking server"
  homepage "https://github.com/wiebe-xyz/bugbarn"
  version "0.236.100"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://webwiebe.nl/brew/bugbarn-darwin-amd64-0.236.100.tar.gz"
      sha256 "3c9bcd7931ff6994ba1e2a3d477a64e9f77bb98e17ae6ee1bcca9dc7cfbea4b1"
    elsif Hardware::CPU.arm?
      url "https://webwiebe.nl/brew/bugbarn-darwin-arm64-0.236.100.tar.gz"
      sha256 "c119c7fef318998c82917bdd00de848c1fc91b6e70e3996919316fad0bf61c39"
    end
  end

  def install
    bin.install "bugbarn"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/bugbarn version")
  end
end
