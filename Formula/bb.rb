class Bb < Formula
  desc "BugBarn"
  homepage "https://github.com/wiebe-xyz/bugbarn"
  version "0.236.140"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://webwiebe.nl/brew/bb-darwin-amd64-0.236.140.tar.gz"
      sha256 "948a57143c86f28ccab8609295e1aa3ffd81e340334b0824089c6794b6bb73e7"
    elsif Hardware::CPU.arm?
      url "https://webwiebe.nl/brew/bb-darwin-arm64-0.236.140.tar.gz"
      sha256 "f0d190b3543a0be7a3b52e30b021ae8fe7aae977a69ece07733a9435b8c9a95e"
    end
  end

  def install
    bin.install "bb"
  end
end
