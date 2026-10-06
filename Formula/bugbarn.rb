class Bugbarn < Formula
  desc "BugBarn"
  homepage "https://github.com/wiebe-xyz/bugbarn"
  version "0.236.214"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://webwiebe.nl/brew/bugbarn-darwin-amd64-0.236.214.tar.gz"
      sha256 "5473f7fdac210056d99f485cd010db5622742eae7af82ee2c7bb0a54f86a3fca"
    elsif Hardware::CPU.arm?
      url "https://webwiebe.nl/brew/bugbarn-darwin-arm64-0.236.214.tar.gz"
      sha256 "8b087b5f6443bc9d6893ca60310589cabc7bc690ab97f0b28346a2def075bfe6"
    end
  end

  def install
    bin.install "bugbarn"
  end
end
