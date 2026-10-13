class Bugbarn < Formula
  desc "BugBarn"
  homepage "https://github.com/wiebe-xyz/bugbarn"
  version "0.236.236"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://webwiebe.nl/brew/bugbarn-darwin-amd64-0.236.236.tar.gz"
      sha256 "d5f547fd2b76127bd197040e035ba5ea8590af64714504ec332f19c7072adabf"
    elsif Hardware::CPU.arm?
      url "https://webwiebe.nl/brew/bugbarn-darwin-arm64-0.236.236.tar.gz"
      sha256 "b15c1a5db19723096f64ca7b86bfeefac0833dd21914c9bb1d9216b6c85383d1"
    end
  end

  def install
    bin.install "bugbarn"
  end
end
