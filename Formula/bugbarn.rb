class Bugbarn < Formula
  desc "Self-hosted error tracking server"
  homepage "https://github.com/wiebe-xyz/bugbarn"
  version "0.5.145"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://webwiebe.nl/brew/bugbarn-darwin-amd64-0.5.145.tar.gz"
      sha256 "4e200e56c59477b14b9fec574ca5d1af11f89ac0ac38bfa1e1cf3ebffa4228cf"
    elsif Hardware::CPU.arm?
      url "https://webwiebe.nl/brew/bugbarn-darwin-arm64-0.5.145.tar.gz"
      sha256 "9825148aa704a19f94d9a154e1e0cf2ecb0aab7135d462f0e218eda1507b1963"
    end
  end

  def install
    bin.install "bugbarn"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/bugbarn version")
  end
end
