class Bugbarn < Formula
  desc "BugBarn"
  homepage "https://github.com/wiebe-xyz/bugbarn"
  version "0.236.291"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://webwiebe.nl/brew/bugbarn-darwin-amd64-0.236.291.tar.gz"
      sha256 "cd7dd76efb130dea325cb1bd3346468f28de871efa1b544d7160f77ac3c0c5ca"
    elsif Hardware::CPU.arm?
      url "https://webwiebe.nl/brew/bugbarn-darwin-arm64-0.236.291.tar.gz"
      sha256 "c743e7553afb514ab47a127d8218b153de966f5261678cff347bf511addf2d2a"
    end
  end

  def install
    bin.install "bugbarn"
  end
end
