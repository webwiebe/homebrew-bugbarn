class Bugbarn < Formula
  desc "Self-hosted error tracking server"
  homepage "https://github.com/wiebe-xyz/bugbarn"
  version "0.5.27"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://webwiebe.nl/brew/bugbarn-darwin-amd64-0.5.27.tar.gz"
      sha256 "0bcfa483dd5c8bf480554527e69c547b493d1cd29bf69fddd3582d7fd1852f4d"
    elsif Hardware::CPU.arm?
      url "https://webwiebe.nl/brew/bugbarn-darwin-arm64-0.5.27.tar.gz"
      sha256 "e6fc8c9d5c7a2a60ce23a62dcdfb138198954bf5369533f239acd3f180e22453"
    end
  end

  def install
    bin.install "bugbarn"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/bugbarn version")
  end
end
