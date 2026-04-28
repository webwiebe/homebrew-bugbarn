class Bugbarn < Formula
  desc "Self-hosted error tracking server"
  homepage "https://github.com/wiebe-xyz/bugbarn"
  version "0.3.10"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://webwiebe.nl/brew/bugbarn-darwin-amd64-0.3.10.tar.gz"
      sha256 "462d8993d9cc81526c061b288928b80bddcfae5ad7b7ca3ce2ea1c33f806ae94"
    elsif Hardware::CPU.arm?
      url "https://webwiebe.nl/brew/bugbarn-darwin-arm64-0.3.10.tar.gz"
      sha256 "626042c8b141ca4ec5b7cfc3e4faadd6baf42a632220e19b0d8875be75f27b21"
    end
  end

  def install
    bin.install "bugbarn"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/bugbarn version")
  end
end
