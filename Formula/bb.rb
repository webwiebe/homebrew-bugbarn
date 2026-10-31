class Bb < Formula
  desc "BugBarn"
  homepage "https://github.com/wiebe-xyz/bugbarn"
  version "0.236.309"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://webwiebe.nl/brew/bb-darwin-amd64-0.236.309.tar.gz"
      sha256 "3555934e409341327b56b64367d9dc12aa54dc66d2db41505cbe3946e227f164"
    elsif Hardware::CPU.arm?
      url "https://webwiebe.nl/brew/bb-darwin-arm64-0.236.309.tar.gz"
      sha256 "b29a4dfd9ed2d6c0588fe269adcd45d44c36e4fa93c12f9a78b21d6b5c659965"
    end
  end

  def install
    bin.install "bb"
  end
end
