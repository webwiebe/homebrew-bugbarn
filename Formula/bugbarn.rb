class Bugbarn < Formula
  desc "Self-hosted error tracking server"
  homepage "https://github.com/wiebe-xyz/bugbarn"
  version "0.236.46"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://webwiebe.nl/brew/bugbarn-darwin-amd64-0.236.46.tar.gz"
      sha256 "5eff655f85f2129bf3eea7989f0542d26327dfd137837fc8bf52386e87945e97"
    elsif Hardware::CPU.arm?
      url "https://webwiebe.nl/brew/bugbarn-darwin-arm64-0.236.46.tar.gz"
      sha256 "08c5f4b0747f0109a36221e4bee195e657c37808070b2cdf66bcee99a6496e1d"
    end
  end

  def install
    bin.install "bugbarn"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/bugbarn version")
  end
end
