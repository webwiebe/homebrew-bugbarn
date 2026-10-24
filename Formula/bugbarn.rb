class Bugbarn < Formula
  desc "BugBarn"
  homepage "https://github.com/wiebe-xyz/bugbarn"
  version "0.236.273"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://webwiebe.nl/brew/bugbarn-darwin-amd64-0.236.273.tar.gz"
      sha256 "54624967d2f7179005c128a12b9300c6ecd0e115e4a86f69d22796ca68f21ff9"
    elsif Hardware::CPU.arm?
      url "https://webwiebe.nl/brew/bugbarn-darwin-arm64-0.236.273.tar.gz"
      sha256 "c2b00203ff1b127a0a864f02262b79a18cfb76cf8df224fe30d135788d65d028"
    end
  end

  def install
    bin.install "bugbarn"
  end
end
