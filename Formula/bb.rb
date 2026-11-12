class Bb < Formula
  desc "BugBarn"
  homepage "https://github.com/wiebe-xyz/bugbarn"
  version "0.236.356"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://webwiebe.nl/brew/bb-darwin-amd64-0.236.356.tar.gz"
      sha256 "2b153804a531a66320ff51bc7d5d08af6dd3df76f547a9de9c642f19e1de5cdf"
    elsif Hardware::CPU.arm?
      url "https://webwiebe.nl/brew/bb-darwin-arm64-0.236.356.tar.gz"
      sha256 "5844e1ccf458b5e37134c39eccd4e9eacb0e798d195062d52d5b4d26eac4eb0b"
    end
  end

  def install
    bin.install "bb"
  end
end
