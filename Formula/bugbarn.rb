class Bugbarn < Formula
  desc "BugBarn"
  homepage "https://github.com/wiebe-xyz/bugbarn"
  version "0.236.268"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://webwiebe.nl/brew/bugbarn-darwin-amd64-0.236.268.tar.gz"
      sha256 "d51e435402a086734d5a874811668000695b3a82ee1945a77d310eb7e68c82d6"
    elsif Hardware::CPU.arm?
      url "https://webwiebe.nl/brew/bugbarn-darwin-arm64-0.236.268.tar.gz"
      sha256 "9c1b047e3b0bc23043badd30773e636b232c30f4b693e7063c81d1b8254f6da7"
    end
  end

  def install
    bin.install "bugbarn"
  end
end
