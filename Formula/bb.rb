class Bb < Formula
  desc "BugBarn"
  homepage "https://github.com/wiebe-xyz/bugbarn"
  version "0.236.290"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://webwiebe.nl/brew/bb-darwin-amd64-0.236.290.tar.gz"
      sha256 "c562bd944d481712fded1e1ade71ec8f7e578c04702bee1c9f38066b3b261f14"
    elsif Hardware::CPU.arm?
      url "https://webwiebe.nl/brew/bb-darwin-arm64-0.236.290.tar.gz"
      sha256 "e33619a75cab635549ae805fc5d5baf6fdf867489a70fd301c0108d234a103c4"
    end
  end

  def install
    bin.install "bb"
  end
end
