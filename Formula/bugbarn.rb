class Bugbarn < Formula
  desc "Self-hosted error tracking server"
  homepage "https://github.com/wiebe-xyz/bugbarn"
  version "0.236.88"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://webwiebe.nl/brew/bugbarn-darwin-amd64-0.236.88.tar.gz"
      sha256 "9e7d7de9e0d43e8917b5e7b2f88fb788c08ecd0f42eeb25b89c67d9f97d158f4"
    elsif Hardware::CPU.arm?
      url "https://webwiebe.nl/brew/bugbarn-darwin-arm64-0.236.88.tar.gz"
      sha256 "ae5f6a8e423c3c672e46fe3ade2740e1ae3c9887d5db151eb36521919b02edbd"
    end
  end

  def install
    bin.install "bugbarn"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/bugbarn version")
  end
end
