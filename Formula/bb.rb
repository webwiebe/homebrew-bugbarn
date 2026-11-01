class Bb < Formula
  desc "BugBarn"
  homepage "https://github.com/wiebe-xyz/bugbarn"
  version "0.236.316"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://webwiebe.nl/brew/bb-darwin-amd64-0.236.316.tar.gz"
      sha256 "d7cbf4e3e26a3217a79c63691caeba7a5cfef5b9d1bd4c9ae1703fab3a992a30"
    elsif Hardware::CPU.arm?
      url "https://webwiebe.nl/brew/bb-darwin-arm64-0.236.316.tar.gz"
      sha256 "79908ed23bfa8171b53791528514d6502a7e0e13b06f0b5133cdaea9f471c63d"
    end
  end

  def install
    bin.install "bb"
  end
end
