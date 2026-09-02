class Bb < Formula
  desc "BugBarn"
  homepage "https://github.com/wiebe-xyz/bugbarn"
  version "0.236.170"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://webwiebe.nl/brew/bb-darwin-amd64-0.236.170.tar.gz"
      sha256 "a35c9aa38e8a22d0a1c900715710e532aa27384111a62bd73f6f4c316f3404e1"
    elsif Hardware::CPU.arm?
      url "https://webwiebe.nl/brew/bb-darwin-arm64-0.236.170.tar.gz"
      sha256 "8bb8db9d68b0c93dae3956324fb8db299463f299c0a1450949ad5b81d3c0a331"
    end
  end

  def install
    bin.install "bb"
  end
end
