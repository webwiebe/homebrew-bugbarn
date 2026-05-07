class Bugbarn < Formula
  desc "Self-hosted error tracking server"
  homepage "https://github.com/wiebe-xyz/bugbarn"
  version "0.5.70"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://webwiebe.nl/brew/bugbarn-darwin-amd64-0.5.70.tar.gz"
      sha256 "1fa170ad115add400d5c36146f38dffc0b04daf4c6ca8857bd1540eb23a62a43"
    elsif Hardware::CPU.arm?
      url "https://webwiebe.nl/brew/bugbarn-darwin-arm64-0.5.70.tar.gz"
      sha256 "61fac10b1a5f7cf7ddb599c2fa7e02044360c5580d7d17685efe6e827320335d"
    end
  end

  def install
    bin.install "bugbarn"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/bugbarn version")
  end
end
