class Bugbarn < Formula
  desc "BugBarn"
  homepage "https://github.com/wiebe-xyz/bugbarn"
  version "0.236.389"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://webwiebe.nl/brew/bugbarn-darwin-amd64-0.236.389.tar.gz"
      sha256 "797efb6b6f74cfb5deb32356793bb83d3088fb132aee37ecfc060fead4a2c9b9"
    elsif Hardware::CPU.arm?
      url "https://webwiebe.nl/brew/bugbarn-darwin-arm64-0.236.389.tar.gz"
      sha256 "9ceb9a2475775efea8a764fc8a5d7c56a3dad5f2e0ae2fcee2551f9cfae64387"
    end
  end

  def install
    bin.install "bugbarn"
  end
end
