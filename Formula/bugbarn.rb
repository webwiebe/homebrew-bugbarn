class Bugbarn < Formula
  desc "BugBarn"
  homepage "https://github.com/wiebe-xyz/bugbarn"
  version "0.236.159"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://webwiebe.nl/brew/bugbarn-darwin-amd64-0.236.159.tar.gz"
      sha256 "5bfab3ab52af41475a4231834a5d5b8d230b5fc5f58080f1edbf90632e205913"
    elsif Hardware::CPU.arm?
      url "https://webwiebe.nl/brew/bugbarn-darwin-arm64-0.236.159.tar.gz"
      sha256 "7763aad031f883a358d36259b3844f56ee1f45cb896b224a8873f8f746adacfc"
    end
  end

  def install
    bin.install "bugbarn"
  end
end
