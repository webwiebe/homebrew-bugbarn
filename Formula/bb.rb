class Bb < Formula
  desc "BugBarn"
  homepage "https://github.com/wiebe-xyz/bugbarn"
  version "0.236.188"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://webwiebe.nl/brew/bb-darwin-amd64-0.236.188.tar.gz"
      sha256 "200fe7e1742045c9fce6dd7745604010104d5df7590a4cda1ef82b01d2bbd720"
    elsif Hardware::CPU.arm?
      url "https://webwiebe.nl/brew/bb-darwin-arm64-0.236.188.tar.gz"
      sha256 "ed179eda1767b24f9bf09c5f50005b0330c4fa58c961d22efd519cb70e425b04"
    end
  end

  def install
    bin.install "bb"
  end
end
