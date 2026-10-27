class Bugbarn < Formula
  desc "BugBarn"
  homepage "https://github.com/wiebe-xyz/bugbarn"
  version "0.236.290"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://webwiebe.nl/brew/bugbarn-darwin-amd64-0.236.290.tar.gz"
      sha256 "ef47be57ebbb04c4067be591202f910e88c972437e30c3ddaeb2ed4f00cd74a4"
    elsif Hardware::CPU.arm?
      url "https://webwiebe.nl/brew/bugbarn-darwin-arm64-0.236.290.tar.gz"
      sha256 "e7d460e9e0899a492ec5df5f69e8ca6feacff5cc95ea39ddd25e0e76f60a8b94"
    end
  end

  def install
    bin.install "bugbarn"
  end
end
