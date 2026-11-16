class Bb < Formula
  desc "BugBarn"
  homepage "https://github.com/wiebe-xyz/bugbarn"
  version "0.236.372"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://webwiebe.nl/brew/bb-darwin-amd64-0.236.372.tar.gz"
      sha256 "ce984020fb5eea92f1c5ded77a2f2d87af121cf4ad3ed493eb4de119c17bd2f2"
    elsif Hardware::CPU.arm?
      url "https://webwiebe.nl/brew/bb-darwin-arm64-0.236.372.tar.gz"
      sha256 "30d0f69e8eafe78236e73946c1015b1d899952c3e0e3555c675269a1955f1685"
    end
  end

  def install
    bin.install "bb"
  end
end
