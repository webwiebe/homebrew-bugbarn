class Bugbarn < Formula
  desc "Self-hosted error tracking server"
  homepage "https://github.com/wiebe-xyz/bugbarn"
  version "0.236.49"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://webwiebe.nl/brew/bugbarn-darwin-amd64-0.236.49.tar.gz"
      sha256 "0e09a88d6e8dd1e40225d4c6157907f861ec7b641e7fdcfb2a8236275bb4f7cb"
    elsif Hardware::CPU.arm?
      url "https://webwiebe.nl/brew/bugbarn-darwin-arm64-0.236.49.tar.gz"
      sha256 "08042df76d7f46a7351e53b3e47c746ae8f305eab55574f58052e70594680d60"
    end
  end

  def install
    bin.install "bugbarn"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/bugbarn version")
  end
end
