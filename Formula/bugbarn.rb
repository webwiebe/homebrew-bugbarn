class Bugbarn < Formula
  desc "Self-hosted error tracking server"
  homepage "https://github.com/wiebe-xyz/bugbarn"
  version "0.5.10"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://webwiebe.nl/brew/bugbarn-darwin-amd64-0.5.10.tar.gz"
      sha256 "e7ee88437727baea850d389a28d94bcc8b2f3fec7e6fd011882443fee330a170"
    elsif Hardware::CPU.arm?
      url "https://webwiebe.nl/brew/bugbarn-darwin-arm64-0.5.10.tar.gz"
      sha256 "2f0c4651f93eb09d16eddc497b00ccdfd5aa81d99e8d4965088b8c72bc99ac60"
    end
  end

  def install
    bin.install "bugbarn"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/bugbarn version")
  end
end
