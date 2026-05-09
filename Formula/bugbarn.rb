class Bugbarn < Formula
  desc "Self-hosted error tracking server"
  homepage "https://github.com/wiebe-xyz/bugbarn"
  version "0.5.100"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://webwiebe.nl/brew/bugbarn-darwin-amd64-0.5.100.tar.gz"
      sha256 "9d7f34d97ba5aa42c677db17390f33ca4425559192c7d70bf1ea06b5f0c04de4"
    elsif Hardware::CPU.arm?
      url "https://webwiebe.nl/brew/bugbarn-darwin-arm64-0.5.100.tar.gz"
      sha256 "57d9d61241dd9b7f9c1c2c1774c3765199eafa4e24bd469604859be7865bc2ce"
    end
  end

  def install
    bin.install "bugbarn"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/bugbarn version")
  end
end
