class Bugbarn < Formula
  desc "Self-hosted error tracking server"
  homepage "https://github.com/wiebe-xyz/bugbarn"
  version "0.5.11"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://webwiebe.nl/brew/bugbarn-darwin-amd64-0.5.11.tar.gz"
      sha256 "02a8616bd995a23fe16ddb7c963d13ab6ff357c48dd4cdf8fb59e58df306e7d0"
    elsif Hardware::CPU.arm?
      url "https://webwiebe.nl/brew/bugbarn-darwin-arm64-0.5.11.tar.gz"
      sha256 "d910f6a192c2d652caa1b2a9158c95c2776aedb10d8004a734f763b7ae03aa5a"
    end
  end

  def install
    bin.install "bugbarn"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/bugbarn version")
  end
end
