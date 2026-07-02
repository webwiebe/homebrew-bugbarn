class Bugbarn < Formula
  desc "BugBarn"
  homepage "https://github.com/wiebe-xyz/bugbarn"
  version "0.236.116"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://webwiebe.nl/brew/bugbarn-darwin-amd64-0.236.116.tar.gz"
      sha256 "4cb3cc7b186cff7d08a8fc8758cec4799b2a9030ec92195c0334064881a3a37c"
    elsif Hardware::CPU.arm?
      url "https://webwiebe.nl/brew/bugbarn-darwin-arm64-0.236.116.tar.gz"
      sha256 "55917468fcf8989fe2a18f6564ca7325c6a8baf9acf2c059dabb6e81393a0ed2"
    end
  end

  def install
    bin.install "bugbarn"
  end
end
