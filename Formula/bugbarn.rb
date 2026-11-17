class Bugbarn < Formula
  desc "BugBarn"
  homepage "https://github.com/wiebe-xyz/bugbarn"
  version "0.236.374"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://webwiebe.nl/brew/bugbarn-darwin-amd64-0.236.374.tar.gz"
      sha256 "c2c9f5b9f2e88299486c73b323fa4b5aa89c5fe63345c7fea46bddafa85ea94b"
    elsif Hardware::CPU.arm?
      url "https://webwiebe.nl/brew/bugbarn-darwin-arm64-0.236.374.tar.gz"
      sha256 "0255acb2a29694990ea969e5475e6d0e75579812ae0f9380c9ddb0cf03658e9d"
    end
  end

  def install
    bin.install "bugbarn"
  end
end
