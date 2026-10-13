class Bb < Formula
  desc "BugBarn"
  homepage "https://github.com/wiebe-xyz/bugbarn"
  version "0.236.239"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://webwiebe.nl/brew/bb-darwin-amd64-0.236.239.tar.gz"
      sha256 "e0ce14579bc9f569c57540ce469c6c3d832418e28d200cdbedc5e62f5069ffd3"
    elsif Hardware::CPU.arm?
      url "https://webwiebe.nl/brew/bb-darwin-arm64-0.236.239.tar.gz"
      sha256 "d1741d1e07058750faa603fda817d303a7d25bea9fed75cb56dc4986745dc9d0"
    end
  end

  def install
    bin.install "bb"
  end
end
