class Bugbarn < Formula
  desc "Self-hosted error tracking server"
  homepage "https://github.com/wiebe-xyz/bugbarn"
  version "0.5.12"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://webwiebe.nl/brew/bugbarn-darwin-amd64-0.5.12.tar.gz"
      sha256 "93bd00a71d86a4339aaa93c5ac73a64f5efc3c81204c4bbe0900bb722d454422"
    elsif Hardware::CPU.arm?
      url "https://webwiebe.nl/brew/bugbarn-darwin-arm64-0.5.12.tar.gz"
      sha256 "83129682bcb87cbae170619ef27b012db0f6e132dcba69a16ff87fc861623925"
    end
  end

  def install
    bin.install "bugbarn"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/bugbarn version")
  end
end
