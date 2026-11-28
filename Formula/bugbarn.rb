class Bugbarn < Formula
  desc "BugBarn"
  homepage "https://github.com/wiebe-xyz/bugbarn"
  version "0.236.398"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://webwiebe.nl/brew/bugbarn-darwin-amd64-0.236.398.tar.gz"
      sha256 "c3176286c802bed50fcfbad740b72b5d90efa674514d3259e2258518b1f12eac"
    elsif Hardware::CPU.arm?
      url "https://webwiebe.nl/brew/bugbarn-darwin-arm64-0.236.398.tar.gz"
      sha256 "4ff1761199b158d039cdfdc89cb4e6af355272b04ab1f02c22c67789ac0a58c5"
    end
  end

  def install
    bin.install "bugbarn"
  end
end
