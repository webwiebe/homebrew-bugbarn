class Bb < Formula
  desc "BugBarn"
  homepage "https://github.com/wiebe-xyz/bugbarn"
  version "0.236.350"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://webwiebe.nl/brew/bb-darwin-amd64-0.236.350.tar.gz"
      sha256 "152731afb869928f5171b2cdabe34e4410e0d7d0aa1f34a3a5262e2cde421bcf"
    elsif Hardware::CPU.arm?
      url "https://webwiebe.nl/brew/bb-darwin-arm64-0.236.350.tar.gz"
      sha256 "45876a3c2cea76c0e99382c234a3e63ba9e1c0ae263708d4c387999f434429ed"
    end
  end

  def install
    bin.install "bb"
  end
end
