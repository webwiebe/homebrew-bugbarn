class Bugbarn < Formula
  desc "BugBarn"
  homepage "https://github.com/wiebe-xyz/bugbarn"
  version "0.236.399"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://webwiebe.nl/brew/bugbarn-darwin-amd64-0.236.399.tar.gz"
      sha256 "5109d0f564be5998bce1e1d2cd0e5294f35aea8dde4724d6bf107cb4a8a83739"
    elsif Hardware::CPU.arm?
      url "https://webwiebe.nl/brew/bugbarn-darwin-arm64-0.236.399.tar.gz"
      sha256 "14158653550c1222f1f1074fd2dc8db0bdb66c9e021ba2e36b1e62eefa8961b6"
    end
  end

  def install
    bin.install "bugbarn"
  end
end
