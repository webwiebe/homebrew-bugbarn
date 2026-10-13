class Bugbarn < Formula
  desc "BugBarn"
  homepage "https://github.com/wiebe-xyz/bugbarn"
  version "0.236.230"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://webwiebe.nl/brew/bugbarn-darwin-amd64-0.236.230.tar.gz"
      sha256 "3c6c86fba17203ca089d6c24a840654991b2ed74e7474d8b23197fbbd3d1940c"
    elsif Hardware::CPU.arm?
      url "https://webwiebe.nl/brew/bugbarn-darwin-arm64-0.236.230.tar.gz"
      sha256 "61d1aafceac958f39e4fcc8db8d21e04ebedf453fc0032a34e1e3ff8b1b0be87"
    end
  end

  def install
    bin.install "bugbarn"
  end
end
