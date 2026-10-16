class Bb < Formula
  desc "BugBarn"
  homepage "https://github.com/wiebe-xyz/bugbarn"
  version "0.236.262"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://webwiebe.nl/brew/bb-darwin-amd64-0.236.262.tar.gz"
      sha256 "b02072bdca0035e637fe5cd9267b342b915a0aa96841db0ab9e2119a89c4e978"
    elsif Hardware::CPU.arm?
      url "https://webwiebe.nl/brew/bb-darwin-arm64-0.236.262.tar.gz"
      sha256 "73eada636c69cdf8241288e35e6b90664dbbfc5914a907737b50aac097bbeb5d"
    end
  end

  def install
    bin.install "bb"
  end
end
