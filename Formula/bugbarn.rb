class Bugbarn < Formula
  desc "BugBarn"
  homepage "https://github.com/wiebe-xyz/bugbarn"
  version "0.236.146"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://webwiebe.nl/brew/bugbarn-darwin-amd64-0.236.146.tar.gz"
      sha256 "a004473c0798709013d2dd601df43ca9ed87495231313ce8a1435d0af12a081d"
    elsif Hardware::CPU.arm?
      url "https://webwiebe.nl/brew/bugbarn-darwin-arm64-0.236.146.tar.gz"
      sha256 "0ed23d3c1006b7da44fc13e507eeb2f38fa09732b70be32ed5e3fe6cfeb95105"
    end
  end

  def install
    bin.install "bugbarn"
  end
end
