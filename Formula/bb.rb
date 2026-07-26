class Bb < Formula
  desc "BugBarn"
  homepage "https://github.com/wiebe-xyz/bugbarn"
  version "0.236.159"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://webwiebe.nl/brew/bb-darwin-amd64-0.236.159.tar.gz"
      sha256 "f79b8496dd9214e0ea192ecb2e626e9e1b4c136d04ef8c95c09d3bb33552e5bf"
    elsif Hardware::CPU.arm?
      url "https://webwiebe.nl/brew/bb-darwin-arm64-0.236.159.tar.gz"
      sha256 "ca4f088c196de0595e294af96118b179683ec948f9e4c2317c8e95850a05acae"
    end
  end

  def install
    bin.install "bb"
  end
end
