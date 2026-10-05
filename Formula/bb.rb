class Bb < Formula
  desc "BugBarn"
  homepage "https://github.com/wiebe-xyz/bugbarn"
  version "0.236.207"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://webwiebe.nl/brew/bb-darwin-amd64-0.236.207.tar.gz"
      sha256 "7e3e7606c4c35733e5f82566f1ff975531bb9ecfd774f76fc3bb1cdb5f8c9cdc"
    elsif Hardware::CPU.arm?
      url "https://webwiebe.nl/brew/bb-darwin-arm64-0.236.207.tar.gz"
      sha256 "e97bb928e42ab5895afce64652f87ca756243d3b673f970ed464766345638253"
    end
  end

  def install
    bin.install "bb"
  end
end
