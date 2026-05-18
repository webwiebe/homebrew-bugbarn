class Bugbarn < Formula
  desc "Self-hosted error tracking server"
  homepage "https://github.com/wiebe-xyz/bugbarn"
  version "0.5.157"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://webwiebe.nl/brew/bugbarn-darwin-amd64-0.5.157.tar.gz"
      sha256 "b5f8239d1d4658b43edb8d6cf778ed4bcf6e58a65d50ed549ff12d64119f29c9"
    elsif Hardware::CPU.arm?
      url "https://webwiebe.nl/brew/bugbarn-darwin-arm64-0.5.157.tar.gz"
      sha256 "9bf098d9cbbe71d5591afd1958e5294ce9ff6427040d22b625ffe886afbc2247"
    end
  end

  def install
    bin.install "bugbarn"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/bugbarn version")
  end
end
