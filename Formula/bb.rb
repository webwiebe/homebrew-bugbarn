class Bb < Formula
  desc "BugBarn"
  homepage "https://github.com/wiebe-xyz/bugbarn"
  version "0.236.206"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://webwiebe.nl/brew/bb-darwin-amd64-0.236.206.tar.gz"
      sha256 "8181a6871a969af3948e471ef4da366bcf876f035cc9215e3a00d921bdb00439"
    elsif Hardware::CPU.arm?
      url "https://webwiebe.nl/brew/bb-darwin-arm64-0.236.206.tar.gz"
      sha256 "aebfc2d41273d155205b9b0d464f4ea540cafaa37feadea9fb74f0918acd7587"
    end
  end

  def install
    bin.install "bb"
  end
end
