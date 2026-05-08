class Bugbarn < Formula
  desc "Self-hosted error tracking server"
  homepage "https://github.com/wiebe-xyz/bugbarn"
  version "0.5.93"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://webwiebe.nl/brew/bugbarn-darwin-amd64-0.5.93.tar.gz"
      sha256 "12fa7929c8bd1f87d4c08a96bbe452e5464d25cf82f11ad5fc634fe3ab573999"
    elsif Hardware::CPU.arm?
      url "https://webwiebe.nl/brew/bugbarn-darwin-arm64-0.5.93.tar.gz"
      sha256 "1bd79224fbe549f6341f53b7a2f39d12d76bf1bef89518d7bf9b10ac9fd184ac"
    end
  end

  def install
    bin.install "bugbarn"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/bugbarn version")
  end
end
