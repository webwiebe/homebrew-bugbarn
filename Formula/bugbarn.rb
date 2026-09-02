class Bugbarn < Formula
  desc "BugBarn"
  homepage "https://github.com/wiebe-xyz/bugbarn"
  version "0.236.170"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://webwiebe.nl/brew/bugbarn-darwin-amd64-0.236.170.tar.gz"
      sha256 "078bb5c9b589e18e7f06916773104dc04e8ec253b6bbca3251788fb0ec70fc60"
    elsif Hardware::CPU.arm?
      url "https://webwiebe.nl/brew/bugbarn-darwin-arm64-0.236.170.tar.gz"
      sha256 "66b6614477f0a8084f0f3a0d7a2bc8c4ffdf811b4d6836264562fa7312db504a"
    end
  end

  def install
    bin.install "bugbarn"
  end
end
