class Bugbarn < Formula
  desc "BugBarn"
  homepage "https://github.com/wiebe-xyz/bugbarn"
  version "0.236.284"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://webwiebe.nl/brew/bugbarn-darwin-amd64-0.236.284.tar.gz"
      sha256 "64d11ca7c7a2790880f0232c71e307141531060dca3a27d00da89890b9a2acb5"
    elsif Hardware::CPU.arm?
      url "https://webwiebe.nl/brew/bugbarn-darwin-arm64-0.236.284.tar.gz"
      sha256 "eb28345a973b2ab6fab933cf699e6b80b4968a01f92e512c05d9bb4cb40a2378"
    end
  end

  def install
    bin.install "bugbarn"
  end
end
