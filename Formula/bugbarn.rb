class Bugbarn < Formula
  desc "Self-hosted error tracking server"
  homepage "https://github.com/wiebe-xyz/bugbarn"
  version "0.3.12"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://webwiebe.nl/brew/bugbarn-darwin-amd64-0.3.12.tar.gz"
      sha256 "79dbe0b69aa4433e829b0b04b940a641ab778fc0b22243decbac77629947f4ac"
    elsif Hardware::CPU.arm?
      url "https://webwiebe.nl/brew/bugbarn-darwin-arm64-0.3.12.tar.gz"
      sha256 "9ff73f403ac2b346ff3e31c716bc137bf76871ccdcaa79697e97b618ffb2fe97"
    end
  end

  def install
    bin.install "bugbarn"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/bugbarn version")
  end
end
