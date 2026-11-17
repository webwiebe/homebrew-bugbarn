class Bb < Formula
  desc "BugBarn"
  homepage "https://github.com/wiebe-xyz/bugbarn"
  version "0.236.374"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://webwiebe.nl/brew/bb-darwin-amd64-0.236.374.tar.gz"
      sha256 "e7832b9fba60de17ceef73c5dffda85e8ece6d84cf2564900f843b3071cc82f7"
    elsif Hardware::CPU.arm?
      url "https://webwiebe.nl/brew/bb-darwin-arm64-0.236.374.tar.gz"
      sha256 "d2326e35d4ea5916a392b8158c61e9f60134db575c7509fdfef588192dabad1d"
    end
  end

  def install
    bin.install "bb"
  end
end
