class Bugbarn < Formula
  desc "BugBarn"
  homepage "https://github.com/wiebe-xyz/bugbarn"
  version "0.236.145"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://webwiebe.nl/brew/bugbarn-darwin-amd64-0.236.145.tar.gz"
      sha256 "beb053a0aeaefdf4499ceb9e3d4c9acb7670c491dc205160e0692ab6d3a04899"
    elsif Hardware::CPU.arm?
      url "https://webwiebe.nl/brew/bugbarn-darwin-arm64-0.236.145.tar.gz"
      sha256 "7032e633912e59a844bdd344345c487a713865b6c0930be7aed7d31615641b09"
    end
  end

  def install
    bin.install "bugbarn"
  end
end
