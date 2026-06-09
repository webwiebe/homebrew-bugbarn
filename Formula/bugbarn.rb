class Bugbarn < Formula
  desc "Self-hosted error tracking server"
  homepage "https://github.com/wiebe-xyz/bugbarn"
  version "0.236.63"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://webwiebe.nl/brew/bugbarn-darwin-amd64-0.236.63.tar.gz"
      sha256 "b03770f179931c0dc52dccf8c82b7fe4557cdac6e034731e644c19092bd2a7fd"
    elsif Hardware::CPU.arm?
      url "https://webwiebe.nl/brew/bugbarn-darwin-arm64-0.236.63.tar.gz"
      sha256 "f9dac38a6ea23c6cb05a8adcfcedc566ee1f6cb16662426b7229f0a9effe28b4"
    end
  end

  def install
    bin.install "bugbarn"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/bugbarn version")
  end
end
