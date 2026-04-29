class Bugbarn < Formula
  desc "Self-hosted error tracking server"
  homepage "https://github.com/wiebe-xyz/bugbarn"
  version "0.4.9"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://webwiebe.nl/brew/bugbarn-darwin-amd64-0.4.9.tar.gz"
      sha256 "16aa2596cb9367cd95dc1f03cc28effcfb20f82b7c3db246e533c59b9edf8a68"
    elsif Hardware::CPU.arm?
      url "https://webwiebe.nl/brew/bugbarn-darwin-arm64-0.4.9.tar.gz"
      sha256 "58b3f36b7759554c9476f3168ee9e263821a22fac9699ae288af339189d87d4c"
    end
  end

  def install
    bin.install "bugbarn"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/bugbarn version")
  end
end
