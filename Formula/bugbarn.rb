class Bugbarn < Formula
  desc "BugBarn"
  homepage "https://github.com/wiebe-xyz/bugbarn"
  version "0.236.200"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://webwiebe.nl/brew/bugbarn-darwin-amd64-0.236.200.tar.gz"
      sha256 "cb84387349a742a52e6e84a41173fe26d5b45deca347c9508e2674e5aa1271e7"
    elsif Hardware::CPU.arm?
      url "https://webwiebe.nl/brew/bugbarn-darwin-arm64-0.236.200.tar.gz"
      sha256 "847ba6cf996f50b044507beccf41535b2357e695ff2f6172c2f5a92f12b6373e"
    end
  end

  def install
    bin.install "bugbarn"
  end
end
