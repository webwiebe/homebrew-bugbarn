class Bb < Formula
  desc "BugBarn"
  homepage "https://github.com/wiebe-xyz/bugbarn"
  version "0.236.381"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://webwiebe.nl/brew/bb-darwin-amd64-0.236.381.tar.gz"
      sha256 "c19df5e101e2004846e558f03f9e7fa1a5259748378f4650ece95935f6b88d3c"
    elsif Hardware::CPU.arm?
      url "https://webwiebe.nl/brew/bb-darwin-arm64-0.236.381.tar.gz"
      sha256 "d17a3033526e135e557c20167e93c210d2d0d2e8859ba5e3e682306e5af6080a"
    end
  end

  def install
    bin.install "bb"
  end
end
