class Bb < Formula
  desc "BugBarn"
  homepage "https://github.com/wiebe-xyz/bugbarn"
  version "0.236.164"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://webwiebe.nl/brew/bb-darwin-amd64-0.236.164.tar.gz"
      sha256 "09d941f745e293ee915676779bf88172d0c3286367a85e775739c5a6ba8fd79f"
    elsif Hardware::CPU.arm?
      url "https://webwiebe.nl/brew/bb-darwin-arm64-0.236.164.tar.gz"
      sha256 "1b3efa749a8739ed947fbaa0a15d26cb844ee286b4161cb78a80c635a1fcb3db"
    end
  end

  def install
    bin.install "bb"
  end
end
