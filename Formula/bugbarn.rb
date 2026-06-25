class Bugbarn < Formula
  desc "Self-hosted error tracking server"
  homepage "https://github.com/wiebe-xyz/bugbarn"
  version "0.236.105"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://webwiebe.nl/brew/bugbarn-darwin-amd64-0.236.105.tar.gz"
      sha256 "9ff4005d1d60054daece67c0e0fef3424d39b867c82e953fa8c07c286c7c1fc4"
    elsif Hardware::CPU.arm?
      url "https://webwiebe.nl/brew/bugbarn-darwin-arm64-0.236.105.tar.gz"
      sha256 "58360f945ba5c5d3e05ea074f7555ee0df9a96832529181b2fa0435db360d545"
    end
  end

  def install
    bin.install "bugbarn"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/bugbarn version")
  end
end
