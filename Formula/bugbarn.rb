class Bugbarn < Formula
  desc "BugBarn"
  homepage "https://github.com/wiebe-xyz/bugbarn"
  version "0.236.277"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://webwiebe.nl/brew/bugbarn-darwin-amd64-0.236.277.tar.gz"
      sha256 "b4e22ede87f2485024906381c5c1c9dfbddba475ca0fb7a2b1d2c797c8155bdf"
    elsif Hardware::CPU.arm?
      url "https://webwiebe.nl/brew/bugbarn-darwin-arm64-0.236.277.tar.gz"
      sha256 "36249b7a2bcfde25b76eb99ccc195d9d573efea674d8ba54b05b5429673f5c58"
    end
  end

  def install
    bin.install "bugbarn"
  end
end
