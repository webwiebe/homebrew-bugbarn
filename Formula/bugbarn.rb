class Bugbarn < Formula
  desc "Self-hosted error tracking server"
  homepage "https://github.com/wiebe-xyz/bugbarn"
  version "0.236.83"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://webwiebe.nl/brew/bugbarn-darwin-amd64-0.236.83.tar.gz"
      sha256 "fc5ae74c2637cab914ce4fca13e04e688c00121b258ebe103f66fe4fab4160f7"
    elsif Hardware::CPU.arm?
      url "https://webwiebe.nl/brew/bugbarn-darwin-arm64-0.236.83.tar.gz"
      sha256 "b50c353b7dec2b673c98f99bb715438287619b61d953f74a62399bd0cdd0ebff"
    end
  end

  def install
    bin.install "bugbarn"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/bugbarn version")
  end
end
