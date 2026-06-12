class Bb < Formula
  desc "CLI client for BugBarn error tracking"
  homepage "https://github.com/wiebe-xyz/bugbarn"
  version "0.236.72"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://webwiebe.nl/brew/bb-darwin-amd64-0.236.72.tar.gz"
      sha256 "08effd3a361104a39db2b075ed7cf73605932f33535224ead524b99cb1c0e077"
    elsif Hardware::CPU.arm?
      url "https://webwiebe.nl/brew/bb-darwin-arm64-0.236.72.tar.gz"
      sha256 "47febf49c1e9343477ef53b0e474af893e2a5ed3d69b0518389985b024a0c884"
    end
  end

  def install
    bin.install "bb"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/bb version")
  end
end
