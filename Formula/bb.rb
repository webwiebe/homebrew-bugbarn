class Bb < Formula
  desc "BugBarn"
  homepage "https://github.com/wiebe-xyz/bugbarn"
  version "0.236.268"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://webwiebe.nl/brew/bb-darwin-amd64-0.236.268.tar.gz"
      sha256 "bf4718bbedea2ae5ea4a4608231b1beb3773cd01c912d53a74acd55a54c0ebb9"
    elsif Hardware::CPU.arm?
      url "https://webwiebe.nl/brew/bb-darwin-arm64-0.236.268.tar.gz"
      sha256 "cf5d2683ee63bd4bcbe59273b7a5fbeb470f0f44d21f0bca6c60887174502d17"
    end
  end

  def install
    bin.install "bb"
  end
end
