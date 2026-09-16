class Bugbarn < Formula
  desc "BugBarn"
  homepage "https://github.com/wiebe-xyz/bugbarn"
  version "0.236.183"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://webwiebe.nl/brew/bugbarn-darwin-amd64-0.236.183.tar.gz"
      sha256 "3b4b243717ea76c2492b7eb6f3fa225fb1f3731bc216d27a6a22764587805f49"
    elsif Hardware::CPU.arm?
      url "https://webwiebe.nl/brew/bugbarn-darwin-arm64-0.236.183.tar.gz"
      sha256 "1fdb62394219a19ff7827d4e20ff4824ea3efe5c8636ca8dad41f35012368db3"
    end
  end

  def install
    bin.install "bugbarn"
  end
end
