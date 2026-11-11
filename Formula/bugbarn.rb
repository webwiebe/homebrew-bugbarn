class Bugbarn < Formula
  desc "BugBarn"
  homepage "https://github.com/wiebe-xyz/bugbarn"
  version "0.236.343"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://webwiebe.nl/brew/bugbarn-darwin-amd64-0.236.343.tar.gz"
      sha256 "bb2329a10c013aff312ed0183c0fa393f10e7389a17a672bed13866b9a2bb866"
    elsif Hardware::CPU.arm?
      url "https://webwiebe.nl/brew/bugbarn-darwin-arm64-0.236.343.tar.gz"
      sha256 "d177e787c709068071b24ad540947b3359b2728534e3c679a2d82362fbf7f651"
    end
  end

  def install
    bin.install "bugbarn"
  end
end
