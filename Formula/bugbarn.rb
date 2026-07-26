class Bugbarn < Formula
  desc "BugBarn"
  homepage "https://github.com/wiebe-xyz/bugbarn"
  version "0.236.160"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://webwiebe.nl/brew/bugbarn-darwin-amd64-0.236.160.tar.gz"
      sha256 "f645ad70a1ce6e6709355d9756aa5491217f1f4c6daf130fb9392757911e6f8e"
    elsif Hardware::CPU.arm?
      url "https://webwiebe.nl/brew/bugbarn-darwin-arm64-0.236.160.tar.gz"
      sha256 "3fba47fed3395f8398381e44c18baf0f14116332e2ac0886e4e07fa6378ecc01"
    end
  end

  def install
    bin.install "bugbarn"
  end
end
