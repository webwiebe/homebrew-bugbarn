class Bb < Formula
  desc "BugBarn"
  homepage "https://github.com/wiebe-xyz/bugbarn"
  version "0.236.234"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://webwiebe.nl/brew/bb-darwin-amd64-0.236.234.tar.gz"
      sha256 "f21e6582cea5ee3565213edd5dd6dff9f993f8cb0d446afbb48090572d4d85f6"
    elsif Hardware::CPU.arm?
      url "https://webwiebe.nl/brew/bb-darwin-arm64-0.236.234.tar.gz"
      sha256 "3ed0b2a49c6fa08cf6af2b84a8dbd2081c69d8bc0ba63d2645bbe7167d8d8102"
    end
  end

  def install
    bin.install "bb"
  end
end
