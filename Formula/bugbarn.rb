class Bugbarn < Formula
  desc "BugBarn"
  homepage "https://github.com/wiebe-xyz/bugbarn"
  version "0.236.202"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://webwiebe.nl/brew/bugbarn-darwin-amd64-0.236.202.tar.gz"
      sha256 "8c4713ce78b3809aca00d529c6f24c5e1f2e6e32bd7b306a3f176733495c33b4"
    elsif Hardware::CPU.arm?
      url "https://webwiebe.nl/brew/bugbarn-darwin-arm64-0.236.202.tar.gz"
      sha256 "3ba942538f80253ebc2041bb13648665a206b7ca219ed5c7cb9cd368cd076e61"
    end
  end

  def install
    bin.install "bugbarn"
  end
end
