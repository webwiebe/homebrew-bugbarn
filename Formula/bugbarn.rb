class Bugbarn < Formula
  desc "BugBarn"
  homepage "https://github.com/wiebe-xyz/bugbarn"
  version "0.236.210"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://webwiebe.nl/brew/bugbarn-darwin-amd64-0.236.210.tar.gz"
      sha256 "c6524b08a3add8e30982357c7cc48b44f3bd9d9b8b899ca8b64fd18408c67a96"
    elsif Hardware::CPU.arm?
      url "https://webwiebe.nl/brew/bugbarn-darwin-arm64-0.236.210.tar.gz"
      sha256 "c5b0d3dbe4fc204165c1d0d3a5ca512c1843055bb7824cab1f6f1b5a753439b2"
    end
  end

  def install
    bin.install "bugbarn"
  end
end
