class Bb < Formula
  desc "CLI client for BugBarn error tracking"
  homepage "https://github.com/wiebe-xyz/bugbarn"
  version "0.236.98"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://webwiebe.nl/brew/bb-darwin-amd64-0.236.98.tar.gz"
      sha256 "8a3be0e2905470c5d57f28e0104d072c2516b49850b156f75f26653401bd6e75"
    elsif Hardware::CPU.arm?
      url "https://webwiebe.nl/brew/bb-darwin-arm64-0.236.98.tar.gz"
      sha256 "e5417602808636eee545694f741570d3c2fb6abf7b491518e8da63898c96506c"
    end
  end

  def install
    bin.install "bb"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/bb version")
  end
end
