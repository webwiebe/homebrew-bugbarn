class Bb < Formula
  desc "BugBarn"
  homepage "https://github.com/wiebe-xyz/bugbarn"
  version "0.236.389"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://webwiebe.nl/brew/bb-darwin-amd64-0.236.389.tar.gz"
      sha256 "65ffd8b4ad9c0dcb60e882e5eb000c13c910f8575bfb02e80bc78e6ac2540a91"
    elsif Hardware::CPU.arm?
      url "https://webwiebe.nl/brew/bb-darwin-arm64-0.236.389.tar.gz"
      sha256 "cbdb900b4801a1217156c0ecbcc9d80d7d06538f115e04b43e326c841634632e"
    end
  end

  def install
    bin.install "bb"
  end
end
