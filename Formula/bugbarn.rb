class Bugbarn < Formula
  desc "Self-hosted error tracking server"
  homepage "https://github.com/wiebe-xyz/bugbarn"
  version "0.236.106"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://webwiebe.nl/brew/bugbarn-darwin-amd64-0.236.106.tar.gz"
      sha256 "0d15f0d8c138e87a3fce6efc7f1698074b441c937e6b65136a82bce18ff8db33"
    elsif Hardware::CPU.arm?
      url "https://webwiebe.nl/brew/bugbarn-darwin-arm64-0.236.106.tar.gz"
      sha256 "ae42554818655089ac88c936a71e3d3d021bd161874ab78ff3c420d80b142d6f"
    end
  end

  def install
    bin.install "bugbarn"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/bugbarn version")
  end
end
