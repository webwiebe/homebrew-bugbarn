class Bb < Formula
  desc "BugBarn"
  homepage "https://github.com/wiebe-xyz/bugbarn"
  version "0.236.368"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://webwiebe.nl/brew/bb-darwin-amd64-0.236.368.tar.gz"
      sha256 "22b3e2a6c4afc66753831231b5b523f7d3d8525a37b1b32a2d3cddf86fa341ad"
    elsif Hardware::CPU.arm?
      url "https://webwiebe.nl/brew/bb-darwin-arm64-0.236.368.tar.gz"
      sha256 "2dd0f969e13d63d3140280d2e25f9da55530917aed6727bfdf826b1cc53c5a65"
    end
  end

  def install
    bin.install "bb"
  end
end
