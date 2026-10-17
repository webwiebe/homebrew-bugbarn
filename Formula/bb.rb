class Bb < Formula
  desc "BugBarn"
  homepage "https://github.com/wiebe-xyz/bugbarn"
  version "0.236.265"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://webwiebe.nl/brew/bb-darwin-amd64-0.236.265.tar.gz"
      sha256 "da485dcca2f058fba31480dbefb16eb8f1820cc27ab21601930cc330127e8222"
    elsif Hardware::CPU.arm?
      url "https://webwiebe.nl/brew/bb-darwin-arm64-0.236.265.tar.gz"
      sha256 "1a7fee8d872f1507d42fb1038077f05e9f783ef873c47eb9c3d9cd2155aafc89"
    end
  end

  def install
    bin.install "bb"
  end
end
