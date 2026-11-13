class Bb < Formula
  desc "BugBarn"
  homepage "https://github.com/wiebe-xyz/bugbarn"
  version "0.236.364"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://webwiebe.nl/brew/bb-darwin-amd64-0.236.364.tar.gz"
      sha256 "e1aa65ed98e517c6597b1387bc28d653dac96dfd4eaa2c0734b8b5315e899e71"
    elsif Hardware::CPU.arm?
      url "https://webwiebe.nl/brew/bb-darwin-arm64-0.236.364.tar.gz"
      sha256 "fdde3fd0f7d859f2f7d1d095db5a22623bbc0056292572070d1eea2a70a44434"
    end
  end

  def install
    bin.install "bb"
  end
end
