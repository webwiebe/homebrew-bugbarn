class Bugbarn < Formula
  desc "Self-hosted error tracking server"
  homepage "https://github.com/wiebe-xyz/bugbarn"
  version "0.236.68"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://webwiebe.nl/brew/bugbarn-darwin-amd64-0.236.68.tar.gz"
      sha256 "3c8766d7cb59b850ccb43b0e483526607cb98e5ff65edcbc1a856638be9e1be8"
    elsif Hardware::CPU.arm?
      url "https://webwiebe.nl/brew/bugbarn-darwin-arm64-0.236.68.tar.gz"
      sha256 "c404e485aedf1554dab50bad0b2f1b102f5a07fc79d413ef44757562fc6e5c6f"
    end
  end

  def install
    bin.install "bugbarn"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/bugbarn version")
  end
end
