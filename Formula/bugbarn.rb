class Bugbarn < Formula
  desc "BugBarn"
  homepage "https://github.com/wiebe-xyz/bugbarn"
  version "0.236.203"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://webwiebe.nl/brew/bugbarn-darwin-amd64-0.236.203.tar.gz"
      sha256 "8066c35aa5458f0f180dfdfec289eef58107a6678efbcc2bfe206a876be92909"
    elsif Hardware::CPU.arm?
      url "https://webwiebe.nl/brew/bugbarn-darwin-arm64-0.236.203.tar.gz"
      sha256 "59692388d84c89df7015f3e421249bb5cb7bd7fd1e557c8d0e4be413d3802ff5"
    end
  end

  def install
    bin.install "bugbarn"
  end
end
