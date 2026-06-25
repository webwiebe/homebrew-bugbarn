class Bugbarn < Formula
  desc "Self-hosted error tracking server"
  homepage "https://github.com/wiebe-xyz/bugbarn"
  version "0.236.103"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://webwiebe.nl/brew/bugbarn-darwin-amd64-0.236.103.tar.gz"
      sha256 "bebfe39f09348234e3a8fcd70994a465f18786efc484965ac44f327ab24d7620"
    elsif Hardware::CPU.arm?
      url "https://webwiebe.nl/brew/bugbarn-darwin-arm64-0.236.103.tar.gz"
      sha256 "123501411ca9d7c4944f13df3c5747bc4dbec59d5d68d954107805b0c94355a0"
    end
  end

  def install
    bin.install "bugbarn"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/bugbarn version")
  end
end
