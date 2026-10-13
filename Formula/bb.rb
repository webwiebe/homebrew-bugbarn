class Bb < Formula
  desc "BugBarn"
  homepage "https://github.com/wiebe-xyz/bugbarn"
  version "0.236.237"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://webwiebe.nl/brew/bb-darwin-amd64-0.236.237.tar.gz"
      sha256 "6a7433f8e7b5e00c5ffcca0bd0fbf019f0282d64a35816be6eb3bfd91385fa9d"
    elsif Hardware::CPU.arm?
      url "https://webwiebe.nl/brew/bb-darwin-arm64-0.236.237.tar.gz"
      sha256 "5bbcb22d104bea4f45d8b673d5f9135c5f0f7bb6076af560791b85e8636ac96e"
    end
  end

  def install
    bin.install "bb"
  end
end
