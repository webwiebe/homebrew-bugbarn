class Bugbarn < Formula
  desc "Self-hosted error tracking server"
  homepage "https://github.com/wiebe-xyz/bugbarn"
  version "0.5.107"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://webwiebe.nl/brew/bugbarn-darwin-amd64-0.5.107.tar.gz"
      sha256 "432e800b4fca58e58124216f2b9278c0db696ccfddfa46d85e93bfdc1722a6c9"
    elsif Hardware::CPU.arm?
      url "https://webwiebe.nl/brew/bugbarn-darwin-arm64-0.5.107.tar.gz"
      sha256 "f830b61383b3489b5478cbfe62cef10155924c7e0a7779d87025c1a6c0376e2b"
    end
  end

  def install
    bin.install "bugbarn"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/bugbarn version")
  end
end
