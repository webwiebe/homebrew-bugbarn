class Bugbarn < Formula
  desc "BugBarn"
  homepage "https://github.com/wiebe-xyz/bugbarn"
  version "0.236.212"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://webwiebe.nl/brew/bugbarn-darwin-amd64-0.236.212.tar.gz"
      sha256 "fae36cd989df6adac9ea9f4019c1f2504930194f8c152a25d1f6a62107421538"
    elsif Hardware::CPU.arm?
      url "https://webwiebe.nl/brew/bugbarn-darwin-arm64-0.236.212.tar.gz"
      sha256 "3e0b19c05fa9ee944e64f8a4fb33e1e95aba36e5b6128951b12b9d20962def41"
    end
  end

  def install
    bin.install "bugbarn"
  end
end
