class Bugbarn < Formula
  desc "Self-hosted error tracking server"
  homepage "https://github.com/wiebe-xyz/bugbarn"
  version "0.5.7"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://webwiebe.nl/brew/bugbarn-darwin-amd64-0.5.7.tar.gz"
      sha256 "10f4d7a34c7f74acf529445eedb72211b4b6b341f015708a38cb1261f0f8c246"
    elsif Hardware::CPU.arm?
      url "https://webwiebe.nl/brew/bugbarn-darwin-arm64-0.5.7.tar.gz"
      sha256 "e9f9badf29500c93edd4ff3452ba468569ecc92d9ef07d092155fd463b6fc342"
    end
  end

  def install
    bin.install "bugbarn"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/bugbarn version")
  end
end
