class Bugbarn < Formula
  desc "BugBarn"
  homepage "https://github.com/wiebe-xyz/bugbarn"
  version "0.236.368"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://webwiebe.nl/brew/bugbarn-darwin-amd64-0.236.368.tar.gz"
      sha256 "b17b0d2f4177e27a76976b3456b81bfdc485b45c374e54c86a064f7c12c11eb2"
    elsif Hardware::CPU.arm?
      url "https://webwiebe.nl/brew/bugbarn-darwin-arm64-0.236.368.tar.gz"
      sha256 "5d50b50be86b7a262b7a1b0cd7ce9c58116c365fa543fa7f019295d9ec4a8d8f"
    end
  end

  def install
    bin.install "bugbarn"
  end
end
