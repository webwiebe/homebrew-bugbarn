class Bugbarn < Formula
  desc "BugBarn"
  homepage "https://github.com/wiebe-xyz/bugbarn"
  version "0.236.288"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://webwiebe.nl/brew/bugbarn-darwin-amd64-0.236.288.tar.gz"
      sha256 "4e3a6d6d1d667598221d0652a62645e1a81c4938e0689efec683220307c32c1d"
    elsif Hardware::CPU.arm?
      url "https://webwiebe.nl/brew/bugbarn-darwin-arm64-0.236.288.tar.gz"
      sha256 "b5feba7160d4f1852fa4075b5f4cd06d09a602b2bfb6cba9674179e7a3676cb0"
    end
  end

  def install
    bin.install "bugbarn"
  end
end
