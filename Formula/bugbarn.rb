class Bugbarn < Formula
  desc "Self-hosted error tracking server"
  homepage "https://github.com/wiebe-xyz/bugbarn"
  version "0.236.82"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://webwiebe.nl/brew/bugbarn-darwin-amd64-0.236.82.tar.gz"
      sha256 "b3f9ca83e2f89c8f3201272ce9b223dc6b85b1fa2a3d58e7a77e7be79e231d3c"
    elsif Hardware::CPU.arm?
      url "https://webwiebe.nl/brew/bugbarn-darwin-arm64-0.236.82.tar.gz"
      sha256 "41a931e3e383aec2922c6765ce9a8e6f8fff1b89787dfb22299ee528644ae103"
    end
  end

  def install
    bin.install "bugbarn"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/bugbarn version")
  end
end
