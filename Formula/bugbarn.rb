class Bugbarn < Formula
  desc "Self-hosted error tracking server"
  homepage "https://github.com/wiebe-xyz/bugbarn"
  version "0.236.90"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://webwiebe.nl/brew/bugbarn-darwin-amd64-0.236.90.tar.gz"
      sha256 "869303f5a4dc2d64fd6e18ce768285fcae2a0c5932bd461379237d7d385dfcc9"
    elsif Hardware::CPU.arm?
      url "https://webwiebe.nl/brew/bugbarn-darwin-arm64-0.236.90.tar.gz"
      sha256 "2ea4d98ba3ddadfebbe3b77e5fdad4b55d12810c342c7ef0246302618d5c4b76"
    end
  end

  def install
    bin.install "bugbarn"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/bugbarn version")
  end
end
