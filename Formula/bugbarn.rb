class Bugbarn < Formula
  desc "Self-hosted error tracking server"
  homepage "https://github.com/wiebe-xyz/bugbarn"
  version "0.4.13"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://webwiebe.nl/brew/bugbarn-darwin-amd64-0.4.13.tar.gz"
      sha256 "781a2cd756c78832a1554abbd3086a7704f455f77a29369e1c1f0598d3bc4dfa"
    elsif Hardware::CPU.arm?
      url "https://webwiebe.nl/brew/bugbarn-darwin-arm64-0.4.13.tar.gz"
      sha256 "7b5b25b5d45c431341fe4cc78252ea6fb3bc5df4d8b6714065a2b12aee78a458"
    end
  end

  def install
    bin.install "bugbarn"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/bugbarn version")
  end
end
