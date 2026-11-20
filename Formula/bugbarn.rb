class Bugbarn < Formula
  desc "BugBarn"
  homepage "https://github.com/wiebe-xyz/bugbarn"
  version "0.236.390"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://webwiebe.nl/brew/bugbarn-darwin-amd64-0.236.390.tar.gz"
      sha256 "ffadac2f976f53dbc9426d67b97f8f9f9bc42b3b221b16181df73f949f3cf848"
    elsif Hardware::CPU.arm?
      url "https://webwiebe.nl/brew/bugbarn-darwin-arm64-0.236.390.tar.gz"
      sha256 "af2a398349f082898d28f0d2d9d1c084ea4178d0543036d2c359abe71ca690f1"
    end
  end

  def install
    bin.install "bugbarn"
  end
end
