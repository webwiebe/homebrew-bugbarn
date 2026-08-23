class Bb < Formula
  desc "BugBarn"
  homepage "https://github.com/wiebe-xyz/bugbarn"
  version "0.236.162"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://webwiebe.nl/brew/bb-darwin-amd64-0.236.162.tar.gz"
      sha256 "cd3d2329b98db07b7c26a2b74e8f000e04eac0bda29eeb5c593922b5774bdd26"
    elsif Hardware::CPU.arm?
      url "https://webwiebe.nl/brew/bb-darwin-arm64-0.236.162.tar.gz"
      sha256 "c3acf4dcc3d8190e451ad0d6bd34c23755e6db5f036932d3a6b164961cf5d98b"
    end
  end

  def install
    bin.install "bb"
  end
end
