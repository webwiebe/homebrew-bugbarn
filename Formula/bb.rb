class Bb < Formula
  desc "BugBarn"
  homepage "https://github.com/wiebe-xyz/bugbarn"
  version "0.236.332"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://webwiebe.nl/brew/bb-darwin-amd64-0.236.332.tar.gz"
      sha256 "5bbd97a3970bd11ccab978a5f2cbbd0a8eaf94e49f1591dec09d504747c1384d"
    elsif Hardware::CPU.arm?
      url "https://webwiebe.nl/brew/bb-darwin-arm64-0.236.332.tar.gz"
      sha256 "422a74e4e384d1dfa059878427ef772d6f87e09e857e0f8b391daa7a6d411173"
    end
  end

  def install
    bin.install "bb"
  end
end
