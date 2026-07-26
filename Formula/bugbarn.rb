class Bugbarn < Formula
  desc "BugBarn"
  homepage "https://github.com/wiebe-xyz/bugbarn"
  version "0.236.157"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://webwiebe.nl/brew/bugbarn-darwin-amd64-0.236.157.tar.gz"
      sha256 "e87134cc2d948d9fba2a414d6bec0686f3b402d2f3475e0b137560ed9724c7d9"
    elsif Hardware::CPU.arm?
      url "https://webwiebe.nl/brew/bugbarn-darwin-arm64-0.236.157.tar.gz"
      sha256 "2a1677bba5e876c823363a9bd81c02464836af3a0da472d5d05ea66334ebed35"
    end
  end

  def install
    bin.install "bugbarn"
  end
end
